package com.myassignment.demo;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.myassignment.dao.LoginDao;
import com.myassignment.dao.WeaponsDao;
import com.myassignment.model.Login;
import com.myassignment.model.Weapons;




@Controller
public class HomeController {
	
	@Autowired
	WeaponsDao weaponsDao;
	@Autowired
	LoginDao loginDao;
	
	
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	
	
	@RequestMapping(value = "/saveRestaurant" )
	public String saveRestaurant(@RequestParam("uname")String id,@RequestParam("pass") String name,Model model) {
		
		if (loginDao.getUser(id) == false) {
			model.addAttribute("var1", "Invalid userName or Password");
			return "home";
		} else {
			Login login = loginDao.getDetails(id);
			String username = login.getUserID();
			String pass = login.getPassword();
			String role = login.getRole();

			if (id.equals(username) && name.equals(pass)) {
				if (role.equals("admin")) {
					model.addAttribute("Namah", login.getUserID());
					return "page2";
				} else {
					return "home";
				}
			} else {
				model.addAttribute("var1", "Password Invalid");
				return "home";
			}
		}
	}
	
	@RequestMapping(value="/addWeapon")
	public String addWeapon() {
		
		//weaponsDao.saveWeapons(weapons);
		return "addWeaponPage";
		
	}
	
	
	  @RequestMapping(value="/userAdd") 
	  public String userAdd() { 
		  return "userAdd";
	  }
	  
	
	  @RequestMapping(value="/saveUser") 
	  public String saveUser(@ModelAttribute Login login) {
	  
	  loginDao.saveLogin(login); 
	  return "page2";
	  
	  }
	 
	 
	
	@RequestMapping(value="/addWeapons")
	public String addWeapons(@ModelAttribute Weapons weapons) {
		
		weaponsDao.saveWeapons(weapons);
		return "addWeaponPage";
		
	}
	
	@RequestMapping(value="/userList")
	public String listUser(Model model) {
		
		ArrayList<Login> rest = loginDao.fetchLogin();
		model.addAttribute("ListD", rest);
		return "listUser";
		
	}
	
	@RequestMapping(value="/listWeapon")
	public String listWeapon(Model model) {
		
		ArrayList<Weapons> rest = weaponsDao.fetchWeapons();
		model.addAttribute("ListD", rest);
		return "listWeapon";
		
	}
	
	@RequestMapping(value="/getWeapon")
	public String weaponId() {
			
		/*
		 * Weapons weaponID = weaponsDao.getWeaponbyID(weaponId);
		 * model.addAttribute("ListD", weaponID);
		 */
		return "getWeapon";
		
	}
	
	@RequestMapping(value="/getWeapons")
	public String weaponsId(Model model,@RequestParam("weaponId") int weaponId) {
			
		
		  Weapons weaponID = weaponsDao.getWeaponbyID(weaponId);
		  model.addAttribute("ListD", weaponID);
		 
		return "getWeapon";
		
	}
	
	@RequestMapping(value="/getUserID")
	public String getUserID() {
		return "getUser";
	}
	
	@RequestMapping(value="/removeUser")
	public String removeWeapon(Model model,@RequestParam("userID") String userID) {
				
		loginDao.deleteById(userID);
		//model.addAttribute("ListD", listID);
		return "getUser";
	}
	
	@RequestMapping(value="/removeWeapon")
	public String removeWeapon(Model model,@RequestParam("weaponId") int weaponId) {
				
		weaponsDao.deleteById(weaponId);
		//model.addAttribute("ListD", listID);
		return "getWeapon";
	}
	
	@RequestMapping(value="/delete")
	public String mainPage() {
		return "page2";
	}
	
	@RequestMapping(value="/weapon")
	public String weaponUp() {
		return "updateWeapon";
	}
	
	@RequestMapping(value="/user")
	public String user() {
		return "updateUser";
	}
	
	@RequestMapping(value="/updateWeapon")
	public String updateWeapon(Model model,@RequestParam("weaponId") int weaponId,@RequestParam("weaponName") String weaponName,@RequestParam("branch") String branch,@RequestParam("type") String type) {
		Weapons weapon=weaponsDao.getListbyID(weaponId);
		//weaponsDao.updateWeapon(weaponId, weaponName, branch, type);
		model.addAttribute("ListD", weapon);
		return "updateWeapon";
		
	}
	
	@RequestMapping(value="/updateWeap")
	public String updateWeap(Model model,@RequestParam("weaponId") int weaponId,@RequestParam("weaponName") String weaponName,@RequestParam("branch") String branch,@RequestParam("type") String type) {
		Weapons weapon=weaponsDao.getListbyID(weaponId);
		weaponsDao.updateWeapon(weaponId, weaponName, branch, type);
		//model.addAttribute("ListD", weapon);
		return "updateWeapon";
		
	}
	
	@RequestMapping(value="/updateUser")
	public String updateUser(Model model,@RequestParam("userID") String userID,@RequestParam("password") String password,@RequestParam("role") String role) {
		Login login=loginDao.getDetails(userID);
		//weaponsDao.updateWeapon(weaponId, weaponName, branch, type);
		model.addAttribute("ListD", login);
		return "updateUser";
		
	}
	
	@RequestMapping(value="/updateUs")
	public String updateUs(Model model,@RequestParam("userID") String userID,@RequestParam("password") String password,@RequestParam("role") String role) {
		Login login=loginDao.getDetails(userID);
		loginDao.updateUser(userID, password, role);
		//model.addAttribute("ListD", weapon);
		return "updateUser";
		
	}
	
	
	
	
}
