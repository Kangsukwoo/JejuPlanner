package kr.co.main;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	//첫페이지 http://localhost:9090/main/index.do
	
	@RequestMapping("/index.do")
    public ModelAndView intro() {
      
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		 
		 
		 return mav;
	 }
	
}
