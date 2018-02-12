package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.AreaVO;

public class AreaDAO 
{
	public void insertArea(AreaVO areaVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Area Record");
			
			session.save(areaVO);
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
	public List searchArea(AreaVO areaVO)
	{
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Area Record");
			
			Query q = session.createQuery("from AreaVO");
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
	public List editArea(AreaVO areaVO)
	{
		try
		{
			List editls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from AreaVO where areaId='"+areaVO.getAreaId()+"'");
			editls = q.list();
			
			tr.commit();
			System.out.println("Done");
			return editls;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public void Update(AreaVO areaVO)
	{
		try
		{
			List updatels = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			session.saveOrUpdate(areaVO);
			
			tr.commit();
			System.out.println("Done");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
}
}
