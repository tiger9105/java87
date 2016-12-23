package project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import project.dao.LeagDao;
import project.dao.SeasonDao;
import project.dao.VideoDao;
import project.domain.Leag;
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
  public Season getSeason(int seasonNo) throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.getSeason(seasonNo);
  }

  @Override
  public List<Season> getSeasonList() throws Exception {
    // TODO Auto-generated method stub
    return seasonDao.getSeasonList();
  }
  
  ////////////////////////////////밑에는 리그관련 

  @Override
  public int addLeag(Leag leag) throws Exception {
    // TODO Auto-generated method stub
    return 0;
  }

  @Override
  public Leag getLeag(int leagNo, int seasonNo) throws Exception {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public List<Leag> getLeagList() throws Exception {
    // TODO Auto-generated method stub
    return null;
  }


}