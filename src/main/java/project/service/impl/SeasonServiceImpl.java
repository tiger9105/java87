package project.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import project.dao.LeagDao;
import project.dao.LeagUserDao;
import project.dao.SeasonDao;
import project.dao.VideoDao;
import project.domain.Leag;
import project.domain.LeagUser;
import project.domain.Season;

import project.service.SeasonService;



@Service("seasonServiceImpl")
public class SeasonServiceImpl implements SeasonService{
  
  ///Field
  @Autowired
  @Qualifier("seasonDaoImpl")
  private SeasonDao seasonDao;
  
  @Autowired
  @Qualifier("leagDaoImpl")
  private LeagDao leagDao;
  
  @Autowired
  @Qualifier("leaguserDaoImpl")
  private LeagUserDao leagUserDao;
  
  
  public void setUserDao(SeasonDao seasonDao) { /** */
    this.seasonDao = seasonDao;
  }
  
  ///Constructor
  public SeasonServiceImpl() {
    System.out.println(this.getClass());
  }

  @Override
  public int addSeason(Season season) throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.addSeason(season);
    
  }
  ///getseason은 아직 미완성 
  @Override
  public Season getSeason(String seasonNo) throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.getSeason(seasonNo);
  }

  @Override
  public Map<String,Object> getSeasonList() throws Exception {
    // TODO Auto-generated method stub
    List<Season> list = seasonDao.getSeasonList();
    int gettotal = seasonDao.getTotalCount();
    
    Map<String,Object> map=new HashMap<String,Object>();
    
    map.put("list", list);
    map.put("totalcount", new Integer(gettotal));   
    
    return map;
  }
  
  ////////////////////////////////밑에는 리그관련 

  @Override
  public int addLeag(Leag leag) throws Exception {
    // TODO Auto-generated method stub
    return leagDao.addLeag(leag);
  }

  @Override
  public Leag getLeag(int leagNo) throws Exception {
    // TODO Auto-generated method stub
    return leagDao.getLeag(leagNo);
  }

  @Override
  public List<Leag> getLeagList(int seasonNo) throws Exception {
    // TODO Auto-generated method stub
    return leagDao.getLeagList(seasonNo);
  }

  @Override
  public Season getSeason(int seasonNo) throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.getSeason(seasonNo);
  }

  @Override
  public int getMaxSeasonNo() throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.getMaxSeasonNo();
  }

  ////LeagUser 부분 ................................................
  @Override
  public int addLeagUser(LeagUser leagUser) throws Exception {
    // TODO Auto-generated method stub
    return leagUserDao.addLeagUser(leagUser);
  }

  @Override
  public LeagUser getLeagUser(LeagUser leagUser) throws Exception {
    // TODO Auto-generated method stub
    return leagUserDao.getLeagUser(leagUser);
  }

  @Override
  public int updateVote1(Leag leag) throws Exception {
    // TODO Auto-generated method stub
    return leagDao.updateVote1(leag);
  }

  @Override
  public int updateVote2(Leag leag) throws Exception {
    // TODO Auto-generated method stub
    return leagDao.updateVote2(leag);
  }

  @Override
  public List<Leag> getLeagList(int seasonNo,String progress) throws Exception {
    // TODO Auto-generated method stub
    return leagDao.getLeagList(seasonNo,progress);
  }

  @Override
  public String getMinLeagProgress() throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.getMinLeagProgress();
  }

  @Override
  public int setEndSeason(Season season) throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.setEndSeason(season);
  }

  //LeagUser 부분 ...............................................
}