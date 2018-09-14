package com.vo;

import java.util.List;

public class Jdgood {
	private int jid;
	private String jname;
    
	

	
	public int getJid() {
		return jid;
	}

	public void setJid(int jid) {
		this.jid = jid;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	@Override
	public String toString() {
		return "Jdgood [jid=" + jid + ", jname=" + jname + "]";
	}

}
