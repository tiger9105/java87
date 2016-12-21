package project.dao.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


import project.dao.UserLikeArtDao;
import project.domain.UserLikeArt;


@Repository("userlikeArtDaoImpl")
public class UserLikeArtDaoImpl implements UserLikeArtDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  
  
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public UserLikeArtDaoImpl() {
    System.out.println(this.getClass());
  }

  @Override
  public int addUserLikeArt(UserLikeArt userLikeArt) throws Exception {
    // TODO Auto-generated method stub
    System.out.println("UserLikeArtDaoImpl addUserLikeArt");
 

    return sqlSession.insert("UserLikeArtMapper.addUserLikeArt", userLikeArt);
  }

  @Override
  public int deleteUserLikeArt(int userNo , int artNo) throws Exception {
    // TODO Auto-generated method stub
    System.out.println("UserLikeArtDaoImpl deleteUserLikeArt");
    
    Map<String,Object> map = new HashMap<String,Object>();
    map.put("userNo", new Integer(userNo));
    map.put("artNo", new Integer(artNo));
    
    return sqlSession.delete("UserLikeArtMapper.deleteUserInterest",map);
  }

  @Override
  public UserLikeArt getLikeArt(UserLikeArt userLikeArt) throws Exception {
    // TODO Auto-generated method stub
    
    return sqlSession.selectOne("UserLikeArtMapper.getLikeArt",userLikeArt);
  }

 
}