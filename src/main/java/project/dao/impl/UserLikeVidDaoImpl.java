package project.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


import project.dao.UserLikeArtDao;
import project.dao.UserLikeVidDao;
import project.domain.UserLikeArt;
import project.domain.UserLikeVid;


@Repository("userlikeVidDaoImpl")
public class UserLikeVidDaoImpl implements UserLikeVidDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  
  
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public UserLikeVidDaoImpl() {
    System.out.println(this.getClass());
  }

  @Override
  public void addUserLikeVid(UserLikeVid userLikeVid) throws Exception {
    // TODO Auto-generated method stub
    System.out.println("addUserLikeVid addUserLikeVid");
 

    sqlSession.insert("UserLikeVidMapper.addUserLikeVid", userLikeVid);
  }

  @Override
  public void deleteUserLikeVid(int userNo , int vidNo) throws Exception {
    // TODO Auto-generated method stub
    System.out.println("UserLikeVidDaoImpl deleteUserLikeVid");
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("userNo", new Integer(userNo));
    map.put("vidNo", new Integer(vidNo));
    
    sqlSession.delete("UserLikeVidMapper.deleteUser",map);
  }

  @Override
  public UserLikeVid getLikeVid(UserLikeVid userLikeVid) throws Exception {
    // TODO Auto-generated method stub
    
    return sqlSession.selectOne("UserLikeVidMapper.getLikeVid",userLikeVid);
  }

 
}