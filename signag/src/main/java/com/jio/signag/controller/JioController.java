package com.jio.signag.controller;

import java.io.BufferedReader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jio.signag.bean.Cryptouser;
import com.jio.signag.bean.Jio;
import com.jio.signag.config.SecurityConfig;
import com.jio.signag.service.CryptouserService;
import com.jio.signag.service.JioService;




@Controller
public class JioController {

	@Autowired
	private JioService service;
	@Autowired
	private CryptouserService serv;
	@Autowired
	private BCryptPasswordEncoder bCrypt;

	ArrayList<Jio> arr=null;
	
	
	
	@RequestMapping("/home")
	 public ModelAndView showEntrypage() {
		 return new ModelAndView("homePage");
		 
	 }
	@GetMapping(value="/register")
	public ModelAndView showUserRegistry(Model model) {
		     Cryptouser user=new Cryptouser();
		     ModelAndView mv=new  ModelAndView("registerUserPage");
		     mv.addObject("userRecord",user);
			return mv;
		}
	@RequestMapping(value="/register")
	public ModelAndView saveuser(@ModelAttribute("registerUserPage") Cryptouser user) {
		String encodePassword=bCrypt.encode(user.getPassword());
		Cryptouser newUser= new Cryptouser();
		newUser.setUsername(user.getUsername());
		newUser.setPassword(encodePassword);
		serv.save(newUser); 

		return new ModelAndView("loginPage");
	}
		@RequestMapping(value="/loginpage")
		public ModelAndView showLoginPage() {
			 return new ModelAndView("loginPage");
		}
		@RequestMapping(value="/loginerror")
		public ModelAndView showErrorPage() {
			 return new ModelAndView("loginErrorPage");
		}
		@RequestMapping("/forget")
		public ModelAndView forgetpage()
		{
			ModelAndView mv=new ModelAndView("forgetPage");
			return mv;
		}
		@RequestMapping("/forgot")
		public ModelAndView forgotpage(@RequestParam("uname") String id)
		{
			ModelAndView mv=null;
			int k=0;
		 for(Cryptouser cru:serv.findId(id))
		 {
			 if(cru.getUsername().equals(id))
			 {
				 mv=new ModelAndView("changePage");
				 k=1;
				 break;
			 }
		 }
		 if(k==0)
		 {
			 mv=new ModelAndView("usernotfoundPage");
		 }
		 mv.addObject("id",id);
		 return mv;
		}
		@RequestMapping("/change")
		public ModelAndView changepage(@RequestParam("uname") String id,@RequestParam("pass") String pass)
		{
			String encodePassword=bCrypt.encode(pass);
			Cryptouser newUser= new Cryptouser();
			newUser.setUsername(id);
			newUser.setPassword(encodePassword);
			serv.save(newUser); 

			return new ModelAndView("redirect:/home");

		}
	@RequestMapping("/upload")
	public ModelAndView getSerialId(@RequestParam("serialId") String id,@RequestParam("file") String file) {
		ModelAndView mv=null;
		arr=new ArrayList<Jio>();
		HashSet<String> hs=new HashSet<String>();
		if(id.contains(","))
		{
			String s[]=id.split(",");
			for(String f:s)
			{
				for(Jio j:service.findAll())
				{
				if(f.equals(j.getSerialNo()))
				{
					Jio jio=service.findById(f);
					String k="https://application/update/"+jio.getType();
					jio.setPath(k);
					jio.setStatus("true");
					service.save(jio);
					arr.add(jio);
					hs.add(jio.getType());
					System.out.println(jio);
				}
				else
				{
					System.out.println("false");
					continue;
				}
				}
			}
		}
		else if(id!="")
		{
			for(Jio j:service.findAll())
			{
			if(id.equals(j.getSerialNo()))
			{
			Jio jio=service.findById(id);
			String k="https://application/update/"+jio.getType();
			jio.setPath(k);
			jio.setStatus("true");
			service.save(jio);
			arr.add(jio);
			hs.add(jio.getType());
			System.out.println(jio);
			}
			else
			{
				System.out.println("false");
			}
			}
		}
		else if(file.contains(".csv"))
		{
			ArrayList<String> ar=new ArrayList<String>();
			try {
			String f="D:\\"+file;
			Scanner sc = new Scanner(new FileInputStream(f));
	        sc.useDelimiter(",");
					while(sc.hasNext())
					{
						String svc=String.valueOf(sc.next()).trim();
						ar.add(svc);
					}
					System.out.println(ar);
			 
			for(String s:ar)
			{
				for(Jio j:service.findAll())
				{
				if(s.equals(j.getSerialNo()))
				{
			Jio jio=service.findById(s);
			String k="https://application/update/"+jio.getType();
			jio.setPath(k);
			jio.setStatus("true");
			service.save(jio);
			arr.add(jio);
			hs.add(jio.getType());
			System.out.println(jio);
			}
			}
			}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(file=="" && id=="")
		{
			ModelAndView mvn=new ModelAndView("redirect:/home");
			mvn=new ModelAndView("filerequiredPage");
			//mvn.addObject("wrong", "File or Serial Number Required");
			return mvn;
		}
		else
		{
			String f="D:\\"+file;
			
			try {
			FileInputStream fis = new FileInputStream(f);
			XSSFWorkbook wb=new XSSFWorkbook(fis);
			XSSFSheet sheet=wb.getSheet("Update_Sheet");
			int rowCount=sheet.getLastRowNum()-sheet.getFirstRowNum();
			for(int j=1;j<=rowCount;j++)
			{
				int  n=(int)sheet.getRow(j).getCell(0).getNumericCellValue();
				String num=String.valueOf(n);
				
				for(Jio ji:service.findAll())
				{
				if(num.equals(ji.getSerialNo()))
				{
				Jio jio=service.findById(num);
				String k="https://application/update/"+jio.getType();
				jio.setPath(k);
				jio.setStatus("true");
				service.save(jio);
				arr.add(jio);
				hs.add(jio.getType());
				System.out.println(jio);
				}
			}
			}
			}
			 
		 catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		 mv=new ModelAndView("uplPage");
	
		
		 mv.addObject("set",hs);
		 return mv;	 
		
	 }
	@RequestMapping("/next")
	public ModelAndView getnextPage(@RequestParam("android") String android,@RequestParam("windows") String windows) {
		ModelAndView mv=null;
		mv=new ModelAndView("updatedPage");
		
		mv.addObject("list",arr);
		//ArrayList<String> av=new ArrayList<String>();
		
		if(android=="")
		{
			
		mv.addObject("li",windows);
		}
		else
		{
			mv.addObject("li",android);
		}
		mv.addObject("view", new Jio());
		return mv;		
	}
	
	/*@RequestMapping("/update")
	public ModelAndView showUpdatePage(@RequestParam("myfile") String file) throws InterruptedException 
	{
		
		return mv;
	}*/
	@RequestMapping("/next/{id}")
	public ModelAndView showDetailsPage(@RequestParam("id") String id)  
	{
		ModelAndView mv=new ModelAndView("detailPage");
		Jio jio=service.findById(id);
		mv.addObject("list",arr);
		mv.addObject("jk",jio);
		 return mv;
		 
	}
	@RequestMapping("/userupdate")
	public ModelAndView showUserPage()  
	{
		 return new ModelAndView("updPage");
	}
	@RequestMapping("/user")
	public ModelAndView showUserupdatePage(@RequestParam("serialId") String id,@RequestParam("type") String type,@RequestParam("key") String key)  
	{
		ModelAndView mv=null;
		int fl=0;
		for(Jio j:service.findAll())
		{
		if(id.equals(j.getSerialNo()) && type.equals(j.getType()) && key.equals("ril"))
		{
			System.out.println("va");
			Jio jio=service.findById(id);
			String update=jio.getStatus();
			if(update.equals("true"))
			{
				mv=new ModelAndView("updavlPage");
				mv.addObject("jio", jio);
				mv.addObject("u","Update is available");
				fl=1;
				
			}
			else
			{
				mv=new ModelAndView("updavlPage");
				mv.addObject("jio", jio);
				mv.addObject("u","Updated is not available");
				fl=1;
			}
		}
		}
		if(fl==1)
		{
			System.out.println("");
		}
		else
		{
			mv=new ModelAndView("serialnotPage");
			mv.addObject("no", "Serial Number Not Found");
		}
		
		 return mv;
	}


}
	


