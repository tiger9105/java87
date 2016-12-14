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
  public String addArtist( @ModelAttribute("artist") Artist artist ,@RequestParam("image") MultipartFile imgFile) throws Exception {
    System.out.println("image ?"+artist.getImage());
    System.out.println(artist);
    System.out.println("/artist/addArtist : POST");
    //Business Logic
    artistService.addArtist(artist);
    
  
    
    ////////////////////
    return "redirect:/artist/artist.jsp";

  }
 
  @RequestMapping(value = "upload")
  @ResponseBody
  public String uploadFile( @ModelAttribute("artist") Artist artist,MultipartHttpServletRequest request,@RequestParam("uploadfile") MultipartFile multipartfile, HttpSession session) throws Exception {
      
    
    Iterator<String> itr =  request.getFileNames();
      if(itr.hasNext()) {
          MultipartFile mpf = request.getFile(itr.next());
          System.out.println(mpf.getOriginalFilename() +" uploaded!");
          try {
              //just temporary save file info into ufile
              
              System.out.println("image?"+multipartfile.getOriginalFilename());
              String path="C:\\Users\\BitCamp\\git\\java87\\UI02Project\\src\\main\\webapp\\images\\uploadFiles\\"+multipartfile.getOriginalFilename(); 
           // String path="C:\\Users\\kimjihee\\git\\java87\\src\\main\\webapp\\images\\uploadFiles\\"+multipartfile.getOriginalFilename(); //�궡媛� ���옣�븷 怨듦컙
              File file =new File(path);
              multipartfile.transferTo(file); // �뙆�씪蹂대깂 

              System.out.println("�쟾:"+artist);
              artist.setImage(multipartfile.getOriginalFilename());
 
               
              artistService.addArtist(artist);
              
              String sessionId=((User)session.getAttribute("user")).getUserId();
              System.out.println(sessionId);
              User user = userService.getUser(sessionId);
              user.setArtistCode(1);
              userService.updateUser(user);
              System.out.println(user);
              
     
              
              
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

  
  

/*  
  //@RequestMapping("/updateUserView.do")
  //public String updateUserView( @RequestParam("userId") String userId , Model model ) throws Exception{
  @RequestMapping( value="updateUser", method=RequestMethod.GET )
  public String updateUser( @RequestParam("userId") String userId , Model model ) throws Exception{

    System.out.println("/user/updateUser : GET");
    //Business Logic
    User user = userService.getUser(userId);
    model.addAttribute("user", user);
    
    return "forward:/user/updateUser.jsp";
  }
  
  //@RequestMapping("/updateUser.do")
  @RequestMapping( value="updateUser", method=RequestMethod.POST )
  public String updateUser( @ModelAttribute("user") User user , Model model , HttpSession session) throws Exception{

    System.out.println("/user/updateUser : POST");
    //Business Logic
    userService.updateUser(user);
    
    String sessionId=((User)session.getAttribute("user")).getUserId();
    if(sessionId.equals(user.getUserId())){
      session.setAttribute("user", user);
    }
    
    //return "redirect:/getUser.do?userId="+user.getUserId();
    return "redirect:/user/getUser?userId="+user.getUserId();
  }
*/
  //@RequestMapping("/listUser.do")
  @RequestMapping( value="listArtist" )
  public String listUser( Model model , HttpServletRequest request) throws Exception{
    
    System.out.println("/artist/listArtist : GET / POST");
    
   
    Map<String , Object> map=artistService.getArtistList();
    

    model.addAttribute("list", map.get("list"));
  
    model.addAttribute("totalCount", map.get("totalCount"));
    
    return "forward:/artist/artist.jsp";
  }
  
}  
