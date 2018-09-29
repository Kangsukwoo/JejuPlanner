package kr.co.main.share;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("writeService")
public class WriteServiceImpl implements WriteService {
	@Autowired
	private WriteDAO writeDAO;
	
	//게시물 작성
	@Override
	public void insertPost(HashMap<String, String> info){
		writeDAO.insertPost(info);
	}
		
	// 게시물 목록 표시
	@Override
	public List<WriteDTO> writeInfoList() throws Exception {
		return writeDAO.writeInfoList();
	}
	
	// 게시물 목록 표시(페이징)
	@Override
	public List<WriteDTO> writeList(int offset, int noOfRecords) throws Exception {		
		return writeDAO.writeList(offset, noOfRecords);		
	}
	
	// 전체 게시물 수 조회
	@Override
	public int writeGetCount() throws Exception {
		return writeDAO.writeGetCount();
	}
	
	// 글 상세보기
	   @Override
	   public WriteDTO writeInfo(int sha_num) throws Exception {
	       writeDAO.hitPost(sha_num); //조회수 증가
	       return writeDAO.writeInfo(sha_num);
	   }
	    
	   // 이전글 다음글 표시
	   @Override
	   public List<WriteDTO> PNwriteList(int sha_num) throws Exception {
	       return writeDAO.PNwriteList(sha_num);
	   }
}