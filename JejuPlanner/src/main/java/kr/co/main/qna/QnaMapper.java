package kr.co.main.qna;


public interface QnaMapper {
  /*
    �������̽�:�߻�޼ҵ�θ� �����ϸ� MyBatis3�� ȣ���ϱ� ���ϵ��� ����
    ���ۿ� ���� �޼ҵ����
    MyBatis�� XML ����(notice.xml)���� id�� �����ؾ� �Ѵ�
  */
    
    //<create id="">
    public int insert(QnaDTO dto);


  
}//interface end