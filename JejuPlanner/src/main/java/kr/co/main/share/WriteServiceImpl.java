package kr.co.main.share;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("writeService")
public class WriteServiceImpl implements WriteService {
	@Autowired
	private WriteDAO writeDAO;
	
	//�Խù� �ۼ�
	@Override
	public void insertPost(HashMap<String, String> info){
		writeDAO.insertPost(info);
	}
		
	// �Խù� ��� ǥ��
	@Override
	public List<WriteDTO> writeInfoList() throws Exception {
		return writeDAO.writeInfoList();
	}
	
	// �Խù� ��� ǥ��(����¡)
	@Override
	public List<WriteDTO> writeList(int offset, int noOfRecords) throws Exception {		
		return writeDAO.writeList(offset, noOfRecords);		
	}
	
	// ��ü �Խù� �� ��ȸ
	@Override
	public int writeGetCount() throws Exception {
		return writeDAO.writeGetCount();
	}
	
	// �� �󼼺���
	   @Override
	   public WriteDTO writeInfo(int sha_num) throws Exception {
	       writeDAO.hitPost(sha_num); //��ȸ�� ����
	       return writeDAO.writeInfo(sha_num);
	   }
	    
	   // ������ ������ ǥ��
	   @Override
	   public List<WriteDTO> PNwriteList(int sha_num) throws Exception {
	       return writeDAO.PNwriteList(sha_num);
	   }
}