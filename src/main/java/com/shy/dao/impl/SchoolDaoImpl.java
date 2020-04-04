package com.shy.dao.impl;



import com.shy.dao.SchoolDao;
import com.shy.eneity.School_Information;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SchoolDaoImpl implements SchoolDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession()
    {
        return this.sessionFactory.openSession();
    }

    /**
     * 返回全部学校列表
     * @return
     */
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

    /**
     * 分页显示
     * @param start  开始页
     * @param perPageUsers
     * @param province
     * @return
     */
    @Override
    public List<School_Information> getAccountByPage(int start, int perPageUsers,String province)
    {
//        String hql;
//        if (province ==null)
//        {
//            hql= "from School_Information";
//
//        }
//        else {
//            System.out.println("dao======================================");
//            System.out.println(province);
//            hql = "from School_Information s where s.province.province_name='"+province+"'";
//        }
//        Query q = this.getCurrentSession().createQuery(hql);
        Query q = this.getSchoolByParams(null,province);
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

    public Query getSchoolByParams(String school_name,String province)
    {
        String hql;
        if (school_name == null && province == null)
        {
            hql = "from School_Information";
        }
        else if(school_name == null )
        {
            hql = "from School_Information s where s.province.province_name='"+province+"'";
        }
        else if(province == null)
        {
            hql = "from School_Information s where s.school_name = '"+school_name+"'";
        }
        else
        {
            hql = "from School_Information s wheres.province.province_name='"+province+"' and s.school_name = '"+school_name+"'";
        }

        Query q = this.getCurrentSession().createQuery(hql);
        return q;
    }
}
