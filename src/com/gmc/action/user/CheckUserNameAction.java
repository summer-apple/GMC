package com.gmc.action.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gmc.service.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@Namespace("/user")
@Controller
public class CheckUserNameAction extends ActionSupport{
	private UserServiceImpl userServiceImpl;
	
	@Autowired
	private void setUserService(UserServiceImpl userServiceImpl){
		this.userServiceImpl = userServiceImpl;
	}
	private HttpServletRequest request;
	public String execute() throws IOException  {
		
		
		request = ServletActionContext. getRequest();
		String user_name = request.getParameter("user_name");
		
		
		boolean flag = userServiceImpl.checkUserName(user_name);
		
	
			
			if (flag) {
				ServletActionContext.getResponse().getWriter().print("true");
			}else {
				ServletActionContext.getResponse().getWriter().print("false");
			}
			
			return null;
			
		
		
		
	}
}
