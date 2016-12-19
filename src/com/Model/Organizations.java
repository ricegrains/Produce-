package com.Model;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Organizations entity. @author MyEclipse Persistence Tools
 */

public class Organizations implements
		java.io.Serializable {

	// Fields

	private BigDecimal orgid;
	private int orgtypeid;
	private String orgcode;
	private String orgname;
	private String address;
	private String director;
	private String telephone;
	private String fax;
	private String postcode;
	private String web;
	private BigDecimal safelevelid;
	private double firmlandarea;
	private double waterlandarea;
	private double pondarea;
	private double forestandorchardarea;
	private String note;
	private Set contractorses = new HashSet(0);
	private Set contracts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Organizations() {
	}

	/** minimal constructor */
	public Organizations(BigDecimal orgid, int orgtypeid, String orgname) {
		this.orgid = orgid;
		this.orgtypeid = orgtypeid;
		this.orgname = orgname;
	}

	/** full constructor */
	public Organizations(BigDecimal orgid, int orgtypeid, String orgcode,
			String orgname, String address, String director, String telephone,
			String fax, String postcode, String web, BigDecimal safelevelid,
			double firmlandarea, double waterlandarea, double pondarea,
			double forestandorchardarea, String note, Set contractorses,
			Set contracts) {
		this.orgid = orgid;
		this.orgtypeid = orgtypeid;
		this.orgcode = orgcode;
		this.orgname = orgname;
		this.address = address;
		this.director = director;
		this.telephone = telephone;
		this.fax = fax;
		this.postcode = postcode;
		this.web = web;
		this.safelevelid = safelevelid;
		this.firmlandarea = firmlandarea;
		this.waterlandarea = waterlandarea;
		this.pondarea = pondarea;
		this.forestandorchardarea = forestandorchardarea;
		this.note = note;
		this.contractorses = contractorses;
		this.contracts = contracts;
	}

	// Property accessors

	public BigDecimal getOrgid() {
		return this.orgid;
	}

	public void setOrgid(BigDecimal orgid) {
		this.orgid = orgid;
	}

	public int getOrgtypeid() {
		return this.orgtypeid;
	}

	public void setOrgtypeid(int orgtypeid) {
		this.orgtypeid = orgtypeid;
	}

	public String getOrgcode() {
		return this.orgcode;
	}

	public void setOrgcode(String orgcode) {
		this.orgcode = orgcode;
	}

	public String getOrgname() {
		return this.orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDirector() {
		return this.director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getWeb() {
		return this.web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public BigDecimal getSafelevelid() {
		return this.safelevelid;
	}

	public void setSafelevelid(BigDecimal safelevelid) {
		this.safelevelid = safelevelid;
	}

	public double getFirmlandarea() {
		return this.firmlandarea;
	}

	public void setFirmlandarea(double firmlandarea) {
		this.firmlandarea = firmlandarea;
	}

	public double getWaterlandarea() {
		return this.waterlandarea;
	}

	public void setWaterlandarea(double waterlandarea) {
		this.waterlandarea = waterlandarea;
	}

	public double getPondarea() {
		return this.pondarea;
	}

	public void setPondarea(double pondarea) {
		this.pondarea = pondarea;
	}

	public double getForestandorchardarea() {
		return this.forestandorchardarea;
	}

	public void setForestandorchardarea(double forestandorchardarea) {
		this.forestandorchardarea = forestandorchardarea;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Set getContractorses() {
		return this.contractorses;
	}

	public void setContractorses(Set contractorses) {
		this.contractorses = contractorses;
	}

	public Set getContracts() {
		return this.contracts;
	}

	public void setContracts(Set contracts) {
		this.contracts = contracts;
	}

}