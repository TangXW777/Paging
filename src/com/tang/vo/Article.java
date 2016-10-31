package com.tang.vo;

import java.io.Serializable;

public class Article implements Serializable{
	private int id;
	private String title;
	private int pubdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPubdate() {
		return pubdate;
	}
	public void setPubdate(int pubdate) {
		this.pubdate = pubdate;
	}
	
	
}
