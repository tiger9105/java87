package project.service.impl
;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import project.dao.ArtistDao;
import project.dao.UserDao;
import project.dao.VideoDao;
import project.domain.Artist;
import project.domain.Search;
import project.domain.User;
import project.domain.Video;
import project.service.ArtistService;
import project.service.UserService;
import project.service.VideoService;;


@Service("videoServiceImpl")
public class VideoServiceImpl implements VideoService{
  
  ///Field
  @Autowired
  @Qualifier("videoDaoImpl")
  private VideoDao videoDao;
  
  public void setUserDao(VideoDao videoDao) { /** */
    this.videoDao = videoDao;
  }
  
  ///Constructor
  public VideoServiceImpl() {
    System.out.println(this.getClass());
  }

  ///Method
  public void addVideo(Video video) throws Exception {
    videoDao.addVideo(video);
  }
  
  ///Method
  public Video getVideo(int videoNo) throws Exception {
    return videoDao.getVideo(videoNo);
  }

  public Map<String , Object > getVideoList() throws Exception {
    List<Video> list= videoDao.getVideoList();
    int totalCount =videoDao.getTotalCount();
    
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("list", list );
    map.put("totalCount", new Integer(totalCount));
  
    return map;
  }

  
 /* 
  public Artist getArtist(int artistNo) throws Exception {
    return artistDao.getArtist(artistNo);
  }
  
  public Artist getArtist1(int userNo) throws Exception {
	    return artistDao.getArtist1(userNo);
	  }

 
  public void updateArtist(Artist artist) throws Exception {
    artistDao.updateArtist(artist);
  }
  
 
  }*/
}