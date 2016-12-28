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
  

  public void updateVideo(Video video) throws Exception {
    sqlSession.update("VideoMapper.updateVideo", video);
  }
  
  public void updateHits(Video video) throws Exception {
	    sqlSession.update("VideoMapper.updateHits", video);
  }
  
  public void updateHeart(Video video) throws Exception {
	    sqlSession.update("VideoMapper.updateHeart", video);
}


  public List<Video> getVideoList() throws Exception {
    System.out.println("여기까지는 옴");
    System.out.println(sqlSession.selectList("VideoMapper.getVideoList"));
    System.out.println("여기까지는 옴");
    return sqlSession.selectList("VideoMapper.getVideoList");
  }
  
  public List<Video> getVideoListHeart() throws Exception {
	   
	    System.out.println("여기까지는 옴");
	    return sqlSession.selectList("VideoMapper.getVideoListHeart");
	  }
  
  
  public List<Video> getVideoListHits() throws Exception {

	    System.out.println("여기까지는 옴");
	    return sqlSession.selectList("VideoMapper.getVideoListHits");
	  }
  
  public int getTotalCount() throws Exception {
    return sqlSession.selectOne("VideoMapper.getTotalCount");
  }
  
  public void deleteVideo(int videoNo) throws Exception {
	    System.out.println("오나"+videoNo);
	    sqlSession.delete("VideoMapper.deleteVideo", videoNo);
  }
  
  @Override
  public List<Video> getMyVideoList(int userNo) throws Exception {
    // TODO Auto-generated method stub
    
    return sqlSession.selectList("VideoMapper.getmyVideolist",userNo);
  }

}