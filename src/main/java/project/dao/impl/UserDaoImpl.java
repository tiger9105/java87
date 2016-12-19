package project.dao.impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import project.dao.UserDao;
import project.domain.Search;
import project.domain.User;


@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public UserDaoImpl() {
    System.out.println(this.getClass());
  }

  ///Method
  public void addUser(User user) throws Exception {
    System.out.println("여기는 에드유저 바로직전 디에이오");
    sqlSession.insert("UserMapper.addUser", user);
  }

  public User getUser(String userId) throws Exception {
     
       return sqlSession.selectOne("UserMapper.getUser", userId);
  }
  
  public void updateUser(User user) throws Exception {
    sqlSession.update("UserMapper.updateUser", user);
  }

  public List<User> getUserList(Search search) throws Exception {
    return sqlSession.selectList("UserMapper.getUserList", search);
  }

  public int getTotalCount(Search search) throws Exception {
    return sqlSession.selectOne("UserMapper.getTotalCount", search);
  }
}