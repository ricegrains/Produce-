package com.Model;

import java.math.BigDecimal;

/**
 * Contractsignplots entity. @author MyEclipse Persistence Tools
 */

public class Contractsignplots implements
		java.io.Serializable {

	// Fields

	private BigDecimal contractsignplotsid;
	private int contractid;
	private String plotid;
	private double plotarea;
	private String plotlocation;
	private String plottype;
	private String groupid;
	private String note;

	// Constructors

	/** default constructor */
	public Contractsignplots() {
	}

	/** minimal constructor */
	public Contractsignplots(BigDecimal contractsignplotsid, int contractid,
			String plotid) {
		this.contractsignplotsid = contractsignplotsid;
		this.contractid = contractid;
		this.plotid = plotid;
	}

	/** full constructor */
	public Contractsignplots(BigDecimal contractsignplotsid, int contractid,
			String plotid, double plotarea, String plotlocation,
			String plottype, String groupid, String note) {
		this.contractsignplotsid = contractsignplotsid;
		this.contractid = contractid;
		this.plotid = plotid;
		this.plotarea = plotarea;
		this.plotlocation = plotlocation;
		this.plottype = plottype;
		this.groupid = groupid;
		this.note = note;
	}

	// Property accessors

	public BigDecimal getContractsignplotsid() {
		return this.contractsignplotsid;
	}

	public void setContractsignplotsid(BigDecimal contractsignplotsid) {
		this.contractsignplotsid = contractsignplotsid;
	}

	public int getContractid() {
		return this.contractid;
	}

	public void setContractid(int contractid) {
		this.contractid = contractid;
	}

	public String getPlotid() {
		return this.plotid;
	}

	public void setPlotid(String plotid) {
		this.plotid = plotid;
	}

	public double getPlotarea() {
		return this.plotarea;
	}

	public void setPlotarea(double plotarea) {
		this.plotarea = plotarea;
	}

	public String getPlotlocation() {
		return this.plotlocation;
	}

	public void setPlotlocation(String plotlocation) {
		this.plotlocation = plotlocation;
	}

	public String getPlottype() {
		return this.plottype;
	}

	public void setPlottype(String plottype) {
		this.plottype = plottype;
	}

	public String getGroupid() {
		return this.groupid;
	}

	public void setGroupid(String groupid) {
		this.groupid = groupid;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}