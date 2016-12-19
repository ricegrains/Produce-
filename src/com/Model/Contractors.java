package com.Model;

import java.util.HashSet;
import java.util.Set;

/**
 * Contractors entity. @author MyEclipse Persistence Tools
 */

public class Contractors implements java.io.Serializable {

	// Fields
    private int BelongOrgID;
	private String identityid;
	private Organizations organizations;
	private String internalid;
	private String name;
	private String telephone;
	private String address;
	private String note;
	private Set laborses = new HashSet(0);

	// Constructors

	public int getBelongOrgID() {
		return BelongOrgID;
	}

	public void setBelongOrgID(int belongOrgID) {
		BelongOrgID = belongOrgID;
	}

	/** default constructor */
	public Contractors() {
	}

	/** minimal constructor */
	public Contractors(String identityid, Organizations organizations,
			String internalid) {
		this.identityid = identityid;
		this.organizations = organizations;
		this.internalid = internalid;
	}

	/** full constructor */
	public Contractors(String identityid, Organizations organizations,
			String internalid, String name, String telephone, String address,
			String note, Set laborses) {
		this.identityid = identityid;
		this.organizations = organizations;
		this.internalid = internalid;
		this.name = name;
		this.telephone = telephone;
		this.address = address;
		this.note = note;
		this.laborses = laborses;
	}

	// Property accessors

	public String getIdentityid() {
		return this.identityid;
	}

	public void setIdentityid(String identityid) {
		this.identityid = identityid;
	}

	public Organizations getOrganizations() {
		return this.organizations;
	}

	public void setOrganizations(Organizations organizations) {
		this.organizations = organizations;
	}

	public String getInternalid() {
		return this.internalid;
	}

	public void setInternalid(String internalid) {
		this.internalid = internalid;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Set getLaborses() {
		return this.laborses;
	}

	public void setLaborses(Set laborses) {
		this.laborses = laborses;
	}

}