package com.Reports;

public class ReportsModel 
{
   private int ReportID;
   private int  AcceptOrgID;
   private int  SendOrgID;
   private int DomainID ;
   private String SendTime;
   private String Topic;
   private String FileName;
   private String path;
   private String Note;
public int getReportID() {
	return ReportID;
}
public void setReportID(int reportID) {
	ReportID = reportID;
}
public int getAcceptOrgID() {
	return AcceptOrgID;
}
public void setAcceptOrgID(int acceptOrgID) {
	AcceptOrgID = acceptOrgID;
}
public int getSendOrgID() {
	return SendOrgID;
}
public void setSendOrgID(int sendOrgID) {
	SendOrgID = sendOrgID;
}
public int getDomainID() {
	return DomainID;
}
public void setDomainID(int domainID) {
	DomainID = domainID;
}
public String getSendTime() {
	return SendTime;
}
public void setSendTime(String sendTime) {
	SendTime = sendTime;
}
public String getTopic() {
	return Topic;
}
public void setTopic(String topic) {
	Topic = topic;
}
public String getFileName() {
	return FileName;
}
public void setFileName(String fileName) {
	FileName = fileName;
}
public String getPath() {
	return path;
}
public void setPath(String path) {
	this.path = path;
}
public String getNote() {
	return Note;
}
public void setNote(String note) {
	Note = note;
}
   
}
