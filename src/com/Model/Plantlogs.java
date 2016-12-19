package com.Model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Plantlogs entity. @author MyEclipse Persistence Tools
 */

public class Plantlogs implements java.io.Serializable {

	// Fields

	private BigDecimal plantlogsid;
	private int firmlandid;
	private Date logdate;
	private String weather;
	private String humidity;
	private String wind;
	private String temperature;
	private String soidtemperature;
	private String soidhumidity;
	private String nextweather;
	private String note;

	// Constructors

	/** default constructor */
	public Plantlogs() {
	}

	/** minimal constructor */
	public Plantlogs(BigDecimal plantlogsid, int firmlandid, Date logdate) {
		this.plantlogsid = plantlogsid;
		this.firmlandid = firmlandid;
		this.logdate = logdate;
	}

	/** full constructor */
	public Plantlogs(BigDecimal plantlogsid, int firmlandid, Date logdate,
			String weather, String humidity, String wind, String temperature,
			String soidtemperature, String soidhumidity, String nextweather,
			String note) {
		this.plantlogsid = plantlogsid;
		this.firmlandid = firmlandid;
		this.logdate = logdate;
		this.weather = weather;
		this.humidity = humidity;
		this.wind = wind;
		this.temperature = temperature;
		this.soidtemperature = soidtemperature;
		this.soidhumidity = soidhumidity;
		this.nextweather = nextweather;
		this.note = note;
	}

	// Property accessors

	public BigDecimal getPlantlogsid() {
		return this.plantlogsid;
	}

	public void setPlantlogsid(BigDecimal plantlogsid) {
		this.plantlogsid = plantlogsid;
	}

	public int getFirmlandid() {
		return this.firmlandid;
	}

	public void setFirmlandid(int firmlandid) {
		this.firmlandid = firmlandid;
	}

	public Date getLogdate() {
		return this.logdate;
	}

	public void setLogdate(Date logdate) {
		this.logdate = logdate;
	}

	public String getWeather() {
		return this.weather;
	}

	public void setWeather(String weather) {
		this.weather = weather;
	}

	public String getHumidity() {
		return this.humidity;
	}

	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}

	public String getWind() {
		return this.wind;
	}

	public void setWind(String wind) {
		this.wind = wind;
	}

	public String getTemperature() {
		return this.temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	public String getSoidtemperature() {
		return this.soidtemperature;
	}

	public void setSoidtemperature(String soidtemperature) {
		this.soidtemperature = soidtemperature;
	}

	public String getSoidhumidity() {
		return this.soidhumidity;
	}

	public void setSoidhumidity(String soidhumidity) {
		this.soidhumidity = soidhumidity;
	}

	public String getNextweather() {
		return this.nextweather;
	}

	public void setNextweather(String nextweather) {
		this.nextweather = nextweather;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}