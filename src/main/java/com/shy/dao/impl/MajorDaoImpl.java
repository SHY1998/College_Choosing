package com.shy.dao.impl;

import com.shy.dao.MajorDao;
import com.shy.eneity.Special_Level4;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MajorDaoImpl implements MajorDao {

    @Autowired
    private SessionFactory sessionFactory;



    private Session getCurrentSession()
    {
        return this.sessionFactory.openSession();
    }


    @Override
    public List<Special_Level4> getAll(String ben, String type)
    {
        DetachedCriteria dc  = DetachedCriteria.forClass(Special_Level4.class);
        dc.add(Restrictions.like("ben",ben, MatchMode.ANYWHERE));
        dc.add(Restrictions.like("major_categories",type, MatchMode.ANYWHERE));
        Criteria c =dc.getExecutableCriteria(getCurrentSession());
        List<Special_Level4> majors = c.list();
        System.out.println("getAll长度"+majors.size());
        if(majors!= null&&majors.size()>0)
        {
            return majors;
        }
        else
        {
            return null;
        }
    }

    @Override
    public List<Special_Level4> getMajorByParam(int page, String ben, String type)
    {
        DetachedCriteria dc  = DetachedCriteria.forClass(Special_Level4.class);
        dc.add(Restrictions.like("ben",ben, MatchMode.ANYWHERE));
        dc.add(Restrictions.like("major_categories",type, MatchMode.ANYWHERE));
        Criteria c =dc.getExecutableCriteria(getCurrentSession());
        System.out.println("page" +page);
        c.setFirstResult(page);
        c.setMaxResults(20);
        List<Special_Level4> majors = c.list();
        System.out.println("param"+majors.size());
        if(majors!= null&&majors.size()>0)
        {
            return majors;
        }
        else
        {
            return null;
        }
    }
}
