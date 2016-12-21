package project.domain;


public class VideoComments {
  
  private int commentNo;
  private User userNo;
  private String commentContent;
  private String commentTime;
  private Video videoNo;
  
  public VideoComments(){
    System.out.println("VideoComments 디폴트 생성자 실행 ");
  }
  
  public int getCommentNo() {
    return commentNo;
  }
  public void setCommentNo(int commentNo) {
    this.commentNo = commentNo;
  }
  public User getUserNo() {
    return userNo;
  }
  public void setUserNo(User userNo) {
    this.userNo = userNo;
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
  public Video getVideoNo() {
    return videoNo;
  }
  public void setVideoNo(Video videoNo) {
    this.videoNo = videoNo;
  }
  
  @Override
  public String toString() {
    return "VideoComments [commentNo=" + commentNo + ", userNo=" + userNo + ", commentContent=" + commentContent
        + ", commentTime=" + commentTime + ", videoNo=" + videoNo + "]";
  }
  
  
}
