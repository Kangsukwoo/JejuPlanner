package kr.co.main.qna;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import kr.co.main.qna.QnaDTO;
import kr.co.main.qna.QnaMapper;

@Component //ÀÚµ¿À¸·Î °´Ã¼¸¦ »ý¼º(½ºÇÁ¸µºó) new QnaDAO()µ¿ÀÏÇÑ °³³ä
public class QnaDAO {

	// @Autowired
	// DBOpen dbopen;

	// root-context.xmlÀÇ <bean id="sqlSession">
	@Autowired
	SqlSession sqlSession;
	public QnaDAO() {
		System.out.println("---QnaDAO°´Ã¼ »ý¼ºµÊ...");
	}

	public int insert(QnaDTO dto) {
	    //interface Not/iceMapper{}
	    QnaMapper mapper = sqlSession.getMapper(QnaMapper.class);
	    int count = mapper.insert(dto);
	    return count;    
	  }//create() end


} // class end