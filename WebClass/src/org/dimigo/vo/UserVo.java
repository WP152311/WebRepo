package org.dimigo.vo;

/**
 * <pre>
 * org.dimigo.vo
 * 	 |_ UserVo
 *
 * 1. 개요 : 
 * 2. 작성일 : 2017. 9. 27.
 * <pre>
 *
 * @author : 박명규(로컬계정)
 * @version : 1.0
 */
public class UserVo {
	
	private String id;
	private String name;
	private String nickname;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}
