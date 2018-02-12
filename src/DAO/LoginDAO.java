package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.AreaVO;
import VO.LoginVO;

public class LoginDAO 
{
	public void insertLogin(LoginVO loginVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Login Record");
			
			session.save(loginVO);
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public List authentication(LoginVO loginVO)
	{
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Login Record");
			
			Query q = session.createQuery("from LoginVO where emailId='"+loginVO.getEmailId()+"' and password='"+loginVO.getPassword()+"'");
			ls = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return ls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public List toAdmin()
	{
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Login Record");
			
			Query q = session.createQuery("from LoginVO where userType='Admin'");
			ls = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return ls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}

}
