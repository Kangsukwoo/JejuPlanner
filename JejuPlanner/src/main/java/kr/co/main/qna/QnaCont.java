package kr.co.main.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.main.qna.QnaDTO;

@Controller
public class QnaCont {

	@Autowired // 자동으로 생성(스프링빈)된 객체 연결
	QnaDAO dao;

	public QnaCont() {
		System.out.println("---QnaCont()객체 생성됨");
	}

	// http://localhost:9090/main/qna.do

	@RequestMapping(value = "/Qna/qna.do", method = RequestMethod.GET)
	public ModelAndView insertForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Qna/qna"); // /Qna/qna.jsp
		return mav;
	}// createForm() end

	@RequestMapping(value = "/Qna/qna.do", method = RequestMethod.POST)
	public ModelAndView insertProc(QnaDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Qna/qnaresult"); // Qna/qnaresult.jsp 결과페이지 이동
		int count = dao.insert(dto);
		if (count == 0) {
			mav.addObject("msg1", "<p>실패되었습니다.</p>");
			mav.addObject("img", "<img src='../images/fail.png'>");
			mav.addObject("link1", "<input type='button' value='다시시도' onclick='javascript:history.back();'>");
			mav.addObject("link2", "<input type='button' value='그룹목록' onclick='location.href=\"./list.do\"'>");
		} else {
			mav.addObject("msg1", "<p>등록되었습니다.</p>");
			mav.addObject("img", "<img src='../images/sound.png'>");
			mav.addObject("link1", "<input type='button' value='홈으로' onclick='location.href=\"../index.do\"'>");
			mav.addObject("link2", "<input type='button' value='다시등록' onclick='javascript:history.back();'>");
		}

		return mav;

	}// createForm() end

}// qnaCont end