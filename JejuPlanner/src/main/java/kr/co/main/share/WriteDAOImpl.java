package kr.co.main.share;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("writeDAO")
public class WriteDAOImpl implements WriteDAO {
	@Autowired
	private SqlSession sql;
	int noOfRecords; // 페이징을 위한 변수로 WriteController.java의 maxPost 변수의 값과 같다. 
	
	//게시물 작성
	@Override
	public void insertPost(HashMap<String, String> info) {
		sql.insert("insertPost", info);
	}
		
	// 게시물 목록 표시
	@Override
	public List<WriteDTO> writeInfoList() throws Exception{ //
		return sql.selectList("writeInfoList");
	}
	
		//게시물 목록 표시(페이징)
		@Override
		public List<WriteDTO> writeList(int offset, int noOfRecords) throws Exception{
		List<WriteDTO> writeList = new ArrayList<WriteDTO>(); 
				
				HashMap<String, Object> params = new HashMap<String, Object>(); 
				
				params.put("offset", offset); 
				params.put("noOfRecords", noOfRecords); 
				
				writeList = sql.selectList("writeList", params); 
				this.noOfRecords = sql.selectOne("writeGetCount");
				
				return writeList;
			}
		
		// 페이징
		@Override
		public int writeGetCount() throws Exception {
			return sql.selectOne("writeGetCount");
		}
		
		// 글 상세보기
		@Override
		public WriteDTO writeInfo(int sha_num) throws Exception {
			return sql.selectOne("writeInfo", sha_num);
		}
		
		// 조회수 증가
		@Override
		public long hitPost(int sha_num) throws Exception {
			return sql.update("hitPost", sha_num);
		}
		
		// 이전글 다음글 표시
		@Override
		public List<WriteDTO> PNwriteList(int sha_num) throws Exception {
			return sql.selectList("PNwriteList", sha_num);
		}
		
}