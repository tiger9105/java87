package project.domain;


public class User {

  private int userNo;
  private String userId;
  private String password;
  private String email;
  private String filepath;
  
  public User() {
    // TODO Auto-generated constructor stub
  }

  public int getUserNo() {
    return userNo;
  }

  public void setUserNo(int userNo) {
    this.userNo = userNo;
  }

  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getFilepath() {
    return filepath;
  }

  public void setFilepath(String filepath) {
    this.filepath = filepath;
  }

  @Override
  public String toString() {
    return "User [userId=" + userId + ", password=" + password + ", email=" + email + ", filepath=" + filepath + "]";
  }

  
}
