
package project.controller;


import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
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
import project.service.ArtistService;
import project.service.UserService;


@Controller
@RequestMapping("/artist/*")
public class ArtistController {
  
  ///Field
  @Autowired
  @Qualifier("artistServiceImpl")
  private ArtistService artistService;
  
  @Autowired
  @Qualifier("userServiceImpl")
  private UserService userService;
  
    
  public ArtistController(){
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
  
  @RequestMapping( value="addArtist", method=RequestMethod.POST )
  public String addArtist( @ModelAttribute("artist") Artist artist ,@RequestParam("image") MultipartFile imgFile,HttpSession session) throws Exception {
    User user;
    user=(User)session.getAttribute("user");
   
    
    System.out.println("image ?"+artist.getImage());
    System.out.println("/artist/addArtist : POST");
    System.out.println("이글이 잘 찍히나? ");
    System.out.println(user);
    
    artist.setUserNumber(user);
    //Business Logic
    artistService.addArtist(artist);
    ////////////////////
    return "redirect:/artist/artist.jsp";

  }
 
  @RequestMapping(value = "upload")
  @ResponseBody
  public String uploadFile( @ModelAttribute("artist") Artist artist,MultipartHttpServletRequest request,@RequestParam("uploadfile") MultipartFile multipartfile, HttpSession session,Model model) throws Exception {
      
    
    Iterator<String> itr =  request.getFileNames();
      if(itr.hasNext()) {
          MultipartFile mpf = request.getFile(itr.next());
          System.out.println(mpf.getOriginalFilename() +" uploaded!");
          try {
              //just temporary save file info into ufile
              
              System.out.println("image?"+multipartfile.getOriginalFilename());
            String path="C:\\Users\\BitCamp\\git\\java87\\UI02Project\\src\\main\\webapp\\images\\uploadFiles\\"+multipartfile.getOriginalFilename(); 
      //        String path="C:\\Users\\kimjihee\\git\\java87\\src\\main\\webapp\\images\\uploadFiles\\"+multipartfile.getOriginalFilename(); //
      //        String path1="C:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\java87\\images\\uploadFiles"+multipartfile.getOriginalFilename(); //
              File file =new File(path);
      //        File file1=new File(path1);
              
              multipartfile.transferTo(file); // �뙆�씪蹂대깂 
      //        multipartfile.transferTo(file1);
              String sessionId=((User)session.getAttribute("user")).getUserId();
              System.out.println(sessionId);
              User user = userService.getUser(sessionId);
             
            
              artist.setImage(multipartfile.getOriginalFilename());
              
              user.setArtistCode("1");
              userService.updateUser(user);
               session.setAttribute("user",user);
              
              
              
              artist.setUserNumber(user);
              artistService.addArtist(artist);
               
             model.addAttribute("artist",artist);  //애는 아티스트에 있는 값 가져올때 
             
             
            /*  userService.updateUser(user);
              session.setAttribute("user", user);
              System.out.println("update후:"+user);
              user=userService.getUser(user.getUserId());
              System.out.println("update후 get:"+user);
              System.out.println("artistCode???"+user.getArtistCode());*/
              
     
              
              
          } catch (IOException e) {
              System.out.println(e.getMessage());
              e.printStackTrace();
          }
          return "forward:/artist/listArtist";

      } else {
        return "실패하셨습니다";
      }
  }


/*  @RequestMapping( value="getArtist", method=RequestMethod.GET )
  public String getArtist( @RequestParam("artistNo") int artistNo , Model model ) throws Exception {
    
    System.out.println("/artist/getArtist : GET");
    //Business Logic
    Artist artist = artistService.getArtist(artistNo);

    model.addAttribute("artist", artist);
    
    return "forward:/test10.jsp";
  }
  */
  
  
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

  
 
/*  //@RequestMapping("/updateUser.do")
  @RequestMapping( value="updateArtist", method=RequestMethod.POST )
  public String updateUser( @ModelAttribute("user") User user , Model model , HttpSession session) throws Exception{

    System.out.println("/user/updateArtist : POST");
    //Business Logic
    
    
    String sessionId=((User)session.getAttribute("user")).getUserId();
    if(sessionId.equals(user.getUserId())){
      session.setAttribute("user", user);
    }
    
    //return "redirect:/getUser.do?userId="+user.getUserId();
    return "redirect:/user/getUser?userId="+user.getUserId();
  }*/
  
  
  
  //@RequestMapping("/listUser.do")
  @RequestMapping( value="listArtist" )
  public String listArtist( Model model , HttpServletRequest request) throws Exception{
    
    System.out.println("/artist/listArtist : GET / POST");
    
   
    Map<String , Object> map=artistService.getArtistList();
    

    model.addAttribute("list", map.get("list"));
  
    model.addAttribute("totalCount", map.get("totalCount"));
    
    return "forward:/artist/artist.jsp";
  }
  
  
  
  @RequestMapping(value="getLikeArtistList" ,method=RequestMethod.GET)
  public String getLikeArtistList(Model model,HttpSession session) throws Exception{
    User user = (User)session.getAttribute("user");
    
    List<Artist> artistList=artistService.getLikeArtistList(user.getUserNo());
    
    model.addAttribute("artistList", artistList);
  System.out.println("아티스트 리스트 :"+artistList);
    return "forward:/getLikeArtist.jsp";
  }
}  
