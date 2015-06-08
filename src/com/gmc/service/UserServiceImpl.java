package com.gmc.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gmc.aspect.LogAspect;
import com.gmc.dao.UserDao;
import com.gmc.dao.UserDaoHibernate4;
import com.gmc.entity.User;

@Service
public class UserServiceImpl implements UserService {

	private UserDaoHibernate4 userDaoHibernate4;
	

	@Autowired
	public void setUserDaoHibernate4(UserDaoHibernate4 userDaoHibernate4) {
		this.userDaoHibernate4 = userDaoHibernate4;
	}



	private LogAspect logAspect;
	
	@Autowired
	public void setLogAspect(LogAspect logAspect) {
		this.logAspect = logAspect;
	}
	
	
	
	@Override
	public boolean checkUser(String user_name, String user_pass) {
		

		String hql = "FROM User WHERE user_name=?0 AND user_pass= ?1";
		List<User> list = userDaoHibernate4.find(hql,user_name, user_pass);
		
	
		
		if (list.size()!=0) {
			System.out.println("user_age="+list.get(0).getUserAge());
			return true;
		} else {
			return false;
		}
		

	}



	@Override
	public boolean checkUserName(String user_name) {
		
		
		String hql = "FROM User WHERE user_name=?0";
		List<User> list = userDaoHibernate4.find(hql,user_name);
		
	
		
		if (list.size()!=0) {
			return false;//user name exist
		} else {
			return true;
		}
	}



	@Override
	public boolean checkUserEmail(String user_email) {
		String hql = "FROM User WHERE user_email=?0";
		List<User> list = userDaoHibernate4.find(hql,user_email);
		
	
		
		if (list.size()!=0) {
			return false;//user name exist
		} else {
			return true;
		}
	}



	
	

}
