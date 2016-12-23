package project.dao.impl;




import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import project.dao.LeagDao;
import project.dao.SeasonDao;
import project.domain.Leag;
import project.domain.Season;



@Repository("leagDaoImpl")
public class LeagDaoImpl implements LeagDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public LeagDaoImpl() {
    System.out.println(this.getClass());
    
  }

  @Override
  public int addLeag(Leag leag) throws Exception {
    // TODO Auto-generated method stub
    return 1;
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