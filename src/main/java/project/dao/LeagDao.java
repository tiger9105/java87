package project.dao;


import java.util.List;


import project.domain.Leag;


public interface LeagDao {
  
  // INSERT
  public int addLeag(Leag leag) throws Exception ;

// SELECT ONE
  public Leag getLeag(int leagNo,int seasonNo) throws Exception ;


  // SELECT LIST
  public List<Leag> getLeagList(int seasonNo) throws Exception ;

 /* // UPDATE
  public void updateArtist(Artist artist) throws Exception ;*/
  
  
}