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
import project.dao.UserLikeArtDao;
import project.dao.UserLikeVidDao;
import project.dao.VideoDao;
import project.domain.Artist;
import project.domain.Comment;
import project.domain.Search;
import project.domain.User;
import project.domain.UserLikeArt;
import project.domain.UserLikeVid;
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
  
  @Autowired
  @Qualifier("userlikeVidDaoImpl")
  private UserLikeVidDao userLikeVidDao;
  
  
  
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





 //추가된것.. //////////////////12.30일/////////////////////////////
  @Override
  public List<Video> getMyVideoList(String vidapp) throws Exception {
    // TODO Auto-generated method stub
    return videoDao.getMyVideoList(vidapp);
  }
  
  
  
  ///지희가 추가한거 (12/30)///
  public Map<String , Object > getVideoList() throws Exception {
    List<Video> list= videoDao.getVideoList();
    int totalCount =videoDao.getTotalCount();
    
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("list", list );
    map.put("totalCount", new Integer(totalCount));
  
    return map;
  }
  

 
  public void updateVideo(Video video) throws Exception {
    videoDao.updateVideo(video);
  }
  
  public void updateHits(Video video) throws Exception {
      videoDao.updateHits(video);
  }
  public void updateHeart(Video video) throws Exception {
      videoDao.updateHeart(video);
}
  public void deleteVideo(int videoNo) throws Exception {
      videoDao.deleteVideo(videoNo);
 }
  
  public void addlikeVidUser(UserLikeVid userLikeVid) throws Exception {
      userLikeVidDao.addUserLikeVid(userLikeVid);
  }
    
  public void deletelikeVidUser(int userNo, int vidNo) throws Exception {
     userLikeVidDao.deleteUserLikeVid(userNo,vidNo);
  }
  

   public UserLikeVid getLikeVid(UserLikeVid userLikeVid) throws Exception {
     // TODO Auto-generated method stub
     return userLikeVidDao.getLikeVid(userLikeVid);
   }
   
   @Override
   public List<Video> getMyVideoList(int userNo) throws Exception {
     // TODO Auto-generated method stub
     return videoDao.getMyVideoList(userNo);
   }
   
   public Map<String , Object > getVideoListHeart() throws Exception {
      List<Video> list= videoDao.getVideoListHeart();
      int totalCount =videoDao.getTotalCount();
      
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("list", list );
      map.put("totalCount", new Integer(totalCount));
    
      return map;
    }
   
   public Map<String , Object > getVideoListHits() throws Exception {
      List<Video> list= videoDao.getVideoListHits();
      int totalCount =videoDao.getTotalCount();
      
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("list", list );
      map.put("totalCount", new Integer(totalCount));
    
      return map;
    }

 
 public  List<Video> getVideoListGenre(String genre) throws Exception {
  
   return videoDao.getVideoListGenre(genre);
 }
 
 public  List<Video> getVideoListGenreHeart(String genre) throws Exception {
    
   return videoDao.getVideoListGenreHeart(genre);
 }
 
 public  List<Video> getVideoListGenreHits(String genre) throws Exception {
    
   return videoDao.getVideoListGenreHits(genre);
 }


   public List<Video> getLeagueList() throws Exception {
       // TODO Auto-generated method stub
       return videoDao.getLeagueList();
     }
   
   public List<Video> getLeagueListHeart() throws Exception {
      
      return videoDao.getLeagueListHeart();
    }
  
  public List<Video> getLeagueListHits() throws Exception {
     
      return videoDao.getLeagueListHits();
    }
  
  public void addComment(Comment comment) throws Exception {
    videoDao.addComment(comment);
  }
  
  ///Method
  public Comment getComment(int commentNo) throws Exception {
    return videoDao.getComment(commentNo);
  }

  public void deleteComment(int commentNo) throws Exception {
  videoDao.deleteComment(commentNo);
}

  public List<Comment> getVideoComment(int videoNo) throws Exception {
      return videoDao.getVideoComment(videoNo);
    }


}