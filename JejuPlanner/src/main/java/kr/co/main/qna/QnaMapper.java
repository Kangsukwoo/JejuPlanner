package kr.co.main.qna;


public interface QnaMapper {
  /*
    인터페이스:추상메소드로만 존재하며 MyBatis3을 호출하기 편리하도록 지원
    매퍼에 들어가는 메소드명은
    MyBatis의 XML 파일(notice.xml)안의 id와 동일해야 한다
  */
    
    //<create id="">
    public int insert(QnaDTO dto);


  
}//interface end