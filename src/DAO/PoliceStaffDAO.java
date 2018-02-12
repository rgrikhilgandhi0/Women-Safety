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
import VO.PoliceStaffVO;

public class PoliceStaffDAO 
{
	public void insertPoliceStaff(PoliceStaffVO policeStaffVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting PoliceStaff Record");
			
			session.save(policeStaffVO);
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
	public List searchPoliceStaff(PoliceStaffVO policeStaffVO)
	{
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Police Staff Record");
			
			Query q = session.createQuery("from PoliceStaffVO");
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
	public List searchPoliceStaff1(LoginVO loginVO)
	{
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Police Staff Record");
			
			Query q = session.createQuery("from PoliceStaffVO where loginId ="+loginVO.getLoginId());
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
	public List editPoliceStaff(PoliceStaffVO policeStaffVO)
	{
		try
		{
			List editls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from PoliceStaffVO where policeStaffId='"+policeStaffVO.getPoliceStaffId()+"'");
			editls = q.list();
			
			tr.commit();
			System.out.println("Done dao  >>> "+editls.size());
			return editls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public void Update(PoliceStaffVO policeStaffVO)
	{
		try
		{
			List updatels = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Updating Record");
			
			session.saveOrUpdate(policeStaffVO);
			
			tr.commit();
			System.out.println("Done");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}