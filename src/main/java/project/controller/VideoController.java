
package project.controller;


import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import project.domain.Artist;
import project.domain.Page;
import project.domain.Search;
import project.domain.User;
import project.domain.Video;
import project.service.ArtistService;
import project.service.UserService;
import project.service.VideoService;


@Controller
@RequestMapping("/video/*")
public class VideoController {
  
  ///Field
  @Autowired
  @Qualifier("videoServiceImpl")
  private VideoService videoService;
  
  @Autowired
  @Qualifier("userServiceImpl")
  private UserService userService;
  
  @Autowired
  @Qualifier("artistServiceImpl")
  private ArtistService artistService;
  
    
  public VideoController(){
    System.out.println(this.getClass());
  }
  
  @Value("#{commonProperties['pageUnit']}")
  int pageUnit;
  
  @Value("#{commonProperties['pageSize']}")
  int pageSize;
  

  
  @RequestMapping( value="addVideo", method=RequestMethod.POST )
  public String addVideo( @ModelAttribute("video") Video video ,HttpSession session) throws Exception {
	
	System.out.println("/video/addVideo : POST");
	  
	  User user=(User)session.getAttribute("user");
    Artist artist = artistService.getArtist1(user.getUserNo());
    
    video.setUserNumber(user);
    video.setArtist(artist);
    
    String url [] = new String [2];
    url = video.getUrl().split("=");
    System.out.println(url[1]);
    video.setUrl(url[1]);
    
    videoService.addVideo(video);
    System.out.println("get전 video?"+video);
    System.out.println(video.getVideoNo());
    video=videoService.getVideo(video.getVideoNo());
    
    System.out.println("get후 video?"+video);
    
    ////////////////////
    return "redirect:/video/listVideo";

  }
 

  @RequestMapping( value="getVideo", method=RequestMethod.GET )
  public String getVideo( HttpServletRequest request, Model model ) throws Exception {
    
    System.out.println("/video/getVideo : GET");
    
    String videoNo = request.getParameter("videoNo");
    //Business Logic
    Video video = videoService.getVideo(Integer.parseInt(videoNo));
    
    video.setHits(video.getHits()+1);
    
    videoService.updateHits(video);
    
    video=videoService.getVideo(video.getVideoNo());
    
    model.addAttribute("video", video);
    
    return "forward:/getMusic/getMusic.jsp";
  }
  
  
  @RequestMapping( value="getVideoByUpdate/{videoNo}", method=RequestMethod.GET )
  public String getVideoByUpdate(@PathVariable("videoNo") int videoNo, HttpServletRequest request, Model model ) throws Exception {
    
    System.out.println("/video/getVideoByUpdate : GET");
    
    
    //Business Logic
    Video video = videoService.getVideo(videoNo);

    model.addAttribute("video", video);
    
    return "forward:/updateVideo/updateVideo.jsp";
  }
  


  @RequestMapping( value="updateVideo", method=RequestMethod.POST )
  public @ResponseBody String updateVideo(HttpServletRequest request, Model model,HttpSession session) throws Exception{

    System.out.println("/video/updateVideo : POST");
    //Business Logic
    String videoNo=request.getParameter("videoNo");
    Video video =videoService.getVideo(Integer.parseInt(videoNo));
    
    video.setGenre(request.getParameter("genre"));
    video.setTitle(request.getParameter("title"));
    video.setApp(request.getParameter("app"));
    video.setText(request.getParameter("text"));
    video.setIntroduce(request.getParameter("introduce"));
    
    
    String url [] = new String [2];
    
   
    url = request.getParameter("url").split("=");
    System.out.println(url[1]);
    video.setUrl(url[1]);
    
    
    
    videoService.updateVideo(video);
    
    video=videoService.getVideo(video.getVideoNo());
   
    model.addAttribute("video", video);
    
    return "forward:/getVideo/getVideo?videoNo="+videoNo;
  }

  
  

  //@RequestMapping("/listUser.do")
  @RequestMapping( value="listVideo" )
  public String listVideo( Model model , HttpServletRequest request) throws Exception{
    
    System.out.println("/artist/listVideo : GET / POST");
    
    Map<String , Object> map=videoService.getVideoList();
    
    System.out.println(map);
  
    model.addAttribute("list", map.get("list"));
  
    model.addAttribute("totalCount", map.get("totalCount"));
    
    return "forward:/music/music.jsp";
  }
  
  @RequestMapping( value="deleteVideo/{videoNo}")
  public  String deleteVideo( @PathVariable("videoNo") int videoNo,HttpServletRequest request, Model model ) throws Exception {
    
	System.out.println("delete 여기오니??");
    
    //Business Logic
    videoService.deleteVideo(videoNo);


    
    return "forward:/video/listVideo";
  }
  

}  