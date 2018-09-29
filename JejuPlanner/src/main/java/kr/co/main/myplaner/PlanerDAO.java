package kr.co.main.myplaner;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PlanerDAO {
    
    @Autowired
    private SqlSession sqlSession;
    public PlanerDAO() { 
       System.out.println("---PlanerDAO°´Ã¼ »ý¼º µÊ...");
    }
    
    public int create(PlanerDTO planerDTO){
      PlanerMapper mapper = sqlSession.getMapper(PlanerMapper.class);
      
      int count = 0;
      count = mapper.create(planerDTO);  


      return count;
    }//create() end

    public ArrayList<PlanerDTO> list() {
      PlanerMapper mapper = sqlSession.getMapper(PlanerMapper.class);
      ArrayList<PlanerDTO> list = mapper.list();
      return list;
    }//list() end

   
}// class end
  
  
  
  