package com.devops.pojo;

public class Events {
	private int event_id;
	private String	event_name;
	private String start_date;
	private String end_date;
	private int event_length;
	private int event_pid;
	private String rec_type;
	private String color;
	private int uid;
	public Events(int event_id, String event_name, String start_date, String end_date,
			int event_length, int event_pid, String rec_type, String color, int uid) {
		super();
		this.event_id = event_id;
		this.event_name = event_name;
		this.start_date = start_date;
		this.end_date = end_date;
		
		this.event_length = event_length;
		this.event_pid = event_pid;
		this.rec_type = rec_type;
		this.color = color;
		this.uid = uid;
	}
	public Events() {
		super();
	}
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	
	public int getEvent_length() {
		return event_length;
	}
	public void setEvent_length(int event_length) {
		this.event_length = event_length;
	}
	public int getEvent_pid() {
		return event_pid;
	}
	public void setEvent_pid(int event_pid) {
		this.event_pid = event_pid;
	}
	public String getRec_type() {
		return rec_type;
	}
	public void setRec_type(String rec_type) {
		this.rec_type = rec_type;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
}
