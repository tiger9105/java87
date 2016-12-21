package project.service;

import java.util.List;
import java.util.Map;

import project.domain.Artist;
import project.domain.Search;
import project.domain.User;


public interface ArtistService {
  
  public void addArtist(Artist artist) throws Exception;
  
  public Map<String , Object> getArtistList() throws Exception;

  public Artist getArtist(int artistNo) throws Exception;
  
  public List<Artist> getLikeArtistList(int userNo) throws Exception;
  
  public Artist getArtist1(int userNo) throws Exception;
/*  
  public void updateUser(User user) throws Exception;

  public boolean checkDuplication(String userId) throws Exception;*/
  
}