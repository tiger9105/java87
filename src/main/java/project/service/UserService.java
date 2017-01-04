package project.service;

import java.util.Map;

import project.domain.Search;
import project.domain.User;
import project.domain.UserLikeArt;


public interface UserService {
  
  public void addUser(User user) throws Exception;
  
  public User getUser(String userId) throws Exception;
  
  public Map<String , Object> getUserList(Search search) throws Exception;
  
  public void updateUser(User user) throws Exception;
  

  public boolean checkDuplication(String userId) throws Exception;
  
  public void addlikeArtUser(UserLikeArt userLikeArt) throws Exception;
  
  public void deletelikeArtUser(int userNo,int artNo) throws Exception ;
  
  public UserLikeArt getLikeArt(UserLikeArt userLikeArt) throws Exception ;
  
  public User getUserByEmail(String email) throws Exception;
}