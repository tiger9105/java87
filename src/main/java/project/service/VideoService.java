package project.service;

import java.util.List;
import java.util.Map;

import project.domain.Artist;
import project.domain.Search;
import project.domain.User;
import project.domain.UserLikeArt;
import project.domain.UserLikeVid;
import project.domain.Video;


public interface VideoService {
  
  public void addVideo(Video video) throws Exception;
  

  public Video getVideo(int videoNo) throws Exception;
 
  
  public Map<String , Object> getVideoList() throws Exception;
  
  public Map<String , Object> getVideoListHeart() throws Exception;
  
  public Map<String , Object> getVideoListHits() throws Exception;


  public void updateVideo(Video video) throws Exception;
  
  public void updateHits(Video video) throws Exception;
  
  
  public void updateHeart(Video video) throws Exception;
  
  public void deleteVideo(int videoNo) throws Exception;

  public void addlikeVidUser(UserLikeVid userLikeVid) throws Exception;
  
  public void deletelikeVidUser(int userNo,int vidNo) throws Exception ;
  
  public UserLikeVid getLikeVid(UserLikeVid userLikeVid) throws Exception ;
  
  public List<Video> getMyVideoList(int userNo) throws Exception;

}