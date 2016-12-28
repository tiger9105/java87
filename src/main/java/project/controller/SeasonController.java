package project.controller;


import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
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

import project.domain.Artist;
import project.domain.Season;
import project.domain.User;
import project.service.SeasonService;



@Controller
@RequestMapping("/season/*")
public class SeasonController {
  
  ///Field
  @Autowired
  @Qualifier("seasonServiceImpl")
  private SeasonService seasonService;
    
  public SeasonController(){
    System.out.println(this.getClass());
  }
  
  
  
  @RequestMapping(value="addSeason",method=RequestMethod.POST)
  public @ResponseBody Season addSeason(HttpServletRequest req) throws Exception{
    Season season=new Season();
  

    season.setSeasonName(req.getParameter("seasonNmae"));
    season.setSeasonStart(req.getParameter("seasonstartday"));
    season.setSeasonEnd(req.getParameter("seasonendday"));
    
    seasonService.addSeason(season);
    
    
    return season; 
  }
  
  @RequestMapping(value="getSeasonlist")
  public String getSeasonlist(HttpServletRequest req, Model model ) throws Exception{
 
     Map<String,Object> map=seasonService.getSeasonList();
    
     model.addAttribute("list", map.get("list"));
     
     model.addAttribute("totalCount", map.get("totalcount"));
     
    
    return "forward:/upcontest.jsp";
  }
  
  @RequestMapping(value="getSeason/{selectseason}", method = RequestMethod.GET)
  public @ResponseBody Season getSeason(@PathVariable("selectseason") String selectseason,Model model) throws Exception{
    Season season = new Season();
     season=seasonService.getSeason(selectseason);
    

    
    return season;
  }
    
}