package com.shy.dao.impl;

import com.shy.dao.TestDao;
import com.shy.eneity.School_Information;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.query.Query;

import java.util.List;

@Repository
public class TestDaoImpl implements TestDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession()
    {
        return this.sessionFactory.openSession();
    }

    @Override
    public List<School_Information> searchById(Integer id)
    {
        String hql = " FROM School_Information where school_id = (:school_id)";
        Query q = this.getCurrentSession().createQuery(hql);
        q.setParameter("school_id",id);
        List<School_Information> school = q.list();
        if (school!=null&&school.size()>0)
        {
            return school;
        }
        return null;
    }
}
