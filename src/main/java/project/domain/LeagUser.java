package project.domain;


public class LeagUser {

  private int userNo;
  private int seasonNo;
  
  
  public LeagUser() {
    // TODO Auto-generated constructor stub
    System.out.println("LeagUser() 생성자 생성");
  }


  public int getUserNo() {
    return userNo;
  }


  public void setUserNo(int userNo) {
    this.userNo = userNo;
  }


  public int getSeasonNo() {
    return seasonNo;
  }


  public void setSeasonNo(int seasonNo) {
    this.seasonNo = seasonNo;
  }


  @Override
  public String toString() {
    return "LeagUser [userNo=" + userNo + ", seasonNo=" + seasonNo + "]";
  }







  
}
