package project.service.impl
;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import project.dao.ArtistDao;
import project.dao.UserDao;
import project.domain.Artist;
import project.domain.Search;
import project.domain.User;
import project.service.ArtistService;
import project.service.UserService;;


@Service("artistServiceImpl")
public class ArtistServiceImpl implements ArtistService{
  
  ///Field
  @Autowired
  @Qualifier("artistDaoImpl")
  private ArtistDao artistDao;
  
  public void setUserDao(ArtistDao artistDao) { /** */
    this.artistDao = artistDao;
  }
  
  ///Constructor
  public ArtistServiceImpl() {
    System.out.println(this.getClass());
  }

  ///Method
  public void addArtist(Artist artist) throws Exception {
    artistDao.addArtist(artist);
  }
  
  public Map<String , Object > getArtistList() throws Exception {
    List<Artist> list= artistDao.getArtistList();
    int totalCount =artistDao.getTotalCount();
    
    Map<String, Object> map = new HashMap<String, Object>();
    map.put("list", list );
    map.put("totalCount", new Integer(totalCount));
  
    return map;
  }

  public Artist getArtist(int artistNo) throws Exception {
    return artistDao.getArtist(artistNo);
  }

  @Override
  public List<Artist> getLikeArtistList(int userNo) throws Exception {
    // TODO Auto-generated method stub
    return artistDao.getLikeArtistList(userNo);
  }

  
  public Artist getArtist1(int userNo) throws Exception {
    return artistDao.getArtist1(userNo);
  }
  


  public void updateArtist(Artist artist) throws Exception {
    artistDao.updateArtist(artist);
  }

  /*

  public boolean checkDuplication(String userId) throws Exception {
    boolean result=true;
    User user=userDao.getUser(userId);
    if(user != null) {
      result=false;
    }
    return result;
  }*/
}