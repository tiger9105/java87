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

 /* // UPDATE
  public void updateArtist(Artist artist) throws Exception ;*/
  
  
}