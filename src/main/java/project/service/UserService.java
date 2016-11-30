package project.service;

import java.util.Map;

import project.domain.Search;
import project.domain.User;


public interface UserService {
  
  public void addUser(User user) throws Exception;
  
  public User getUser(String userId) throws Exception;
  
  public Map<String , Object> getUserList(Search search) throws Exception;
  
  public void updateUser(User user) throws Exception;
  
  // ȸ�� ID �ߺ� Ȯ��
  public boolean checkDuplication(String userId) throws Exception;
  
}