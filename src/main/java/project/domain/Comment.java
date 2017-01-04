package project.domain;


public class Comment {
  
  private int commentNo;
  private User user;
  private String commentContent;
  private String commentTime;
  private int videoNo;
  
  public Comment(){
 
  }

public int getCommentNo() {
	return commentNo;
}

public void setCommentNo(int commentNo) {
	this.commentNo = commentNo;
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

public String getCommentContent() {
	return commentContent;
}

public void setCommentContent(String commentContent) {
	this.commentContent = commentContent;
}

public String getCommentTime() {
	return commentTime;
}

public void setCommentTime(String commentTime) {
	this.commentTime = commentTime;
}

public int getVideoNo() {
	return videoNo;
}

public void setVideoNo(int videoNo) {
	this.videoNo = videoNo;
}

@Override
public String toString() {
	return "Comment [commentNo=" + commentNo + ", userNo=" + user + ", commentContent=" + commentContent
			+ ", commentTime=" + commentTime + ", videoNo=" + videoNo + "]";
}
  

  
  
}
