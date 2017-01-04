package project.service;

import java.util.List;
import java.util.Map;

import project.domain.Artist;
import project.domain.Comment;
import project.domain.Search;
import project.domain.User;
import project.domain.UserLikeArt;
import project.domain.UserLikeVid;
import project.domain.Video;


public interface VideoService {
  
  public void addVideo(Video video) throws Exception;
  
  public Video getVideo(int videoNo) throws Exception;
   
  public Map<String , Object> getVideoList() throws Exception;
  
  public void updateVideo(Video video) throws Exception;
  
  public void updateHits(Video video) throws Exception;
  
  public void updateHeart(Video video) throws Exception;
  
  public void deleteVideo(int videoNo) throws Exception;

  public void addlikeVidUser(UserLikeVid userLikeVid) throws Exception;
  
  public void deletelikeVidUser(int userNo,int vidNo) throws Exception ;
  
  public UserLikeVid getLikeVid(UserLikeVid userLikeVid) throws Exception ;
  
  public List<Video> getMyVideoList(int userNo) throws Exception;
  
  public Map<String , Object> getVideoListHeart() throws Exception;
  
  public Map<String , Object> getVideoListHits() throws Exception;
  
  public List<Video> getVideoListGenre(String genre) throws Exception;
  
  public List<Video> getVideoListGenreHeart(String genre) throws Exception;
  
  public List<Video> getVideoListGenreHits(String genre) throws Exception;
  
  public List<Video> getLeagueList() throws Exception;
  
  public List<Video> getLeagueListHeart() throws Exception;
  
  public List<Video> getLeagueListHits() throws Exception;

  
  
//추가된것.. //////////////////12.30일/////////////////////////////
  public List<Video> getMyVideoList(String vidapp) throws Exception;
  
 public void addComment(Comment comment) throws Exception;
  
  public Comment getComment(int commentNo) throws Exception;
   
  public void deleteComment(int commentNo) throws Exception;
  
  public List<Comment> getVideoComment(int commentNo) throws Exception;
  
}