package project.controller;


import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

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

import project.domain.Page;
import project.domain.Search;
import project.domain.User;
import project.service.UserService;


@Controller
@RequestMapping("/user/*")
public class UserController {
  
  ///Field
  @Autowired
  @Qualifier("userServiceImpl")
  private UserService userService;
    
  public UserController(){
    System.out.println(this.getClass());
  }
  
  @Value("#{commonProperties['pageUnit']}")
  int pageUnit;
  
  @Value("#{commonProperties['pageSize']}")
  int pageSize;
  
  
  //@RequestMapping("/addUserView.do")
  //public String addUserView() throws Exception {
  @RequestMapping( value="addUser", method=RequestMethod.POST )
  public String addUser(@ModelAttribute("user") User user,HttpSession session) throws Exception{
    userService.addUser(user);
    
    System.out.println("/user/addUser : GET");
    if(user !=null){
      session.setAttribute("user", user);
    }
    return "redirect:/index.jsp";
  }
  
  //@RequestMapping("/addUser.do")
 /* @RequestMapping( value="addUser12", method=RequestMethod.POST )
  public String addUser12( @ModelAttribute("user") User user,String pwd ) throws Exception {
    user.setPassword(pwd);
    
    System.out.println("/user/addUser : POST");
    //Business Logic
    
    userService.addUser(user);
    
    return "redirect:/user/loginView.jsp";
  }
 */
  //@RequestMapping("/getUser.do")
  @RequestMapping( value="getUser", method=RequestMethod.GET )
  public String getUser( @RequestParam("userId") String userId , Model model ) throws Exception {
    
    System.out.println("/user/getUser : GET");
    //Business Logic
    User user = userService.getUser(userId);
    model.addAttribute("user", user);
    
    return "forward:/user/getUser.jsp";
  }
  
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
  
  //@RequestMapping("/loginView.do")
  //public String loginView() throws Exception{
  @RequestMapping( value="login", method=RequestMethod.GET )
  public String login(HttpServletRequest req) throws Exception{

    
    System.out.println("/user/logon : GET");
    
    
    return "redirect:/index.jsp";
  }
  
  //@RequestMapping("/login.do")
  @RequestMapping( value="login", method=RequestMethod.POST )
  public String login(@ModelAttribute("user") User user , HttpSession session ) throws Exception{
    
    System.out.println("/user/login : POST");
    //Business Logic
    System.out.println(user);
    System.out.println("=-=-=--=-=-=-");
    
    User dbUser=userService.getUser(user.getUserId());
    
    
    System.out.println(user);
    System.out.println("==========");
    System.out.println(dbUser);
    
    if( user.getPassword().equals(dbUser.getPassword())){
      session.setAttribute("user", dbUser);
    }
    
    return "redirect:/index.jsp";
   }
  @RequestMapping(value="login12",method=RequestMethod.POST)
  public @ResponseBody User login12(String userId,HttpSession session) throws Exception{
     System.out.println(userId);
     System.out.println("===============================여기는 새로만든 로긴 포스트 ");
    User user = userService.getUser(userId);
      System.out.println(user);
      if(user != null){
        session.setAttribute("user", user);
      }
    return user;
  }
  
  @RequestMapping(value="addUser12",method=RequestMethod.POST)
  public @ResponseBody User addUser12(String userId, String email,String pwd, HttpSession session) throws Exception{
    System.out.println(userId);
    System.out.println("여기는 Add USER 입니다. ");
    User user=new User();
    user.setUserId(userId);
    user.setEmail(email);
    user.setPassword(pwd);
    System.out.println(user);
    userService.addUser(user);
   if(user !=null){
     session.setAttribute("user", user);
   }
            
    return user;
  }
 
  //@RequestMapping("/logout.do")
  @RequestMapping( value="logout", method=RequestMethod.GET )
  public String logout(HttpSession session ) throws Exception{
    
    System.out.println("/user/logout : POST");
    
    session.invalidate();
    
    return "redirect:/index.jsp";
    
  }
  
  
  //@RequestMapping("/checkDuplication.do")
  @RequestMapping( value="checkDuplication", method=RequestMethod.GET )
  public @ResponseBody boolean checkDuplication( @RequestParam("id") String userId ) throws Exception{
    
    System.out.println("/user/checkDuplication : GET");
    //Business Logic
    boolean result = userService.checkDuplication(userId);
    // Model 과 View 연결
   System.out.println("userId : " +userId );

    return result;
  }
  //@RequestMapping("/listUser.do")
  @RequestMapping( value="listUser" )
  public String listUser( @ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
    
    System.out.println("/user/listUser : GET / POST");
    
    if(search.getCurrentPage() ==0 ){
      search.setCurrentPage(1);
    }
    search.setPageSize(pageSize);
    
    Map<String , Object> map=userService.getUserList(search);
    
    Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
    System.out.println(resultPage);
    
    model.addAttribute("list", map.get("list"));
    model.addAttribute("resultPage", resultPage);
    model.addAttribute("search", search);
    
    return "forward:/user/listUser.jsp";
  }
  
  
  
  @RequestMapping(value = "/upload")
  @ResponseBody
  public Object uploadFile(MultipartHttpServletRequest request,@RequestParam("uploadfile") MultipartFile multipartfile) throws Exception {
      Iterator<String> itr =  request.getFileNames();
      if(itr.hasNext()) {
          MultipartFile mpf = request.getFile(itr.next());
          System.out.println(mpf.getOriginalFilename() +" uploaded!");
          try {
              //just temporary save file info into ufile
       
           
              String path="C:\\Users\\BitCamp\\git\\java87\\UI02Project\\src\\main\\webapp\\images\\uploadFiles\\"+multipartfile.getOriginalFilename(); //내가 저장할 공간 
              File file =new File(path);
              multipartfile.transferTo(file); // 파일보냄 
              
              
              System.out.println(path);
              User user = userService.getUser("abcd");
               System.out.println(user);
              user.setFilepath(path);
              
              userService.updateUser(user);
              System.out.println(user);
           
              
              
          } catch (IOException e) {
              System.out.println(e.getMessage());
              e.printStackTrace();
          }
          return true;
      } else {
          return false;
      }
  }
  
  
  @RequestMapping(value="video/{url}")
  public String video(HttpSession session,@PathVariable("url") String url,HttpServletRequest request){
    System.out.println("video:"+url);
    
    
   /* Set<String> set  = null;
    if((Set<String>)session.getAttribute("set")==null){
      set  = new HashSet<String>();
    }else{
      set  = (Set<String>)session.getAttribute("set");
    }
    set.add(url);
    session.setAttribute("set", set);
     Set<String> set =(Set<String>)session.getAttribute("set");
    set.add(user);
    */
    return "redirect:index.jsp";
  }
  
  
  
}