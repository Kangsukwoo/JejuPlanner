package kr.co.main.plan;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.main.myplaner.PlanerDAO;
import kr.co.main.myplaner.PlanerDTO;

@Controller
public class Plancont {

	
	@RequestMapping("plan/planmain.do")
	public ModelAndView Main(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/planmain");
		mav.addObject("plansub",req.getParameter("plansub"));
		mav.addObject("planItem",req.getParameter("planItem"));
		mav.addObject("daystart",req.getParameter("daystart"));	
		mav.addObject("old",req.getParameter("old"));
		mav.addObject("student",req.getParameter("student"));
		mav.addObject("young",req.getParameter("young"));
		mav.addObject("plancontent",req.getParameter("plancontent"));
		
		 PlanerDAO dao = new PlanerDAO();
		  ArrayList<PlanerDTO> list = dao.list();
		  mav.addObject("list", list);
		
		
		return mav;
	}
	
}
