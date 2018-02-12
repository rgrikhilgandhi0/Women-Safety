package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.StaffComplaintVO;
import VO.AreaVO;

public class StaffComplaintDAO 
{
	public void insertStaffComplaint(StaffComplaintVO staffComplaintVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Staff Complaint Record");
			
			session.save(staffComplaintVO);
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
	public List searchStaffComplaint(StaffComplaintVO staffComplaintVO)
	{
		List searchls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Area Record");
			
			Query q = session.createQuery("from StaffComplaintVO where reply is null");
			searchls = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return searchls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public List replyStaffComplaint(StaffComplaintVO staffComplaintVO)
	{
		try
		{
			List replyls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from StaffComplaintVO where staffComplaintId='"+staffComplaintVO.getStaffComplaintId()+"'");
			replyls = q.list();
			
			tr.commit();
			System.out.println("Done");
			return replyls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public void updateStaffComplaint(StaffComplaintVO staffComplaintVO)
	{
		try
		{
			List updatels = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			session.saveOrUpdate(staffComplaintVO);
			
			tr.commit();
			System.out.println("Done");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public void insertReply(StaffComplaintVO staffComplaintVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Reply Staff Complaint Record");
			
			session.save(staffComplaintVO);
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
	public List searchSentStaffComplaint(StaffComplaintVO staffComplaintVO)
	{
		List sentls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching searchSentStaffComplaint Record");
			
			Query q = session.createQuery("from StaffComplaintVO where reply is not null");
			sentls = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return sentls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
}