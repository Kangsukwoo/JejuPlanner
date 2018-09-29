package kr.co.main.share;

import java.util.HashMap;
import java.util.List;


public interface WriteDAO {
	// 게시물 작성
	public void insertPost(HashMap<String, String> info); //insertPost는 query.xml에 정의한 id 값
	
	// 게시물 목록  표시
	public List<WriteDTO> writeInfoList() throws Exception;
	
	// 게시물 목록 표시(페이징)
	public List<WriteDTO> writeList(int offset, int noOfRecords) throws Exception; 
	
	// 게시물 레코드 수 조회
	public int writeGetCount() throws Exception; 
	
	// 글 상세보기
	public WriteDTO writeInfo(int sha_num) throws Exception;
	
	// 조회수 증가
	public long hitPost(int sha_num) throws Exception;
	
	// 이전글 다음글 표시
	public List<WriteDTO> PNwriteList(int sha_num) throws Exception;

}
