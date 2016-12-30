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

  @Override
  public int addLeagUser(LeagUser leagUser) throws Exception {
    // TODO Auto-generated method stub
    return 0;
  }

  @Override
  public LeagUser getLeagUser(LeagUser leagUser) throws Exception {
    // TODO Auto-generated method stub
    return null;
  }

 
}