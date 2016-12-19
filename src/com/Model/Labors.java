package com.Model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Labors entity. @author MyEclipse Persistence Tools
 */

public class Labors implements java.io.Serializable {

	// Fields

	private BigDecimal laborsid;
	private String identityid;
	private String name;
	private String relation;
	private Date birthday;
	private BigDecimal gender;
	private String note;

	// Constructors

	/** default constructor */
	public Labors() {
	}

	/** minimal constructor */
	public Labors(BigDecimal laborsid, String identityid, String name) {
		this.laborsid = laborsid;
		this.identityid = identityid;
		this.name = name;
	}

	/** full constructor */
	public Labors(BigDecimal laborsid, String identityid, String name,
			String relation, Date birthday, BigDecimal gender, String note) {
		this.laborsid = laborsid;
		this.identityid = identityid;
		this.name = name;
		this.relation = relation;
		this.birthday = birthday;
		this.gender = gender;
		this.note = note;
	}

	// Property accessors

	public BigDecimal getLaborsid() {
		return this.laborsid;
	}

	public void setLaborsid(BigDecimal laborsid) {
		this.laborsid = laborsid;
	}

	public String getIdentityid() {
		return this.identityid;
	}

	public void setIdentityid(String identityid) {
		this.identityid = identityid;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRelation() {
		return this.relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public BigDecimal getGender() {
		return this.gender;
	}

	public void setGender(BigDecimal gender) {
		this.gender = gender;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}