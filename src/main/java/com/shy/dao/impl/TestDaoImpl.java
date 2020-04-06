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


    //按id查询学校
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

    @Override
    public List<School_Information> getSchool()
    {
        Query query = this.getCurrentSession().createQuery("from School_Information");
        List<School_Information> schools = query.list();
        if(schools!= null&&schools.size()>0)
        {
            return schools;
        }
        return null;
    }


    @Override
    public List<School_Information> getAccountByPage(int start, int perPageUsers,String province)
    {
        String hql;
        if (province ==null)
        {
            hql= "from School_Information";

        }
        else {
            System.out.println("dao======================================");
            System.out.println(province);
             hql = "from School_Information s where s.province.province_name='"+province+"'";
        }
        Query q = this.getCurrentSession().createQuery(hql);
        q.setFirstResult(start);
        q.setMaxResults(perPageUsers);
        List<School_Information> schools = q.list();
        if(schools!= null&&schools.size()>0)
        {
            return schools;
        }
        return null;
    }

    @Override
    public List<School_Information> getSchoolByProvince(String province)
    {
        String hql = "select s from School_Information  s where s.province.province_name = (:province_name)";
        Query q = this.getCurrentSession().createQuery(hql);

        List<School_Information> schools = q.list();
        if(schools!= null&&schools.size()>0)
        {
            return schools;
        }
        return null;
    }


}
