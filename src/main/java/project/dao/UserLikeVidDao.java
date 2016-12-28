package project.dao;



import java.util.List;

import project.domain.Artist;
import project.domain.UserLikeArt;
import project.domain.UserLikeVid;

public interface UserLikeVidDao {
  
  // INSERT
  public void addUserLikeVid(UserLikeVid userLikeVid) throws Exception ;
  
 public UserLikeVid getLikeVid(UserLikeVid userLikeVid) throws Exception ;
  // DELETE
  public void deleteUserLikeVid(int userNo , int vidNo) throws Exception ;
  
}