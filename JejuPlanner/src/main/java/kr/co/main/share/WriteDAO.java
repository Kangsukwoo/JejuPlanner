package kr.co.main.share;

import java.util.HashMap;
import java.util.List;


public interface WriteDAO {
	// �Խù� �ۼ�
	public void insertPost(HashMap<String, String> info); //insertPost�� query.xml�� ������ id ��
	
	// �Խù� ���  ǥ��
	public List<WriteDTO> writeInfoList() throws Exception;
	
	// �Խù� ��� ǥ��(����¡)
	public List<WriteDTO> writeList(int offset, int noOfRecords) throws Exception; 
	
	// �Խù� ���ڵ� �� ��ȸ
	public int writeGetCount() throws Exception; 
	
	// �� �󼼺���
	public WriteDTO writeInfo(int sha_num) throws Exception;
	
	// ��ȸ�� ����
	public long hitPost(int sha_num) throws Exception;
	
	// ������ ������ ǥ��
	public List<WriteDTO> PNwriteList(int sha_num) throws Exception;

}
