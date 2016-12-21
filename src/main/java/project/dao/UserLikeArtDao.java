package project.dao;



import java.util.List;

import project.domain.Artist;
import project.domain.UserLikeArt;

public interface UserLikeArtDao {
  
  // INSERT
  public int addUserLikeArt(UserLikeArt userLikeArt) throws Exception ;
  
  public UserLikeArt getLikeArt(UserLikeArt userLikeArt) throws Exception ;
  // DELETE
  public int deleteUserLikeArt(int userNo , int artNo) throws Exception ;
  
}