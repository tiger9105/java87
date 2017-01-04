package project.controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import project.domain.Artist;
import project.domain.Leag;
import project.domain.LeagUser;
import project.domain.Season;
import project.domain.User;
import project.domain.Video;
import project.service.SeasonService;
import project.service.UserService;
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
  
  @Autowired
  @Qualifier("userServiceImpl")
  private UserService userService;
  
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
    season.setState("시작");
    seasonService.addSeason(season);
    
    
    return season; 
  }
  //시즌 LIST 가장 최근에 8강만 가져옴 
  @RequestMapping(value="getSeasonlist")
  public String getSeasonlist(HttpServletRequest req, Model model ) throws Exception{
      int seasonNo =seasonService.getMaxSeasonNo(); //가장 최근시즌을 찾고
     //시즌 리스트는 이렇게 뿌려주고 리스트값으로 
     Map<String,Object> map=seasonService.getSeasonList();
    
     model.addAttribute("list", map.get("list"));
     
    // model.addAttribute("totalCount", map.get("totalcount"));
     String progress=seasonService.getMinLeagProgress();
     model.addAttribute("min",progress);
     
     //리그 리스트값들 
     List<Leag> leag=seasonService.getLeagList(seasonNo,"4");
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
  public @ResponseBody List<Leag> addleag(@RequestParam("videoNoList") List<String> videoNoList,@RequestParam("selectSeason")  int selectSeason) throws Exception{
  
    System.out.println("시즌선택:"+selectSeason);
    Season season=seasonService.getSeason(selectSeason);
    System.out.println("선택된시즌:"+season);
    
    System.out.println("비디오넘버:"+videoNoList);
    
    
    ArrayList<Video> videoList  = new ArrayList<Video>();
     for(String videoNo : videoNoList){
      
      if(videoService.getVideo(Integer.parseInt(videoNo)).getApp().equals("참여")){
        videoList.add(videoService.getVideo(Integer.parseInt(videoNo)));
     }
       
       
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
  //시즌 진행하기 버튼을 눌렀을때 진행되는 컨트롤러 1/1 
  @RequestMapping(value="addLeagProgress/{selectseason}/{progressNumber}",method=RequestMethod.GET)
  public void addLeagProgress(@PathVariable("selectseason") String selectseason,@PathVariable("progressNumber") String progressNumber,Model model) throws Exception{
      System.out.println("진행하기버튼컨트롤러 ");
      System.out.println(selectseason);
      System.out.println("진행상황알기:"+progressNumber);
      Season season=seasonService.getSeason(selectseason);
      System.out.println("시즌번호:"+season.getSeasonNo());
      //전체 리그 리스트 가져오기 
       List<Leag> leagList=seasonService.getLeagList(season.getSeasonNo(), progressNumber);
      System.out.println("전체리그리스트:"+leagList);
      
      
 
      
      List<Object> winnerList  = new ArrayList<Object>(); //승자 어레이리스트
      List<Object> loserList  = new ArrayList<Object>(); //패자 어레이리스트
      
      
      int result=0;
      for(int i=0;i<leagList.size();i++){
  
        Map<String,Object> winnerMap = new HashMap<String,Object>(); //승자 어레이리스트
        Map<String,Object> loserMap = new HashMap<String,Object>(); //패자 어레이리스트 
        Artist winnerArtist=null;
        String winnerUrl="";
        Artist loserArtist=null;
        String loserUrl="";
      //진행상황이 4이면
        if(leagList.get(i).getProgress().equals("4")){
          //리그 승자 비교 오른쪽 아티스트의 투표수가 더 많으면 
          if(leagList.get(i).getVote1()<=leagList.get(i).getVote2()){
            winnerArtist=leagList.get(i).getArtist2(); //오른쪽 이 이겼을때 승자아티스트배열
            winnerUrl=leagList.get(i).getVoteObject2();//오른쪽이 이겼을때 승자동영상 URL
          }//end inner if 
          else{
            winnerArtist=leagList.get(i).getArtist1(); //왼쪽이 이겼을때 승자아티스트배열
            winnerUrl=leagList.get(i).getVoteObject1();//왼쪽이 이겼을대  승자동영상URL
          }
          winnerMap.put("winnerArtist", winnerArtist);
          winnerMap.put("winnerUrl", winnerUrl);
          winnerList.add(winnerMap);
          result=1;
        }//end if
        
        
        else if(leagList.get(i).getProgress().equals("3")){
          if(leagList.get(i).getVote1()<=leagList.get(i).getVote2()){
            winnerArtist=leagList.get(i).getArtist2(); //오른쪽 이 이겼을때 승자아티스트배열
            winnerUrl=leagList.get(i).getVoteObject2();//오른쪽이 이겼을때 승자동영상 URL
            loserArtist=leagList.get(i).getArtist1(); //오른쪽 이 이겼을때 패자아티스트배열
            loserUrl=leagList.get(i).getVoteObject1();//오른쪽이 이겼을때 패자동영상 URL
          } else{
            winnerArtist=leagList.get(i).getArtist1(); //왼쪽이 이겼을때 승자아티스트배열
            winnerUrl=leagList.get(i).getVoteObject1();//왼쪽이 이겼을대  승자동영상URL
            loserArtist=leagList.get(i).getArtist2(); //왼쪽이 이겼을때 패자아티스트배열
            loserUrl=leagList.get(i).getVoteObject2();//왼쪽이 이겼을대  패자동영상URL
          }
          winnerMap.put("winnerArtist", winnerArtist);
          winnerMap.put("winnerUrl", winnerUrl);
          winnerList.add(winnerMap);
          loserMap.put("loserArtist", loserArtist);
          loserMap.put("loserUrl", loserUrl);
          loserList.add(loserMap);
          result=2;
        }//end if         
        
       
      } //end for문 ㄴ
      
      
      System.out.println("result:"+result);
      //4번에서 넣은 승자리스트가 널이 아닐때 
  
      if(winnerList!=null && result==1){
      System.out.println("위너 리스트 :" + winnerList);
      Map<String,Object> firstWinner = (Map<String,Object>)winnerList.get(0);
      Map<String,Object> secondWinner = (Map<String,Object>)winnerList.get(1);
      Map<String,Object> thirdWinner = (Map<String,Object>)winnerList.get(2);
      Map<String,Object> fouthWinner = (Map<String,Object>)winnerList.get(3);
           
      Leag leag=new Leag();
      leag.setSeasonNo(season);
      leag.setLeagName("대박리그");
      leag.setArtist1((Artist)firstWinner.get("winnerArtist"));
      leag.setVote1(0);
      leag.setVoteObject1((String)firstWinner.get("winnerUrl"));
      leag.setArtist2((Artist)secondWinner.get("winnerArtist"));
      leag.setVote1(0);
      leag.setVoteObject2((String)secondWinner.get("winnerUrl"));
      leag.setProgress("3");
      seasonService.addLeag(leag);
                        
      leag=new Leag();
      leag.setSeasonNo(season);
      leag.setLeagName("대박리그");
      leag.setArtist1((Artist)thirdWinner.get("winnerArtist"));
      leag.setVote1(0);
      leag.setVoteObject1((String)thirdWinner.get("winnerUrl"));
      leag.setArtist2((Artist)fouthWinner.get("winnerArtist"));
      leag.setVote1(0);
      leag.setVoteObject2((String)fouthWinner.get("winnerUrl"));
      leag.setProgress("3");
      seasonService.addLeag(leag);
      
       int result0 =100;
       model.addAttribute("result",result0);
       String progress=seasonService.getMinLeagProgress();
       model.addAttribute("min",progress);
      } //end if
      if(winnerList!=null && result==2){
          System.out.println("위너 리스트 :" + winnerList);
          Map<String,Object> firstWinner = (Map<String,Object>)winnerList.get(0);
          Map<String,Object> secondWinner = (Map<String,Object>)winnerList.get(1);
          System.out.println("패자 리스트:"+loserList);
          Map<String,Object> firstLoser = (Map<String,Object>)loserList.get(0);
          Map<String,Object> secondLoser = (Map<String,Object>)loserList.get(1);
          
          Leag leag=new Leag();
          leag.setSeasonNo(season);
          leag.setLeagName("대박리그");
          leag.setArtist1((Artist)firstWinner.get("winnerArtist"));
          leag.setVote1(0);
          leag.setVoteObject1((String)firstWinner.get("winnerUrl"));
          leag.setArtist2((Artist)secondWinner.get("winnerArtist"));
          leag.setVote1(0);
          leag.setVoteObject2((String)secondWinner.get("winnerUrl"));
          leag.setProgress("1");
          seasonService.addLeag(leag);
                            
          
          leag=new Leag();
          leag.setSeasonNo(season);
          leag.setLeagName("대박리그");
          leag.setArtist1((Artist)firstLoser.get("loserArtist"));
          leag.setVote1(0);
          leag.setVoteObject1((String)firstLoser.get("loserUrl"));
          leag.setArtist2((Artist)secondLoser.get("loserArtist"));
          leag.setVote1(0);
          leag.setVoteObject2((String)secondLoser.get("loserUrl"));
          leag.setProgress("2");
          seasonService.addLeag(leag);
          
          
          int result0 =101;
          String progress=seasonService.getMinLeagProgress();
          model.addAttribute("min",progress);
          model.addAttribute("result",result0);

        }
     /*(Map<String,Object>)winnerMap);*/
              
  }
  //투표 버튼을 눌렀을 때 진행되는 컨트롤러 1/1 

  @RequestMapping(value="addLeagVote", method=RequestMethod.GET,produces="application/json" )
  public void addLeagVote(@RequestParam("artistName") String artistName,@RequestParam("voteAdd") int voteAdd, @RequestParam("leagNo") int leagNo, HttpSession session, Model model) throws Exception{
      System.out.println("투표버튼 컨트롤러");
      System.out.println("투표수:"+voteAdd);
      System.out.println("리그번호:"+leagNo);
      System.out.println("아티스트명:"+artistName);
      User user=(User)session.getAttribute("user");
      
      LeagUser leaguser=new LeagUser();
      leaguser.setLeagNo(leagNo);
      leaguser.setUserNo(user.getUserNo());
      System.out.println("leaguser:"+leaguser);
      //리그 유저 검색하기 
      LeagUser leaguser1=seasonService.getLeagUser(leaguser);
      
      System.out.println("leaguser1:"+leaguser1);
      if(leaguser1==null){
        System.out.println("리그유저가 없습니다.");
        seasonService.addLeagUser(leaguser);
        System.out.println("리그유저가 추가되었습니다. ");
        Leag leag =seasonService.getLeag(leagNo);
 
        System.out.println("Leag:"+leag);
        //첫번째 꺼를 업데이트 할꺼 
        if(leag.getVote1()==(voteAdd-1) && leag.getArtist1().getArtistName().equals(artistName)){
            System.out.println("첫번째꺼 디비업데이트 ");
            leag.setVote1(voteAdd);
            seasonService.updateVote1(leag);
            
        }
        //두번째 꺼를 업데이트 할꺼 
        if(leag.getVote2()==(voteAdd-1) && leag.getArtist2().getArtistName().equals(artistName)){
          System.out.println("두번째꺼 디비업데이트 ");
          leag.setVote2(voteAdd);
          seasonService.updateVote2(leag);
        }
        //검색한게 없으니까 ADD를 해야지 
      }else{
        System.out.println("리그유저가있습니다. ");
        int check=100;
        model.addAttribute("check",check);
      }
            
  }
  
  @RequestMapping(value="LeagList/{selectseason}/{progress}",method=RequestMethod.GET)
  public String LeagList(@PathVariable("selectseason") String selectseason,@PathVariable("progress") String progress,Model model)throws Exception{
    System.out.println("리스트 판단 컨트롤러 ");
    System.out.println("시즌이름:"+selectseason);
    System.out.println("시즌진행상황:"+progress);
    
    //시즌 넘버찾기
    Season season =seasonService.getSeason(selectseason);
    
    List<Leag> leaglist=seasonService.getLeagList(season.getSeasonNo(), progress);
    
    
    System.out.println(leaglist);
    List<Season> list=(List<Season>)seasonService.getSeasonList().get("list");
    
    
    
    model.addAttribute("list",list);
    model.addAttribute("leaglist",leaglist);
    
    String progress1=seasonService.getMinLeagProgress();
    model.addAttribute("min",progress1);
    
    return "forward:/upcontest.jsp";
  }
  
  
  @RequestMapping(value="setEndSeason/{selectseason}")
  public void setEndSeason(@PathVariable("selectseason") String selectseason,Model model) throws Exception{
    System.out.println("setEndSeason");
    System.out.println("선택된시즌이름:"+selectseason);
    Season season=seasonService.getSeason(selectseason);

    season.setState("끝");
    season.setSeasonNo(season.getSeasonNo());
    seasonService.setEndSeason(season);
    
    model.addAttribute("endseason","끝");
    

       
    /*
    Season season=seasonService.getSeason(selectseason);
    System.out.println("여기로잘들어오나? ");
    
    model.addAttribute("season",season);
    
    List<Leag> list=seasonService.getLeagList(season.getSeasonNo());
    model.addAttribute("leaglist",list);*/
 
 
  }
  
 
}