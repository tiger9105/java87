
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
import project.domain.UserLikeVid;
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
  public String getVideo( HttpServletRequest request, Model model ,HttpSession session ) throws Exception {
    
    System.out.println("/video/getVideo : GET");
    
    String videoNo = request.getParameter("videoNo");
    
    int userNo=((User)session.getAttribute("user")).getUserNo();
    //Business Logic
    Video video = videoService.getVideo(Integer.parseInt(videoNo));
    
    video.setHits(video.getHits()+1);
    
    videoService.updateHits(video);
    
    UserLikeVid userLikeVid = new UserLikeVid(userNo,Integer.parseInt(videoNo));
	 	 	
	userLikeVid = videoService.getLikeVid(userLikeVid);
	
	model.addAttribute("videoHeart",userLikeVid);
    
    
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
    
    System.out.println("/video/listVideo : GET / POST");
    Map<String , Object> map=videoService.getVideoList();
    
    System.out.println(map);
  
    model.addAttribute("list", map.get("list"));
  
    model.addAttribute("totalCount", map.get("totalCount"));

    return "forward:/music/music.jsp";
  }
  
  @ResponseBody
  @RequestMapping( value="sorting" )
  public String sortingVideo(@RequestParam String sorting, Model model , HttpServletRequest request) throws Exception{
    
    System.out.println("/video/sorting : GET / POST");
    System.out.println("sorting:"+sorting);
    
    Map<String , Object> map = null;
    
    if(sorting.equals("recently")){
    	map=videoService.getVideoList();
    }else if(sorting.equals("popularity")){
    	System.out.println("여기 들어옴??"+sorting);
    	map=videoService.getVideoListHeart();
    }else if(sorting.equals("hits")) {
    	map=videoService.getVideoListHits();
    	
    }
    
    System.out.println(map);
  
    model.addAttribute("list", map.get("list"));
  
    model.addAttribute("totalCount", map.get("totalCount"));
    
    return "forward:/music/music.jsp";
  }
  

  @RequestMapping( value="sorting/{sorting}" )
  public String sortingVideo1(@PathVariable("sorting") String sorting, Model model , HttpServletRequest request) throws Exception{
    
    System.out.println("/video/sorting : GET / POST");
    System.out.println("sorting:"+sorting);
    
    Map<String , Object> map = null;
    
    if(sorting.equals("recently")){
    	map=videoService.getVideoList();
    }else if(sorting.equals("popularity")){
    	System.out.println("여기 들어옴??"+sorting);
    	map=videoService.getVideoListHeart();
    }else if(sorting.equals("hits")) {
    	map=videoService.getVideoListHits();
    	
    }
    
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
  
  @ResponseBody
  @RequestMapping(value = "heartAdd", method = RequestMethod.GET)
  public Model heartAdd(@RequestParam int heartAdd,@RequestParam int vidNo, HttpSession session, Model model) throws Exception {
  	
	System.out.println("heartAdd 여기 안와??ㅠㅠ");
  	System.out.println(heartAdd);
  	int userNo=((User)session.getAttribute("user")).getUserNo();
  	
  	
  	UserLikeVid userLikeVid = new UserLikeVid(userNo,vidNo);
 	 	
  	videoService.addlikeVidUser(userLikeVid);
  	
	userLikeVid = videoService.getLikeVid(userLikeVid);
	
	model.addAttribute("videoHeart",userLikeVid);
  	
  	Video video=videoService.getVideo(vidNo);
  	video.setHeart(heartAdd);
  	
  	videoService.updateHeart(video);
    
    model.addAttribute("video", video);
    
  	return model;
  }
  
  
  @ResponseBody
  @RequestMapping(value = "heartDelete", method = RequestMethod.GET)
  public Model heartDelete(@RequestParam int heartDelete,@RequestParam int vidNo, HttpSession session, Model model) throws Exception {
  	
	System.out.println("heartDelete 여기 안와??ㅠㅠ");
  	System.out.println(heartDelete);
  	
  	int userNo=((User)session.getAttribute("user")).getUserNo();
  	
  	
  	UserLikeVid userLikeVid = new UserLikeVid(userNo,vidNo);
 	 	
  	videoService.deletelikeVidUser(userNo, vidNo);
  	
	userLikeVid = videoService.getLikeVid(userLikeVid);
	
	model.addAttribute("videoHeart",userLikeVid);
  	
  	Video video=videoService.getVideo(vidNo);
  	video.setHeart(heartDelete);
  	
  	videoService.updateHeart(video);
    
    model.addAttribute("video", video);
    

  	return model;
  }

}  