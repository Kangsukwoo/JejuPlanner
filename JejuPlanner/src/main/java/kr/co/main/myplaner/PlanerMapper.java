package kr.co.main.myplaner;

import java.util.ArrayList;

public interface PlanerMapper {
  
   public ArrayList<PlanerDTO> list();

   public int create(PlanerDTO planerDTO);
   
}//interface end
