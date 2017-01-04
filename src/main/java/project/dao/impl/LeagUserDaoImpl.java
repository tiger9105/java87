package project.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import project.dao.LeagUserDao;
import project.domain.LeagUser;


@Repository("leaguserDaoImpl")
public class LeagUserDaoImpl implements LeagUserDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  
  
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public LeagUserDaoImpl() {
    System.out.println(this.getClass());
  }
  //리그유저 ADD 하기 
  @Override
  public int addLeagUser(LeagUser leaguser) throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.insert("LeagUserMapper.addLeagUserMapper",leaguser);
  }

  //리그유저 가져오기 
  @Override
  public LeagUser getLeagUser(LeagUser leaguser) throws Exception {
    // TODO Auto-generated method stub
    return sqlSession.selectOne("LeagUserMapper.getLeagUserMapper",leaguser);
  }

 
}