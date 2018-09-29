package kr.co.main.share;

import java.util.HashMap;
import java.util.List;

public interface WriteService {
	// �Խù� �ۼ�
	public void insertPost(HashMap<String, String> info);
	// ���⼭�� info�� Controller�� �ִ� info�� �ƴ϶�, title, content, name, info�� �ǹ��ϸ� �ٸ� �̸����� �ٲ㵵 �ȴ�. 
		
	// �Խù� ��� ǥ�� 
	public List<WriteDTO> writeInfoList() throws Exception;
	
	// �Խù� ��� ǥ��(����¡)
	public List<WriteDTO> writeList(int offset, int noOfRecords) throws Exception;
	
	// ��ü �Խù� �� ��ȸ
	public int writeGetCount() throws Exception;
	
	// �� �󼼺���
	public WriteDTO writeInfo(int sha_num) throws Exception;
	 
	// ������ ������ ǥ��
	public List<WriteDTO> PNwriteList(int sha_num) throws Exception;

}
