package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;




import VO.ComplaintVO;
import VO.FeedbackVO;
import VO.UserFeedbackVO;

public class UserFeedbackDAO {

	public void insertFeedback(UserFeedbackVO userFeedbackVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Inserting Complaint Record");
			
			session.save(userFeedbackVO);
			tr.commit();
			System.out.println("Done");
			//session.flush();
		//	session.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
}
	public List searchFeedback(UserFeedbackVO userFeedbackVO)
	{
		List lsFeedback = new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =  sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			System.out.println("Searching Feedback Record");
			
			Query q = session.createQuery("from UserFeedbackVO");
			lsFeedback = q.list();
			tr.commit();
			System.out.println("Done");
			session.flush();
			session.close();
			return lsFeedback;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
}
}
