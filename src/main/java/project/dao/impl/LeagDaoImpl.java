package project.dao.impl;




import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    return sqlSession.insert("LeagMapper.addLeagMapper",leag);
  }

  @Override
  public Leag getLeag(int leagNo) throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.selectOne("LeagMapper.getLeag",leagNo);
  }

  @Override
  public List<Leag> getLeagList(int seasonNo) throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.selectList("LeagMapper.getLeagListMapper",seasonNo);
  }

  @Override
  public int updateVote1(Leag leag) throws Exception {
    // TODO Auto-generated method stub
    
    return sqlSession.update("LeagMapper.updateLeagVote1",leag);
  }

  @Override
  public int updateVote2(Leag leag) throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.update("LeagMapper.updateLeagVote2",leag);
  }

  @Override
  public List<Leag> getLeagList(int seasonNo,String progress) throws Exception {
    // TODO Auto-generated method stub
    Map<String,Object> map=new HashMap<String,Object>();
    map.put("seasonNo", seasonNo);
    map.put("progress", progress);
   return sqlSession.selectList("LeagMapper.getleagList",map);
  }



}