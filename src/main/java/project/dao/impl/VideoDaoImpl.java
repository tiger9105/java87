package project.dao.impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import project.dao.ArtistDao;
import project.dao.UserDao;
import project.dao.VideoDao;
import project.domain.Artist;
import project.domain.Search;
import project.domain.User;
import project.domain.Video;


@Repository("videoDaoImpl")
public class VideoDaoImpl implements VideoDao{
  
  ///Field
  @Autowired
  @Qualifier("sqlSessionTemplate")
  private SqlSession sqlSession;
  public void setSqlSession(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  ///Constructor
  public VideoDaoImpl() {
    System.out.println(this.getClass());
    
  }

  ///Method
  public void addVideo(Video video) throws Exception {
    
    sqlSession.insert("VideoMapper.addVideo", video);
  }

  public Video getVideo(int videoNo) throws Exception {
    System.out.println("오나"+videoNo);
    return sqlSession.selectOne("VideoMapper.getVideo", videoNo);
  }
/*  
  public Artist getArtist1(int userNo) throws Exception {
    System.out.println("오나"+userNo);
    return sqlSession.selectOne("ArtistMapper.getArtist1", userNo);
  }
  

  public void updateArtist(Artist artist) throws Exception {
    sqlSession.update("ArtistMapper.updateArtist", artist);
  }

*/
  public List<Video> getVideoList() throws Exception {
    System.out.println("여기까지는 옴");
    System.out.println(sqlSession.selectList("VideoMapper.getVideoList"));
    System.out.println("여기까지는 옴");
    return sqlSession.selectList("VideoMapper.getVideoList");
  }
  
  public int getTotalCount() throws Exception {
    return sqlSession.selectOne("VideoMapper.getTotalCount");
  }

}