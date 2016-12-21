package project.domain;


public class UserLikeArt {

  private int userNo;
  private int artNo;
  
  
  
  public UserLikeArt() {
    // TODO Auto-generated constructor stub
    System.out.println("UserLikeArt() 생성자 생성");
  }
  
  public int getUserNo() {
    return userNo;
  }
  public void setUserNo(int userNo) {
    this.userNo = userNo;
  }
  public int getArtNo() {
    return artNo;
  }
  public void setArtNo(int artNo) {
    this.artNo = artNo;
  }
  @Override
  public String toString() {
    return "UserLikeArt [userNo=" + userNo + ", artNo=" + artNo + "]";
  }
 
  
}
