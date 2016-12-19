package com.Model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Plotrotations entity. @author MyEclipse Persistence Tools
 */

public class Plotrotations implements
		java.io.Serializable {

	// Fields

	private BigDecimal plotrotationsid;
	private int Prcedingobjectid;
	private int objectid;
	private int contractsignplotsid;
	private Date pluckdate;
	private Date sowingdate;
	private String note;

	// Constructors

	/** default constructor */
	public Plotrotations() {
	}

	/** minimal constructor */
	public Plotrotations(BigDecimal plotrotationsid,
			int contractsignplotsid, Date pluckdate) {
		this.plotrotationsid = plotrotationsid;
		this.contractsignplotsid = contractsignplotsid;
		this.pluckdate = pluckdate;
	}

	/** full constructor */
	public Plotrotations(BigDecimal plotrotationsid,
			int Prcedingobjectid, int objectid,
			int contractsignplotsid, Date pluckdate,
			Date sowingdate, String note) {
		this.plotrotationsid = plotrotationsid;
		this.Prcedingobjectid = Prcedingobjectid;
		this.objectid = objectid;
		this.contractsignplotsid = contractsignplotsid;
		this.pluckdate = pluckdate;
		this.sowingdate = sowingdate;
		this.note = note;
	}

	// Property accessors

	public BigDecimal getPlotrotationsid() {
		return this.plotrotationsid;
	}

	public void setPlotrotationsid(BigDecimal plotrotationsid) {
		this.plotrotationsid = plotrotationsid;
	}

	public int getPrcedingobjectid() {
		return this.Prcedingobjectid;
	}

	public void setPrcedingobjectid(int Prcedingobjectid) {
		this.Prcedingobjectid = Prcedingobjectid;
	}

	public int getObjectid() {
		return this.objectid;
	}

	public void setObjectsByObjectid(int objectid) {
		this.objectid = objectid;
	}

	public int getContractsignplotsid() {
		return this.contractsignplotsid;
	}

	public void setContractsignplotsid(int contractsignplotsid) {
		this.contractsignplotsid = contractsignplotsid;
	}

	public Date getPluckdate() {
		return this.pluckdate;
	}

	public void setPluckdate(Date pluckdate) {
		this.pluckdate = pluckdate;
	}

	public Date getSowingdate() {
		return this.sowingdate;
	}

	public void setSowingdate(Date sowingdate) {
		this.sowingdate = sowingdate;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}