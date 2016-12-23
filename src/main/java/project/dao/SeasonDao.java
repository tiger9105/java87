package project.dao;


import java.util.List;

import project.domain.Artist;
import project.domain.Leag;
import project.domain.Season;


public interface SeasonDao {
  
  // INSERT
  public int addSeason(Season leag) throws Exception ;

// SELECT ONE
  public Season getSeason(int seasonNo) throws Exception ;

  public List<Season> getSeasonList() throws Exception;


}