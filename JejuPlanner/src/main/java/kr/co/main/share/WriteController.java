	package kr.co.main.share;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.main.paging.Paging;



@Controller
public class WriteController {
	
	@Resource(name="writeService")
	WriteService writeService;
	Paging pagemaker;	//페이징을 사용하기 위한 것.

	
	// 게시물 목록 보여주기
	@RequestMapping(value = "/share/list.do")
	public String list(Model model, HttpServletRequest req) throws Exception{
		int currentPageNo = 1; // /(localhost:8080)페이지로 오면 처음에 표시할 페이지 (1 = 첫번째 페이지)
		int maxPost = 9;	// 페이지당 표시될 게시물  최대 갯수
		
		if(req.getParameter("pages") != null)								//게시물이 1개도없으면(=페이지가 생성이 안되었으면)이 아니라면 == 페이징이 생성되었다면							 
			currentPageNo = Integer.parseInt(req.getParameter("pages")); 	//pages에있는 string 타입 변수를 int형으로 바꾸어서 currentPageNo에 담는다.
		
		Paging paging = new Paging(currentPageNo, maxPost); //Paging.java에있는 currentPAgeNo, maxPost를 paging변수에 담는다.
		
		int offset = (paging.getCurrentPageNo() -1) * paging.getmaxPost(); // query.xml에서 select를 할때 사용하기위한 offset 변수의 선언. 
		// 현재 3페이지 이고, 그 페이지에 게시물이 10개가 있다면 offset값은 (3-1) * 10 = 20이 된다. 
		
/* 중요공지사항을 사용하기 위한 것
		ArrayList<WriteInfo> infolist = new ArrayList<WriteInfo>();     	
		infolist = (ArrayList<WriteInfo>) writeService.writeInfoList(); 
*/
		
		ArrayList<WriteDTO> page = new ArrayList<WriteDTO>(); // WriteDTO에 있는 변수들을 ArrayList 타입의 배열로 둔 다음 이를 page라는 변수에 담는다.
		page = (ArrayList<WriteDTO>) writeService.writeList(offset, paging.getmaxPost()); 
		//writeService.java에 있는 writeList 함수를 이용하여 offset값과 maxPost값을 ArrayList 타입의 배열로 담고, 이 배열 자체를 page 변수에 담는다.																							
		
		paging.setNumberOfRecords(writeService.writeGetCount()); // 페이지를 표시하기 위해 전체 게시물 수를 파악하기 위한것
		
		paging.makePaging(); //
		
	//	model.addAttribute("infolist", infolist); 중요 공지사항을 사용하기 위한 것.
		model.addAttribute("page", page);
		model.addAttribute("paging", paging);
		
		return "/share/shareList3";
	}//list() end

	/* HttpServletRequest 객체
	   => 사용자 요청과 관련된 정보를 제공한다.
	   => HTML 폼 입력값을 가져온다.
	   => 쿠키 및 세션정보에 접근할 수 있다.
	   => 클라이언트의 IP주소를 알 수 있다.
	*/	

	//일정상세보기
	@RequestMapping(value = "share/view")
	public ModelAndView view(@RequestParam int sha_num, ModelAndView mv)throws Exception {
		
		String page = "/share/view";
		
		WriteDTO detail = writeService.writeInfo(sha_num);
		
		ArrayList<WriteDTO> list = new ArrayList<WriteDTO>();
        list = (ArrayList<WriteDTO>) writeService.PNwriteList(sha_num);
         
        mv.addObject("list",list);
        mv.addObject("detail", detail);
        mv.setViewName(page);
        return mv;

		
	}//view() end
}