package project.domain;

import java.util.List;

public class Season {
  
  private int seasonNo;
  private String seasonName;
  private String seasonStart;
  private String seasonEnd;
   private Artist seasonwinner;
  private Artist seasonsecondwinner;
  private String state;
  
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public Season(){
    System.out.println("Season 디폴트 생성자 실행");
  }
  
  public int getSeasonNo() {
    return seasonNo;
  }
  public void setSeasonNo(int seasonNo) {
    this.seasonNo = seasonNo;
  }
  public String getSeasonName() {
    return seasonName;
  }
  public void setSeasonName(String seasonName) {
    this.seasonName = seasonName;
  }
  public String getSeasonStart() {
    return seasonStart;
  }
  public void setSeasonStart(String seasonStart) {
    this.seasonStart = seasonStart;
  }
  public String getSeasonEnd() {
    return seasonEnd;
  }
  public void setSeasonEnd(String seasonEnd) {
    this.seasonEnd = seasonEnd;
  }

  
  public Artist getSeasonwinner() {
    return seasonwinner;
  }

  public void setSeasonwinner(Artist seasonwinner) {
    this.seasonwinner = seasonwinner;
  }

  public Artist getSeasonsecondwinner() {
    return seasonsecondwinner;
  }

  public void setSeasonsecondwinner(Artist seasonsecondwinner) {
    this.seasonsecondwinner = seasonsecondwinner;
  }

  @Override
  public String toString() {
    return "Season [seasonNo=" + seasonNo + ", seasonName=" + seasonName + ", seasonStart=" + seasonStart
        + ", seasonEnd=" + seasonEnd + ", seasonwinner=" + seasonwinner + ", seasonsecondwinner=" + seasonsecondwinner
        + ", state=" + state + "]";
  }


  
 
  
}
