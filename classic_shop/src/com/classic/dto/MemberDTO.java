package com.classic.dto;

import java.util.Date;

public class MemberDTO {
	
	/*
	 	 Name                                      				Null?    		Type
 		----------------------------------------- 	-------- 	-------------
		 NUM                                      				NOT NULL 	NUMBER(8)
		 ID                                                 						VARCHAR2(12)
		 PW                                        				NOT NULL	VARCHAR2(12)
		 PHONE                                              						VARCHAR2(14)
		 MAIL                                               						VARCHAR2(50)
		 GRADE                                    				NOT NULL 	NUMBER(1)
		 INDATE																	DATE
	*/
	
	private int num;
	private String id;
	private String pw;
	private String phone;
	private String mail;
	private int grade;
	private Date indate;

}
