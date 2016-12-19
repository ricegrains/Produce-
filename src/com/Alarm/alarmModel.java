package com.Alarm;

public class alarmModel 
{
   private int AlarmID;
   private int InputProviderOrgID;
   private String ReasonContent;
   private String AlarmTime;
   private String ProduceOrg;
   private String Note;
public int getAlarmID() {
	return AlarmID;
}
public void setAlarmID(int alarmID) {
	AlarmID = alarmID;
}
public int getInputProviderOrgID() {
	return InputProviderOrgID;
}
public void setInputProviderOrgID(int inputProviderOrgID) {
	InputProviderOrgID = inputProviderOrgID;
}
public String getReasonContent() {
	return ReasonContent;
}
public void setReasonContent(String reasonContent) {
	ReasonContent = reasonContent;
}
public String getAlarmTime() {
	return AlarmTime;
}
public void setAlarmTime(String alarmTime) {
	AlarmTime = alarmTime;
}
public String getProduceOrg() {
	return ProduceOrg;
}
public void setProduceOrg(String produceOrg) {
	ProduceOrg = produceOrg;
}
public String getNote() {
	return Note;
}
public void setNote(String note) {
	Note = note;
}
   
}
