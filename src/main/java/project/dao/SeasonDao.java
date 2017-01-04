package project.dao;


import java.util.List;

import project.domain.Artist;
import project.domain.Leag;
import project.domain.Season;
import project.domain.User;


public interface SeasonDao {
  
  // INSERT
  public int addSeason(Season leag) throws Exception ;

// SELECT ONE
  public Season getSeason(String seasonNo) throws Exception ;
  
  public Season getSeason(int seasonNo) throws Exception ;

  public List<Season> getSeasonList() throws Exception;

  public int getTotalCount() throws Exception ;
  
  public int getMaxSeasonNo() throws Exception;

  String getMinLeagProgress() throws Exception;
  
  public int setEndSeason(Season season) throws Exception ;
  
  


}