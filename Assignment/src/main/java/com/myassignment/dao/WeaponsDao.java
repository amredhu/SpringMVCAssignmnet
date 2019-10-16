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
public class WeaponsDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public void saveLogin(Login login) {
		
		Session session =sessionFactory.getCurrentSession();
		session.save(login);
		
	}
	
	@Transactional
	public void saveWeapons(Weapons weapons) {
		
		Session session =sessionFactory.getCurrentSession();
		session.save(weapons);
		
	}
	
	@Transactional
	public ArrayList<Weapons> fetchWeapons(){
		
		Session session= sessionFactory.getCurrentSession();
		//session.g
		ArrayList<Weapons> weapons = (ArrayList<Weapons>)session.createQuery("from Weapons").list();
		return weapons;
		
	}
	
	@Transactional
	public Weapons getListbyID(int weaponID) {
		Session session = sessionFactory.getCurrentSession();
		Weapons weapon = (Weapons)session.get(Weapons.class,weaponID);
		return weapon;
	}
	
	@Transactional
	public Weapons getWeaponbyID(int weaponId) {
		Session session = sessionFactory.getCurrentSession();
		Weapons weapon = (Weapons)session.get(Weapons.class,weaponId);
		return weapon;
	}
	
	@Transactional
	public void deleteById(int weaponId) {
		Session session = sessionFactory.getCurrentSession();
		Weapons weapon = (Weapons)session.get(Weapons.class, weaponId);
		session.delete(weapon);
	}
	
	@Transactional
	public void updateWeapon(int weaponId, String weaponName, String branch, String type) {
		Session session = sessionFactory.getCurrentSession();
		Weapons weapons = (Weapons)session.get(Weapons.class, weaponId);
		
		weapons.setBranch(branch);
		weapons.setType(type);
		weapons.setWeaponName(weaponName);
		session.saveOrUpdate(weapons);
		/*
		 * weapons.setBranch(branch); weapons.setType(type);
		 * weapons.setWeaponName(weaponName); session.update(weapons);
		 */
	}

	

}
