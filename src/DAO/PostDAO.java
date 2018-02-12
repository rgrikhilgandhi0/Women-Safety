package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import VO.AreaVO;
import VO.PostVO;

public class PostDAO {
	public void insertPost(PostVO postVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Post Record");
			
			session.save(postVO);
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
	public List searchPost(PostVO postVO)
	{
		List ls = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Post Record");
			
			Query q = session.createQuery("from PostVO");
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
	public List editPost(PostVO postVO)
	{
		try
		{
			List editls = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			Query q = session.createQuery("from PostVO where postId='"+postVO.getPostId()+"'");
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
	public void Update(PostVO postVO)
	{
		try
		{
			List updatels = new ArrayList();
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Editing Record");
			
			session.saveOrUpdate(postVO);
			
			tr.commit();
			System.out.println("Done");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
}
}
