package project.dao;


import java.util.List;



import project.domain.Artist;
import project.domain.Comment;
import project.domain.Search;
import project.domain.User;
import project.domain.Video;


public interface VideoDao {
  
//INSERT
 public void addVideo(Video video) throws Exception ;

//SELECT ONE
 public Video getVideo(int videoNo) throws Exception ;


 // SELECT LIST
 public List<Video> getVideoList() throws Exception ;


 public int getTotalCount() throws Exception ;


 public void updateVideo(Video video) throws Exception ;
 
 
 public void updateHits(Video video) throws Exception ;
 
 public void updateHeart(Video video) throws Exception ;
 
 public void deleteVideo(int videoNo) throws Exception ;
 
 public List<Video> getMyVideoList(int userNo) throws Exception;
 
 public List<Video> getVideoListHeart() throws Exception ;
 
 public List<Video> getVideoListHits() throws Exception ;
 
 public List<Video> getVideoListGenre(String genre) throws Exception ;
 
 public List<Video> getVideoListGenreHeart(String genre) throws Exception ;
 
 public List<Video> getVideoListGenreHits(String genre) throws Exception ;
 
  
 public List<Video> getLeagueList() throws Exception;
 
 public List<Video> getLeagueListHeart() throws Exception ;
 
 public List<Video> getLeagueListHits() throws Exception ;
  
    //추가된것.. //////////////////12.30일/////////////////////////////
  public List<Video> getMyVideoList(String vidapp) throws Exception;
  ////////
  
 public void addComment(Comment comment) throws Exception ;
  
  public Comment getComment(int commentNo) throws Exception ;
  
  public void deleteComment(int commentNo) throws Exception ;
  
  public List<Comment> getVideoComment(int videoNo) throws Exception ;
}