package com.Model;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Contract entity. @author MyEclipse Persistence Tools
 */

public class Contract implements java.io.Serializable {

	// Fields

	private BigDecimal contractid;
	private String typeid;
	private String identityid;
	private int produceorg;
	private String contractcode;
	private Date signtime;
	private Date effectivedate;
	private Date expiredate;
	private double moneyamount;
	private double area;
	private Date duedate;
	private double arrearage;
	private String note;
	private Set contractsignplotses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Contract() {
	}

	/** minimal constructor */
	public Contract(BigDecimal contractid, String typeid,
			String identityid, int produceorg,
			String contractcode, Date signtime) {
		this.contractid = contractid;
		this.typeid = typeid;
		this.identityid = identityid;
		this.produceorg = produceorg;
		this.contractcode = contractcode;
		this.signtime = signtime;
	}

	/** full constructor */
	public Contract(BigDecimal contractid, String typeid,
			String identityid, int produceorg,
			String contractcode, Date signtime, Date effectivedate,
			Date expiredate, double moneyamount, double area, Date duedate,
			double arrearage, String note, Set contractsignplotses) {
		this.contractid = contractid;
		this.typeid = typeid;
		this.identityid = identityid;
		this.produceorg = produceorg;
		this.contractcode = contractcode;
		this.signtime = signtime;
		this.effectivedate = effectivedate;
		this.expiredate = expiredate;
		this.moneyamount = moneyamount;
		this.area = area;
		this.duedate = duedate;
		this.arrearage = arrearage;
		this.note = note;
		this.contractsignplotses = contractsignplotses;
	}

	// Property accessors

	public BigDecimal getContractid() {
		return this.contractid;
	}

	public void setContractid(BigDecimal contractid) {
		this.contractid = contractid;
	}

	public String getTypeid() {
		return this.typeid;
	}

	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}

	public String getIdentityid() {
		return this.identityid;
	}

	public void setIdentityid(String identityid) {
		this.identityid = identityid;
	}

	public int getProduceorg() {
		return this.produceorg;
	}

	public void setProduceorg(int produceorg) {
		this.produceorg = produceorg;
	}

	public String getContractcode() {
		return this.contractcode;
	}

	public void setContractcode(String contractcode) {
		this.contractcode = contractcode;
	}

	public Date getSigntime() {
		return this.signtime;
	}

	public void setSigntime(Date signtime) {
		this.signtime = signtime;
	}

	public Date getEffectivedate() {
		return this.effectivedate;
	}

	public void setEffectivedate(Date effectivedate) {
		this.effectivedate = effectivedate;
	}

	public Date getExpiredate() {
		return this.expiredate;
	}

	public void setExpiredate(Date expiredate) {
		this.expiredate = expiredate;
	}

	public double getMoneyamount() {
		return this.moneyamount;
	}

	public void setMoneyamount(double moneyamount) {
		this.moneyamount = moneyamount;
	}

	public double getArea() {
		return this.area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public Date getDuedate() {
		return this.duedate;
	}

	public void setDuedate(Date duedate) {
		this.duedate = duedate;
	}

	public double getArrearage() {
		return this.arrearage;
	}

	public void setArrearage(double arrearage) {
		this.arrearage = arrearage;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Set getContractsignplotses() {
		return this.contractsignplotses;
	}

	public void setContractsignplotses(Set contractsignplotses) {
		this.contractsignplotses = contractsignplotses;
	}

}