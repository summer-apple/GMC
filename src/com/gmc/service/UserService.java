package com.gmc.service;

import org.springframework.stereotype.Service;

 


@Service
public interface UserService {
	boolean checkUser(String user_name,String user_pass);
	boolean checkUserName(String user_name);
	boolean checkUserEmail(String user_email);
}
