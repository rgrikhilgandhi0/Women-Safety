package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;





import VO.AreaVO;
import VO.LocationVO;

public class LocationDAO {
	public void insertLocation(LocationVO locationVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Area Record");
			
			session.save(locationVO);
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

	public List searchLocation(LocationVO locationVO)
	{
		List lsLocation = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			//Transaction tr = session.beginTransaction();
			System.out.println("Searching Location Record");
			
			Query q = session.createQuery("from LocationVO");
			lsLocation = q.list();
			//tr.commit();
			System.out.println("Done");
			//session.flush();
			//session.close();
			return lsLocation;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
	}
	
	public List editLocation(LocationVO locationVO)
	{
		try
		{
			List editls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from LocationVO where locationId='"+locationVO.getLocationId()+"'");
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
	
	public void Update(LocationVO locationVO)
	{
		try
		{
			List updatels = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			session.saveOrUpdate(locationVO);
			
			tr.commit();
			System.out.println("Done");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
}
	
}
