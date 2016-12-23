package project.service;

import java.util.Map;

import project.domain.Artist;
import project.domain.Search;
import project.domain.User;
import project.domain.Video;


public interface VideoService {
  
  public void addVideo(Video video) throws Exception;
  

  public Video getVideo(int videoNo) throws Exception;
 
  
  public Map<String , Object> getVideoList() throws Exception;


  public void updateVideo(Video video) throws Exception;
  
  public void updateHits(Video video) throws Exception;
  
  public void deleteVideo(int videoNo) throws Exception;

}