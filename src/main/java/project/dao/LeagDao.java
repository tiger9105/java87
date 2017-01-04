package project.dao;


import java.util.List;
import java.util.Map;

import project.domain.Leag;
import project.domain.Video;



public interface LeagDao {
  
  // INSERT
  public int addLeag(Leag leag) throws Exception ;

// SELECT ONE
  public Leag getLeag(int leagNo) throws Exception ;


  // SELECT LIST
  public List<Leag> getLeagList(int seasonNo) throws Exception ;
  //투표수
  public int updateVote1(Leag leag) throws Exception ;
  
  public int updateVote2(Leag leag) throws Exception ;
  
  public List<Leag> getLeagList(int seasonNo,String progress) throws Exception ;
  

  //투표수
 /* // UPDATE
  public void updateArtist(Artist artist) throws Exception ;*/
  
  //아티스트와 투표수를 가지고 리그에서 투표대상 가져오기 
  
 }