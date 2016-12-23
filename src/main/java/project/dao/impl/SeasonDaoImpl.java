package project.dao.impl;




import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import project.dao.SeasonDao;
import project.domain.Season;



@Repository("seasonDaoImpl")
public class SeasonDaoImpl implements SeasonDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public SeasonDaoImpl() {
    System.out.println(this.getClass());
    
  }

  
  @Override
  public int addSeason(Season leag) throws Exception {
    // TODO Auto-generated method stub
    
    return sqlSession.insert("SeasonMapper.addSeasonMapper",leag);
  }

  @Override
  public Season getSeason(int seasonNo) throws Exception {
    // TODO Auto-generated method stub
   
    return sqlSession.selectOne("SeasonMapper.getSeasonMapper",seasonNo);
  }

  @Override
  public List<Season> getSeasonList() throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.selectList("SeasonMapper.getSeasonlistMapper");
  }


}