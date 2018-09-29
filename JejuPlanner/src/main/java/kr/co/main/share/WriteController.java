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
	Paging pagemaker;	//����¡�� ����ϱ� ���� ��.

	
	// �Խù� ��� �����ֱ�
	@RequestMapping(value = "/share/list.do")
	public String list(Model model, HttpServletRequest req) throws Exception{
		int currentPageNo = 1; // /(localhost:8080)�������� ���� ó���� ǥ���� ������ (1 = ù��° ������)
		int maxPost = 9;	// �������� ǥ�õ� �Խù�  �ִ� ����
		
		if(req.getParameter("pages") != null)								//�Խù��� 1����������(=�������� ������ �ȵǾ�����)�� �ƴ϶�� == ����¡�� �����Ǿ��ٸ�							 
			currentPageNo = Integer.parseInt(req.getParameter("pages")); 	//pages���ִ� string Ÿ�� ������ int������ �ٲپ currentPageNo�� ��´�.
		
		Paging paging = new Paging(currentPageNo, maxPost); //Paging.java���ִ� currentPAgeNo, maxPost�� paging������ ��´�.
		
		int offset = (paging.getCurrentPageNo() -1) * paging.getmaxPost(); // query.xml���� select�� �Ҷ� ����ϱ����� offset ������ ����. 
		// ���� 3������ �̰�, �� �������� �Խù��� 10���� �ִٸ� offset���� (3-1) * 10 = 20�� �ȴ�. 
		
/* �߿���������� ����ϱ� ���� ��
		ArrayList<WriteInfo> infolist = new ArrayList<WriteInfo>();     	
		infolist = (ArrayList<WriteInfo>) writeService.writeInfoList(); 
*/
		
		ArrayList<WriteDTO> page = new ArrayList<WriteDTO>(); // WriteDTO�� �ִ� �������� ArrayList Ÿ���� �迭�� �� ���� �̸� page��� ������ ��´�.
		page = (ArrayList<WriteDTO>) writeService.writeList(offset, paging.getmaxPost()); 
		//writeService.java�� �ִ� writeList �Լ��� �̿��Ͽ� offset���� maxPost���� ArrayList Ÿ���� �迭�� ���, �� �迭 ��ü�� page ������ ��´�.																							
		
		paging.setNumberOfRecords(writeService.writeGetCount()); // �������� ǥ���ϱ� ���� ��ü �Խù� ���� �ľ��ϱ� ���Ѱ�
		
		paging.makePaging(); //
		
	//	model.addAttribute("infolist", infolist); �߿� ���������� ����ϱ� ���� ��.
		model.addAttribute("page", page);
		model.addAttribute("paging", paging);
		
		return "/share/shareList3";
	}//list() end

	/* HttpServletRequest ��ü
	   => ����� ��û�� ���õ� ������ �����Ѵ�.
	   => HTML �� �Է°��� �����´�.
	   => ��Ű �� ���������� ������ �� �ִ�.
	   => Ŭ���̾�Ʈ�� IP�ּҸ� �� �� �ִ�.
	*/	

	//�����󼼺���
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