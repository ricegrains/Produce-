package com.Model;

import java.math.BigDecimal;

/**
 * Firmland entity. @author MyEclipse Persistence Tools
 */

public class Firmland implements java.io.Serializable {

	// Fields

	private BigDecimal firmlandid;
	private int contractsignplotsid;
	private double greenhousequantity;
	private double greenhousearea;
	private String soilcharacterize;
	private String note;

	// Constructors

	/** default constructor */
	public Firmland() {
	}

	/** minimal constructor */
	public Firmland(BigDecimal firmlandid, int contractsignplotsid) {
		this.firmlandid = firmlandid;
		this.contractsignplotsid = contractsignplotsid;
	}

	/** full constructor */
	public Firmland(BigDecimal firmlandid, int contractsignplotsid,
			double greenhousequantity, double greenhousearea,
			String soilcharacterize, String note) {
		this.firmlandid = firmlandid;
		this.contractsignplotsid = contractsignplotsid;
		this.greenhousequantity = greenhousequantity;
		this.greenhousearea = greenhousearea;
		this.soilcharacterize = soilcharacterize;
		this.note = note;
	}

	// Property accessors

	public BigDecimal getFirmlandid() {
		return this.firmlandid;
	}

	public void setFirmlandid(BigDecimal firmlandid) {
		this.firmlandid = firmlandid;
	}

	public int getContractsignplotsid() {
		return this.contractsignplotsid;
	}

	public void setContractsignplotsid(int contractsignplotsid) {
		this.contractsignplotsid = contractsignplotsid;
	}

	public double getGreenhousequantity() {
		return this.greenhousequantity;
	}

	public void setGreenhousequantity(double greenhousequantity) {
		this.greenhousequantity = greenhousequantity;
	}

	public double getGreenhousearea() {
		return this.greenhousearea;
	}

	public void setGreenhousearea(double greenhousearea) {
		this.greenhousearea = greenhousearea;
	}

	public String getSoilcharacterize() {
		return this.soilcharacterize;
	}

	public void setSoilcharacterize(String soilcharacterize) {
		this.soilcharacterize = soilcharacterize;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}