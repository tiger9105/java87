package project.service;

import java.util.List;

import project.domain.Leag;
import project.domain.Season;
public interface SeasonService {
  
  public int addSeason(Season season) throws Exception;
  

  public Season getSeason(int seasonNo) throws Exception;
  
  public List<Season> getSeasonList() throws Exception;
   
  ///리그 관련 Dao 
  
  // INSERT
  public int addLeag(Leag leag) throws Exception ;

// SELECT ONE
  public Leag getLeag(int leagNo,int seasonNo) throws Exception ;


  // SELECT LIST
  public List<Leag> getLeagList() throws Exception ;
  
}