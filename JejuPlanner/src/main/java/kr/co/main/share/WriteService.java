package kr.co.main.share;

import java.util.HashMap;
import java.util.List;

public interface WriteService {
	// 게시물 작성
	public void insertPost(HashMap<String, String> info);
	// 여기서의 info는 Controller에 있는 info가 아니라, title, content, name, info를 의미하며 다른 이름으로 바꿔도 된다. 
		
	// 게시물 목록 표시 
	public List<WriteDTO> writeInfoList() throws Exception;
	
	// 게시물 목록 표시(페이징)
	public List<WriteDTO> writeList(int offset, int noOfRecords) throws Exception;
	
	// 전체 게시물 수 조회
	public int writeGetCount() throws Exception;
	
	// 글 상세보기
	public WriteDTO writeInfo(int sha_num) throws Exception;
	 
	// 이전글 다음글 표시
	public List<WriteDTO> PNwriteList(int sha_num) throws Exception;

}
