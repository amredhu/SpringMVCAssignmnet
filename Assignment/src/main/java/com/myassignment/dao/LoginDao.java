package com.myassignment.dao;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.myassignment.model.Login;
import com.myassignment.model.Weapons;

@Component
public class LoginDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void saveLogin(Login login) {
		Session session = sessionFactory.getCurrentSession();
		session.save(login);
		
	}
	
	@Transactional
	public boolean getUser(String userID) {
		Session session = sessionFactory.getCurrentSession();
		Login login=(Login)session.get(Login.class, userID);
		if(login!=null) {
			return true;
			
		}
		else {
			return false;
			
		}
		
	}
	
	@Transactional
	public ArrayList<Login> fetchLogin(){
		
		Session session= sessionFactory.getCurrentSession();
		//session.g
		ArrayList<Login> login = (ArrayList<Login>)session.createQuery("from Login").list();
		return login;
		
	}
	
	@Transactional
	public Login getDetails(String userId) {
		Session session = sessionFactory.getCurrentSession();
		Login login = (Login)session.get(Login.class,userId);
		return login;
	}
	
	@Transactional
	public void deleteById(String userID) {
		Session session = sessionFactory.getCurrentSession();
		Login login = (Login)session.get(Login.class, userID);
		session.delete(login);
	}
	
	@Transactional
	public void updateUser(String userID,String password, String role) {
		Session session = sessionFactory.getCurrentSession();
		Login login = (Login)session.get(Login.class, userID);
		
		login.setPassword(password);
		login.setRole(role);
		session.saveOrUpdate(login);
		
	}
	
	
}
