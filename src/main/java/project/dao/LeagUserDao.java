package project.dao;

import project.domain.LeagUser;

public interface LeagUserDao {
  
  // INSERT
  public int addLeagUser(LeagUser leagUser) throws Exception ;
  //GET
  public LeagUser getLeagUser(LeagUser leagUser) throws Exception ;
  
}