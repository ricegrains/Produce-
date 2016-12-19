package com.yuModel;

public class TestPlanModel {
	private int testplanid;
	private int issueorgid;
	private int executionorgid;
	private String issuedate;
	private String schedulefinishdate;
	private int assignlevel;
	private int planquantity;
	private int finishedquantity;
	private int passamount;
	private String passppercentage;
	private String note;
	public int getTestplanid() {
		return testplanid;
	}
	public void setTestplanid(int testplanid) {
		this.testplanid = testplanid;
	}
	public int getIssueorgid() {
		return issueorgid;
	}
	public void setIssueorgid(int issueorgid) {
		this.issueorgid = issueorgid;
	}
	public int getExecutionorgid() {
		return executionorgid;
	}
	public void setExecutionorgid(int executionorgid) {
		this.executionorgid = executionorgid;
	}
	public String getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
	public String getSchedulefinishdate() {
		return schedulefinishdate;
	}
	public void setSchedulefinishdate(String schedulefinishdate) {
		this.schedulefinishdate = schedulefinishdate;
	}
	public int getAssignlevel() {
		return assignlevel;
	}
	public void setAssignlevel(int assignlevel) {
		this.assignlevel = assignlevel;
	}
	public int getPlanquantity() {
		return planquantity;
	}
	public void setPlanquantity(int planquantity) {
		this.planquantity = planquantity;
	}
	public int getFinishedquantity() {
		return finishedquantity;
	}
	public void setFinishedquantity(int finishedquantity) {
		this.finishedquantity = finishedquantity;
	}
	public int getPassamount() {
		return passamount;
	}
	public void setPassamount(int passamount) {
		this.passamount = passamount;
	}

	public String getPassppercentage() {
		return passppercentage;
	}
	public void setPassppercentage(String passppercentage) {
		this.passppercentage = passppercentage;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
}
