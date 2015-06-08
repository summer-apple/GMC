package com.gmc.action.user;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;


import com.gmc.service.UserServiceImpl;

import com.opensymphony.xwork2.ActionSupport;



@Namespace("/user")
@Controller
public class LoginAction extends ActionSupport{
	private UserServiceImpl userServiceImpl;
	
	@Autowired
	private void setUserService(UserServiceImpl userServiceImpl){
		this.userServiceImpl = userServiceImpl;
	}
	private HttpServletRequest request;
	public String execute()  {
		
		
		request = ServletActionContext. getRequest();
		String user_name = request.getParameter("user_name");
		String user_pass = request.getParameter("user_pass");
		
		if (user_name==null&&user_pass==null) {
			
			return INPUT;
			
		}else {
			boolean flag = userServiceImpl.checkUser(user_name, user_pass);
			
			if (flag) {
				request.removeAttribute("message");
				return SUCCESS;
			}else {
				request.setAttribute("message", "Wrong Username Or Password ！");
				return INPUT;
			}
			
		}
		
		
	}
}
