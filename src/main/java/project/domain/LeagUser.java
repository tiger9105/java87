package project.domain;


public class LeagUser {

  private int userNo;
  private int leagNo;
  
  
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


  public int getLeagNo() {
    return leagNo;
  }


  public void setLeagNo(int leagNo) {
    this.leagNo = leagNo;
  }


  @Override
  public String toString() {
    return "LeagUser [userNo=" + userNo + ", leagNo=" + leagNo + "]";
  }

  
}
