package com.Model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Plantoperations entity. @author MyEclipse Persistence Tools
 */

public class Plantoperations  implements
		java.io.Serializable {

	// Fields

	private BigDecimal plantoperationsid;
	private int firmlandid;
	private int subtypeid;
	private Date logdate;
	private Date operatetime;
	private String operateperson;
	private BigDecimal subtypeid1;
	private BigDecimal objectid;
	private String purpose;
	private String operationmethod;
	private double quantityperarea;
	private double quantityperhouse;
	private double quantity;
	private BigDecimal safeperiod;
	private Date safedate;
	private String note;

	// Constructors

	/** default constructor */
	public Plantoperations() {
	}

	/** minimal constructor */
	public Plantoperations(BigDecimal plantoperationsid, int firmlandid,
			int subtypeid, Date logdate, Date operatetime,
			String operateperson, BigDecimal subtypeid1, BigDecimal objectid) {
		this.plantoperationsid = plantoperationsid;
		this.firmlandid = firmlandid;
		this.subtypeid = subtypeid;
		this.logdate = logdate;
		this.operatetime = operatetime;
		this.operateperson = operateperson;
		this.subtypeid1 = subtypeid1;
		this.objectid = objectid;
	}

	/** full constructor */
	public Plantoperations(BigDecimal plantoperationsid, int firmlandid,
			int subtypeid, Date logdate, Date operatetime,
			String operateperson, BigDecimal subtypeid1, BigDecimal objectid,
			String purpose, String operationmethod, double quantityperarea,
			double quantityperhouse, double quantity, BigDecimal safeperiod,
			Date safedate, String note) {
		this.plantoperationsid = plantoperationsid;
		this.firmlandid = firmlandid;
		this.subtypeid = subtypeid;
		this.logdate = logdate;
		this.operatetime = operatetime;
		this.operateperson = operateperson;
		this.subtypeid1 = subtypeid1;
		this.objectid = objectid;
		this.purpose = purpose;
		this.operationmethod = operationmethod;
		this.quantityperarea = quantityperarea;
		this.quantityperhouse = quantityperhouse;
		this.quantity = quantity;
		this.safeperiod = safeperiod;
		this.safedate = safedate;
		this.note = note;
	}

	// Property accessors

	public BigDecimal getPlantoperationsid() {
		return this.plantoperationsid;
	}

	public void setPlantoperationsid(BigDecimal plantoperationsid) {
		this.plantoperationsid = plantoperationsid;
	}

	public int getFirmlandid() {
		return this.firmlandid;
	}

	public void setFirmlandid(int firmlandid) {
		this.firmlandid = firmlandid;
	}

	public int getSubtypeid() {
		return this.subtypeid;
	}

	public void setSubtypeid(int subtypeid) {
		this.subtypeid = subtypeid;
	}

	public Date getLogdate() {
		return this.logdate;
	}

	public void setLogdate(Date logdate) {
		this.logdate = logdate;
	}

	public Date getOperatetime() {
		return this.operatetime;
	}

	public void setOperatetime(Date operatetime) {
		this.operatetime = operatetime;
	}

	public String getOperateperson() {
		return this.operateperson;
	}

	public void setOperateperson(String operateperson) {
		this.operateperson = operateperson;
	}

	public BigDecimal getSubtypeid1() {
		return this.subtypeid1;
	}

	public void setSubtypeid1(BigDecimal subtypeid1) {
		this.subtypeid1 = subtypeid1;
	}

	public BigDecimal getObjectid() {
		return this.objectid;
	}

	public void setObjectid(BigDecimal objectid) {
		this.objectid = objectid;
	}

	public String getPurpose() {
		return this.purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getOperationmethod() {
		return this.operationmethod;
	}

	public void setOperationmethod(String operationmethod) {
		this.operationmethod = operationmethod;
	}

	public double getQuantityperarea() {
		return this.quantityperarea;
	}

	public void setQuantityperarea(double quantityperarea) {
		this.quantityperarea = quantityperarea;
	}

	public double getQuantityperhouse() {
		return this.quantityperhouse;
	}

	public void setQuantityperhouse(double quantityperhouse) {
		this.quantityperhouse = quantityperhouse;
	}

	public double getQuantity() {
		return this.quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getSafeperiod() {
		return this.safeperiod;
	}

	public void setSafeperiod(BigDecimal safeperiod) {
		this.safeperiod = safeperiod;
	}

	public Date getSafedate() {
		return this.safedate;
	}

	public void setSafedate(Date safedate) {
		this.safedate = safedate;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}