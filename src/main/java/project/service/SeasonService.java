package project.service;

import java.util.List;
import java.util.Map;

import project.domain.Leag;
import project.domain.LeagUser;
import project.domain.Season;
public interface SeasonService {
  
  public int addSeason(Season season) throws Exception;
  

  public Season getSeason(String selectseason) throws Exception;
  
  public Season getSeason(int seasonNo) throws Exception;
  
  public Map<String,Object> getSeasonList() throws Exception;
  
  public int getMaxSeasonNo() throws Exception;
   
  ///리그 관련 Dao 
  
  // INSERT
  public int addLeag(Leag leag) throws Exception ;

// SELECT ONE
  public Leag getLeag(int leagNo) throws Exception ;


  // SELECT LIST
  public List<Leag> getLeagList(int seasonNo) throws Exception ;
  
  //LeagUser  부분 =============================================
  // INSERT
  public int addLeagUser(LeagUser leagUser) throws Exception ;
  //GET
  public LeagUser getLeagUser(LeagUser leagUser) throws Exception ;
  //===========================================================
  
  //투표수
  public int updateVote1(Leag leag) throws Exception ;
  
  public int updateVote2(Leag leag) throws Exception ;
  
  public List<Leag> getLeagList(int seasonNo,String progress) throws Exception ;
  
  public String getMinLeagProgress() throws Exception; 
  
  
  //투표수
  
  public int setEndSeason(Season season) throws Exception ;
  
}