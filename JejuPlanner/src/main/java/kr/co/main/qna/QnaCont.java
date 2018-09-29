package kr.co.main.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.main.qna.QnaDTO;

@Controller
public class QnaCont {

	@Autowired // �ڵ����� ����(��������)�� ��ü ����
	QnaDAO dao;

	public QnaCont() {
		System.out.println("---QnaCont()��ü ������");
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
		mav.setViewName("Qna/qnaresult"); // Qna/qnaresult.jsp ��������� �̵�
		int count = dao.insert(dto);
		if (count == 0) {
			mav.addObject("msg1", "<p>���еǾ����ϴ�.</p>");
			mav.addObject("img", "<img src='../images/fail.png'>");
			mav.addObject("link1", "<input type='button' value='�ٽýõ�' onclick='javascript:history.back();'>");
			mav.addObject("link2", "<input type='button' value='�׷���' onclick='location.href=\"./list.do\"'>");
		} else {
			mav.addObject("msg1", "<p>��ϵǾ����ϴ�.</p>");
			mav.addObject("img", "<img src='../images/sound.png'>");
			mav.addObject("link1", "<input type='button' value='Ȩ����' onclick='location.href=\"../index.do\"'>");
			mav.addObject("link2", "<input type='button' value='�ٽõ��' onclick='javascript:history.back();'>");
		}

		return mav;

	}// createForm() end

}// qnaCont end