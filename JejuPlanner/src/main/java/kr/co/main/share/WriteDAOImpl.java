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
	int noOfRecords; // ����¡�� ���� ������ WriteController.java�� maxPost ������ ���� ����. 
	
	//�Խù� �ۼ�
	@Override
	public void insertPost(HashMap<String, String> info) {
		sql.insert("insertPost", info);
	}
		
	// �Խù� ��� ǥ��
	@Override
	public List<WriteDTO> writeInfoList() throws Exception{ //
		return sql.selectList("writeInfoList");
	}
	
		//�Խù� ��� ǥ��(����¡)
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
		
		// ����¡
		@Override
		public int writeGetCount() throws Exception {
			return sql.selectOne("writeGetCount");
		}
		
		// �� �󼼺���
		@Override
		public WriteDTO writeInfo(int sha_num) throws Exception {
			return sql.selectOne("writeInfo", sha_num);
		}
		
		// ��ȸ�� ����
		@Override
		public long hitPost(int sha_num) throws Exception {
			return sql.update("hitPost", sha_num);
		}
		
		// ������ ������ ǥ��
		@Override
		public List<WriteDTO> PNwriteList(int sha_num) throws Exception {
			return sql.selectList("PNwriteList", sha_num);
		}
		
}