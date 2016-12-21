package project.domain;


public class Artist {

  private int artistNo;
  private String artistName;
  private String genre;
   private String image;
  private String introduce;
  private User userNumber;
  
  public Artist() {
    // TODO Auto-generated constructor stub
  }
  
  
  public User getUserNumber() {
    return userNumber;
  }

  public void setUserNumber(User userNumber) {
    this.userNumber = userNumber;
  }



  public int getArtistNo() {
    return artistNo;
  }

  public void setArtistNo(int artistNo) {
    this.artistNo = artistNo;
  }

  public String getArtistName() {
    return artistName;
  }

  public void setArtistName(String artistName) {
    this.artistName = artistName;
  }

  public String getGenre() {
    return genre;
  }

  public void setGenre(String genre) {
    this.genre = genre;
  }


  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public String getIntroduce() {
    return introduce;
  }

  public void setIntroduce(String introduce) {
    this.introduce = introduce;
  }

  @Override
  public String toString() {
    return "Artist [artistNo=" + artistNo + ", artistName=" + artistName + ", genre=" + genre + ", image=" + image
        + ", introduce=" + introduce + ", userNumber=" + userNumber + "]";
  }


}
