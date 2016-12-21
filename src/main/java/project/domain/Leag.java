package project.domain;


public class Leag {

 private int leagNo;
 private Season seasonNo;
 private String leagName;
 private Artist artist1;
 private int vote1;
 private String voteObject1;
 private Artist artist2;
 private int vote2;
 private String voteObject2;
 private String progress;
 
 public Leag(){
   System.out.println("Leag 디폴트 생성자 실행");   
 }
 
public int getLeagNo() {
  return leagNo;
}
public void setLeagNo(int leagNo) {
  this.leagNo = leagNo;
}
public Season getSeasonNo() {
  return seasonNo;
}
public void setSeasonNo(Season seasonNo) {
  this.seasonNo = seasonNo;
}
public String getLeagName() {
  return leagName;
}
public void setLeagName(String leagName) {
  this.leagName = leagName;
}
public Artist getArtist1() {
  return artist1;
}
public void setArtist1(Artist artist1) {
  this.artist1 = artist1;
}
public int getVote1() {
  return vote1;
}
public void setVote1(int vote1) {
  this.vote1 = vote1;
}
public String getVoteObject1() {
  return voteObject1;
}
public void setVoteObject1(String voteObject1) {
  this.voteObject1 = voteObject1;
}
public Artist getArtist2() {
  return artist2;
}
public void setArtist2(Artist artist2) {
  this.artist2 = artist2;
}
public int getVote2() {
  return vote2;
}
public void setVote2(int vote2) {
  this.vote2 = vote2;
}
public String getVoteObject2() {
  return voteObject2;
}
public void setVoteObject2(String voteObject2) {
  this.voteObject2 = voteObject2;
}
public String getProgress() {
  return progress;
}
public void setProgress(String progress) {
  this.progress = progress;
}

@Override
public String toString() {
  return "Leag [leagNo=" + leagNo + ", seasonNo=" + seasonNo + ", leagName=" + leagName + ", artist1=" + artist1
      + ", vote1=" + vote1 + ", voteObject1=" + voteObject1 + ", artist2=" + artist2 + ", vote2=" + vote2
      + ", voteObject2=" + voteObject2 + ", progress=" + progress + "]";
}
 
 
}
