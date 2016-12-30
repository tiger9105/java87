package project.controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import project.domain.Leag;
import project.domain.Season;
import project.domain.Video;
import project.service.SeasonService;
import project.service.VideoService;



@Controller
@RequestMapping("/season/*")
public class SeasonController {
  
  ///Field
  @Autowired
  @Qualifier("seasonServiceImpl")
  private SeasonService seasonService;
    
  @Autowired
  @Qualifier("videoServiceImpl")
  private VideoService videoService;
  
  public SeasonController(){
    System.out.println(this.getClass());
  }
  
  
  //시즌ADD
  @RequestMapping(value="addSeason",method=RequestMethod.POST)
  public @ResponseBody Season addSeason(HttpServletRequest req) throws Exception{
    Season season=new Season();
  

    season.setSeasonName(req.getParameter("seasonNmae"));
    season.setSeasonStart(req.getParameter("seasonstartday"));
    season.setSeasonEnd(req.getParameter("seasonendday"));
    
    seasonService.addSeason(season);
    
    
    return season; 
  }
  //시즌 LIST 
  @RequestMapping(value="getSeasonlist")
  public String getSeasonlist(HttpServletRequest req, Model model ) throws Exception{
      int seasonNo =seasonService.getMaxSeasonNo(); //가장 최근시즌을 찾고
     //시즌 리스트는 이렇게 뿌려주고 리스트값으로 
     Map<String,Object> map=seasonService.getSeasonList();
    
     model.addAttribute("list", map.get("list"));
     
     model.addAttribute("totalCount", map.get("totalcount"));
     
     //리그 리스트값들 
     List<Leag> leag=seasonService.getLeagList(seasonNo);
     
     System.out.println("가장최근 리그값들:"+leag);
     model.addAttribute("leaglist",leag);
    
    return "forward:/upcontest.jsp";
  }
  
  //시즌 GET
  @RequestMapping(value="getSeason/{selectseason}")
  public void getSeason(@PathVariable("selectseason") String selectseason,Model model) throws Exception{
  
    Season season=seasonService.getSeason(selectseason);
    System.out.println("여기로잘들어오나? ");
    
    model.addAttribute("season",season);
    
    List<Leag> list=seasonService.getLeagList(season.getSeasonNo());
    model.addAttribute("leaglist",list);
 
 
  }
  
  
  //상위 8개 랜덤으로 리그테이블에 Add가 되게 하기 
  @RequestMapping(value="addleag",method=RequestMethod.POST)
  public @ResponseBody List<Leag> addleag(@RequestParam List<String> videoNoList,@RequestParam int selectSeason) throws Exception{
  
    //System.out.println("시즌선택:"+selectSeason);
    Season season=seasonService.getSeason(selectSeason);
   // System.out.println("선택된시즌:"+season);
    
    ArrayList<Video> videoList  = new ArrayList<Video>();
     for(String videoNo : videoNoList){
           videoList.add(videoService.getVideo(Integer.parseInt(videoNo)));
    }
     
     Collections.sort(videoList,new Comparator<Video>(
         ){ //list를 정렬해줌 좋아요순으로 

      @Override
      public int compare(Video video1, Video video2) {
        int videoNo1 = video1.getHeart();
        int videoNo2 = video2.getHeart();
        
        return (videoNo1>videoNo2)? -1:(videoNo1>videoNo2)? 1:0; 
      }
       
     });
     int count=0;
     
     Stack<Video> topVideoList =new Stack<Video>();
     
     for(Video video : videoList){
       System.out.println(video.getHeart());//8번수행됨 
       topVideoList.push(video); //추가됨
        count++;
       if(count==8){
         break;
       }
     }
     
    //System.out.println("topVideoList"+topVideoList);
    Collections.shuffle(topVideoList); //랜덤으로 
       
  //  System.out.println(topVideoList);//랜덤으로 8개 좋아요순으로 뽑아놓음
    
/*    System.out.println(topVideoList.pop().getHeart());
    System.out.println(topVideoList.pop().getHeart());*/

    
    for(int i=0;i<4;i++){
    Video v = topVideoList.pop();
    Video v1 = topVideoList.pop();
    Leag leag=new Leag();
    leag.setSeasonNo(season); //변수명 바꿔야됨 
    leag.setLeagName("대박리그");
    leag.setArtist1(v.getArtist());
    leag.setVote1(0);
    leag.setVoteObject1(v.getUrl());
    leag.setArtist2(v1.getArtist());
    leag.setVote2(0);
    leag.setVoteObject2(v1.getUrl());
    leag.setProgress("4");
     seasonService.addLeag(leag);
    }//end for
      return null;
  }
  
  //리그 GET 
/*  @RequestMapping(value="getleagList/{selectseason}", method = RequestMethod.GET)
  public @ResponseBody List<Leag> getLeagList(@PathVariable("selectseason") String selectseason,Model model) throws Exception{
     System.out.println("겟리그리스트  !!!!  여기로잘들어오나? ");
     System.out.println(selectseason);
     Season season =seasonService.getSeason(selectseason);
     
     List<Leag> list=seasonService.getLeagList(season.getSeasonNo());
    
    return list;  
  }  */
  
  @RequestMapping(value="addLeagProgress/{selectseason}")
  public void addLeagProgress(@PathVariable("selectseason") String selectseason,Model model) throws Exception{
    
    
  }
 
}