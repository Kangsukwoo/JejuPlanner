package kr.co.main.qna;

public class QnaDTO {
	private int nseno;
	private String id;
	private String subject;
	private String ir1;
	private String passwd;
	private String val;
	private String regdate;
	public int getNseno() {
		return nseno;
	}
	public void setNseno(int nseno) {
		this.nseno = nseno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getir1() {
		return ir1;
	}
	public void setir1(String ir1) {
		this.ir1 = ir1;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "NseDTO [nseno=" + nseno + ", id=" + id + ", subject=" + subject + ", ir1=" + ir1 + ", passwd="
				+ passwd + ", val=" + val + ", regdate=" + regdate + "]";
	}
	
} // class end