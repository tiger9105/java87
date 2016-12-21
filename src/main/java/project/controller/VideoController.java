
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
  
/*
  @RequestMapping( value="addArtist", method=RequestMethod.POST )
  public String addArtist( @ModelAttribute("artist") Artist artist ) throws Exception {
    System.out.println("image �씠由�?"+artist.getImage());
    System.out.println(artist);
    System.out.println("/artist/addArtist : POST");
    //Business Logic
    artistService.addArtist(artist);
    
    ////////////////////
    return "redirect:/artist.jsp";

  }
  */
  
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
  public String getArtist( HttpServletRequest request, Model model ) throws Exception {
    
    System.out.println("/video/getVideo : GET");
    
    String videoNo = request.getParameter("videoNo");
    //Business Logic
    Video video = videoService.getVideo(Integer.parseInt(videoNo));

    model.addAttribute("video", video);
    
    return "forward:/getMusic/getMusic.jsp";
  }
  
  
/*  
  @RequestMapping(value = "getArtist/{artistNo}", method = RequestMethod.GET)
  public String getArtist(@PathVariable("artistNo") int artistNo, Model model) throws Exception {
      //Business Logic
    
    System.out.println("/artist/getArtist : GET");
    Artist artist = artistService.getArtist(artistNo);

    model.addAttribute("artist", artist);
  
  return "forward:/getArtist/getArtist.jsp";


}
  
  @RequestMapping(value = "getArtist1", method = RequestMethod.GET)
  public String getArtist1(HttpSession session, Model model) throws Exception {
      //Business Logic
    
    System.out.println("/artist/getArtist1 : GET");
    
    int userNo=((User)session.getAttribute("user")).getUserNo();
    System.out.println(userNo);

    Artist artist = artistService.getArtist1(userNo);
    System.out.println(artist);

    model.addAttribute("artist", artist);
  
    return "forward:/updateArtist/updateArtist.jsp";


}


  
 
  //@RequestMapping("/updateUser.do")
  @RequestMapping( value="updateArtist", method=RequestMethod.POST )
  public @ResponseBody Artist updateUser( MultipartHttpServletRequest request,HttpSession session) throws Exception{

    System.out.println("/user/updateArtist : POST");
    //Business Logic
    
    
    int userNo=((User)session.getAttribute("user")).getUserNo();
    User user=(User)session.getAttribute("user");
    System.out.println(userNo);
    MultipartFile file = request.getFile("uploadfile");
    System.out.println(request.getFile("uploadfile"));
    Artist artist = artistService.getArtist1(userNo);
    System.out.println(artist);
    
    if(file.getOriginalFilename()!=""){  //디비에 있는 파일경로랑 jsp 에 있는 파일경로가 같지 않다면 
    	   // String path="C:\\Users\\BitCamp\\git\\java87\\UI02Project\\src\\main\\webapp\\images\\uploadFiles\\"+file.getOriginalFilename();
    	    String path="C:\\Users\\kimjihee\\git\\java87\\src\\main\\webapp\\images\\uploadFiles\\"+file.getOriginalFilename(); //
    	    file.transferTo(new File(path));
    	    System.out.println("여기1");
    	    System.out.println(request.getParameter(file.getOriginalFilename()));

    	    artist.setArtistName(request.getParameter("artistName"));
    	    artist.setGenre(request.getParameter("genre"));
    	    artist.setImage(file.getOriginalFilename());
    	    artist.setIntroduce(request.getParameter("introduce"));
    	    artist.setUserNumber(user);
    	    
    	    artistService.updateArtist(artist);
    	    artist=artistService.getArtist1(userNo);
    	    
    	    session.setAttribute("user", user);
    	    session.setAttribute("artist", artist);
    	 
    	           
    	   }if(file.getOriginalFilename()==""){ //jsp 에서 가져온값이랑 user안의 파일경로에 파일이름이랑 같은애들 
   
    	     
    	 	    artist.setArtistName(request.getParameter("artistName"));
        	    artist.setGenre(request.getParameter("genre"));
        	    artist.setImage(artist.getImage());
        	    artist.setIntroduce(request.getParameter("introduce"));
        	    artist.setUserNumber(user);
        	    
        	    System.out.println("여기2");
          	    artistService.updateArtist(artist);
        	    artist=artistService.getArtist1(userNo);
        	    
        	    session.setAttribute("user", user);
        	    session.setAttribute("artist", artist);
        	      	      
    	   }
    	     //return "redirect:/getUser.do?userId="+user.getUserId();
//    	    return "redirect:/user/getUser?userId="+user.getUserId();
    	    return artist;
  }

  
  
*/  
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
 
}  