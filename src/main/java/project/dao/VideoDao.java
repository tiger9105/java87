package project.dao;


import java.util.List;

import project.domain.Artist;
import project.domain.Search;
import project.domain.User;
import project.domain.Video;


public interface VideoDao {
  
  // INSERT
  public void addVideo(Video video) throws Exception ;

// SELECT ONE
  public Video getVideo(int videoNo) throws Exception ;


  // SELECT LIST
  public List<Video> getVideoList() throws Exception ;

  public int getTotalCount() throws Exception ;


  public void updateVideo(Video video) throws Exception ;
  
  
  public void updateHits(Video video) throws Exception ;
  
  public void deleteVideo(int videoNo) throws Exception ;
}