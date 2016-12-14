package project.dao.impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import project.dao.ArtistDao;
import project.dao.UserDao;
import project.domain.Artist;
import project.domain.Search;
import project.domain.User;


@Repository("artistDaoImpl")
public class ArtistDaoImpl implements ArtistDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public ArtistDaoImpl() {
    System.out.println(this.getClass());
  }

  ///Method
  public void addArtist(Artist artist) throws Exception {
    sqlSession.insert("ArtistMapper.addArtist", artist);
  }

  public Artist getArtist(int artistNo) throws Exception {
    System.out.println("오나"+artistNo);
    return sqlSession.selectOne("ArtistMapper.getArtist", artistNo);
  }

  /*
  public void updateUser(User user) throws Exception {
    sqlSession.update("UserMapper.updateUser", user);
  }*/

  public List<Artist> getArtistList() throws Exception {
    System.out.println("여기까지는 옴");
    System.out.println(sqlSession.selectList("ArtistMapper.getArtistList"));
    System.out.println("여기까지는 옴");
    return sqlSession.selectList("ArtistMapper.getArtistList");
  }

  public int getTotalCount() throws Exception {
    return sqlSession.selectOne("ArtistMapper.getTotalCount");
  }


}