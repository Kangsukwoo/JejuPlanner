package kr.co.main.myplaner;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlanerCont {
  @Autowired
  private PlanerDAO dao;
  
  private ApiParser api;
  
  public PlanerCont(){
    System.out.println("---PlanerCont°´Ã¼ »ý¼ºµÊ");
  }

  // °á°úÈ®ÀÎ http://localhost:9090/main/myplaner/list.do
  @RequestMapping(value="/myplaner/list.do", method=RequestMethod.GET)
  public ModelAndView list() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/product/list");
    ArrayList<PlanerDTO> list = dao.list();
    mav.addObject("list", list);
    return mav;
  }//list() end

  @RequestMapping(value="/myplaner/create.do", method=RequestMethod.GET)
  public ModelAndView createForm() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/product/createForm");
    return mav;
  }//createForm() end

  @RequestMapping(value="/myplaner/result.do", method= RequestMethod.POST)
  public ModelAndView createProc() {
    ModelAndView mav = new ModelAndView();
    ArrayList<PlanerDTO>apidto = new ArrayList<PlanerDTO>();
    try {
      api = new ApiParser();
      apidto = api.apiParserSearch();
    } catch (Exception e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
 
    int totalcnt=0;
    for(int idx=0; idx<apidto.size(); idx++) {
      PlanerDTO planerDTO = apidto.get(idx);
      int count = dao.create(planerDTO);
      totalcnt += count;
    }
     
    mav.addObject("apidto",apidto);
    mav.setViewName("product/result");
    return mav;
  }//createProc() end
  
}