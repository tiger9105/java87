package project.domain;


public class UserLikeVid {

  private int userNo;
  private int vidNo;
  
  
  
  public UserLikeVid() {
    // TODO Auto-generated constructor stub
    System.out.println("UserLikeArt() 생성자 생성");
  }
  
  public UserLikeVid(int userNo,int vidNo) {
	    // TODO Auto-generated constructor stub
	    System.out.println("UserLikeArt() 생성자 생성");
	    this.userNo=userNo;
	    this.vidNo=vidNo;
	  }



	public int getUserNo() {
		return userNo;
	}
	
	
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	
	
	public int getVidNo() {
		return vidNo;
	}
	
	
	
	public void setVidNo(int vidNo) {
		this.vidNo = vidNo;
	}
	


@Override
public String toString() {
	return "UserLikeVid [userNo=" + userNo + ", vidNo=" + vidNo + "]";
}
  

  
}
