package kr.co.main.share;

import java.util.List;

import kr.co.main.plan.PlanDTO;

public class WriteDTO {
	
	private int sha_num;
	private String Plan_no;
	private String sha_date;
	private int sha_viewcount;
	private int sha_recommend;
	private List<PlanDTO> PlanDTO;
	
	public WriteDTO() {
	}
		
	

	


	public List<PlanDTO> getPlanDTO() {
		return PlanDTO;
	}






	public void setPlanDTO(List<PlanDTO> planDTO) {
		PlanDTO = planDTO;
	}






	public int getSha_num() {
		return sha_num;
	}

	public void setSha_num(int sha_num) {
		this.sha_num = sha_num;
	}

	public String getPlan_no() {
		return Plan_no;
	}

	public void setPlan_no(String plan_no) {
		Plan_no = plan_no;
	}

	public String getSha_date() {
		return sha_date;
	}

	public void setSha_date(String sha_date) {
		this.sha_date = sha_date;
	}


	public int getSha_viewcount() {
		return sha_viewcount;
	}

	public void setSha_viewcount(int sha_viewcount) {
		this.sha_viewcount = sha_viewcount;
	}

	public int getSha_recommend() {
		return sha_recommend;
	}

	public void setSha_recommend(int sha_recommend) {
		this.sha_recommend = sha_recommend;
	}
	
	
	
	
	
	
}//shareDTO end
