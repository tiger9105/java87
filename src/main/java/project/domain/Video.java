package project.domain;


public class Video {

  private int videoNo;
  private int heart;
  private int hits;
  private String genre;
  private String url;
  private String title;
  private String app;
  private String text;
  private String introduce;
  private User userNumber;
  private Artist artist;
  


	public Video() {
	    // TODO Auto-generated constructor stub
	}
	
	public Artist getArtist() {
	return artist;
	}
	
	public void setArtist(Artist artist) {
		this.artist = artist;
	}


	public int getVideoNo() {
		return videoNo;
	}
	
	public void setVideoNo(int videoNo) {
		this.videoNo = videoNo;
	}
	
	public int getHeart() {
		return heart;
	}
	
	public void setHeart(int heart) {
		this.heart = heart;
	}
	
	public int getHits() {
		return hits;
	}
	
	public void setHits(int hits) {
		this.hits = hits;
	}
	
	public String getUrl() {
		return url;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getApp() {
		return app;
	}
	
	public void setApp(String app) {
		this.app = app;
	}
	
	public String getText() {
		return text;
	}
	
	public void setText(String text) {
		this.text = text;
	}

	public User getUser() {
		return userNumber;
	}

	public void setUser(User userNumber) {
		this.userNumber = userNumber;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public User getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(User userNumber) {
		this.userNumber = userNumber;
	}
	
	  public String getGenre() {
			return genre;
		}

		public void setGenre(String genre) {
			this.genre = genre;
		}

		@Override
		public String toString() {
			return "Video [videoNo=" + videoNo + ", heart=" + heart + ", hits=" + hits + ", genre=" + genre + ", url="
					+ url + ", title=" + title + ", app=" + app + ", text=" + text + ", introduce=" + introduce
					+ ", userNumber=" + userNumber + ", artist=" + artist + "]";
		}



	
}