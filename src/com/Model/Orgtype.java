package com.Model;

import java.math.BigDecimal;

/**
 * Orgtype entity. @author MyEclipse Persistence Tools
 */

public class Orgtype implements java.io.Serializable {

	// Fields

	private BigDecimal orgtypeid;
	private String orgtypename;
	private String note;

	// Constructors

	/** default constructor */
	public Orgtype() {
	}

	/** minimal constructor */
	public Orgtype(BigDecimal orgtypeid, String orgtypename) {
		this.orgtypeid = orgtypeid;
		this.orgtypename = orgtypename;
	}

	/** full constructor */
	public Orgtype(BigDecimal orgtypeid, String orgtypename, String note) {
		this.orgtypeid = orgtypeid;
		this.orgtypename = orgtypename;
		this.note = note;
	}

	// Property accessors

	public BigDecimal getOrgtypeid() {
		return this.orgtypeid;
	}

	public void setOrgtypeid(BigDecimal orgtypeid) {
		this.orgtypeid = orgtypeid;
	}

	public String getOrgtypename() {
		return this.orgtypename;
	}

	public void setOrgtypename(String orgtypename) {
		this.orgtypename = orgtypename;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}