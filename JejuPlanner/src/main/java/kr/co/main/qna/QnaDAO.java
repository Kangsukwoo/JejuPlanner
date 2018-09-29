package kr.co.main.qna;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import kr.co.main.qna.QnaDTO;
import kr.co.main.qna.QnaMapper;

@Component //�ڵ����� ��ü�� ����(��������) new QnaDAO()������ ����
public class QnaDAO {

	// @Autowired
	// DBOpen dbopen;

	// root-context.xml�� <bean id="sqlSession">
	@Autowired
	SqlSession sqlSession;
	public QnaDAO() {
		System.out.println("---QnaDAO��ü ������...");
	}

	public int insert(QnaDTO dto) {
	    //interface Not/iceMapper{}
	    QnaMapper mapper = sqlSession.getMapper(QnaMapper.class);
	    int count = mapper.insert(dto);
	    return count;    
	  }//create() end


} // class end