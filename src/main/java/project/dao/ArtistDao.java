package project.dao;


import java.util.List;

import project.domain.Artist;
import project.domain.Search;
import project.domain.User;


public interface ArtistDao {
  
  // INSERT
  public void addArtist(Artist artist) throws Exception ;

  // SELECT ONE
  public Artist getArtist(int artistNo) throws Exception ;

  // SELECT LIST
  public List<Artist> getArtistList() throws Exception ;

  // UPDATE
//  public void updateUser(User user) throws Exception ;
  
  // �Խ��� Page ó���� ���� ��üRow(totalCount)  return
  public int getTotalCount() throws Exception ;
  
}