package project.domain;


public class Artist {

  private int artistNo;
  private String artistName;
  private String genre;
  private String music;
  private String image;
  private String introduce;
  
  public Artist() {
    // TODO Auto-generated constructor stub
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

  public String getMusic() {
    return music;
  }

  public void setMusic(String music) {
    this.music = music;
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
    return "Artist [artistNo=" + artistNo + ", artistName=" + artistName + ", genre=" + genre + ", music=" + music
        + ", image=" + image + ", introduce=" + introduce + "]";
  }
}
