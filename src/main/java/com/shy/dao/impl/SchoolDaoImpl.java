package com.shy.dao.impl;



import com.shy.dao.SchoolDao;
import com.shy.eneity.School_Information;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
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

        DetachedCriteria dc  = DetachedCriteria.forClass(School_Information.class);
        Criteria c =dc.getExecutableCriteria(getCurrentSession());
        List<School_Information> schools= c.list();
        System.out.println("dc.size================");
        System.out.println(schools.size());
        if(schools!= null&&schools.size()>0)
        {
            return schools;
        }
        return null;


    }

    @Override
    public List<School_Information> getSchoolByParams(String province,String type,String level, int start)
    {
        DetachedCriteria dc  = detachedCriteria();
        dc.createAlias("province","p");
        dc.add(Restrictions.like("p.province_name",province, MatchMode.ANYWHERE));
        dc.add(Restrictions.like("type_name",type, MatchMode.ANYWHERE));
        dc.add(Restrictions.like("level_name",level,MatchMode.ANYWHERE));
        Criteria c = dc.getExecutableCriteria(getCurrentSession());
        System.out.println("Criteria");
        System.out.println(type);
        System.out.println(c.list().size());
        System.out.println("Criteria");
        c.setFirstResult(start);
        c.setMaxResults(20);
        List<School_Information> schools = c.list();
        if(schools!= null&&schools.size()>0)
        {
            return schools;
        }
        return null;
    }
    @Override
    public List<School_Information> getSchool(String province,String type,String level, int start)
    {
        DetachedCriteria dc  = detachedCriteria();
        dc.createAlias("province","p");
        if (province!=null)
        {
            dc.add(Restrictions.like("p.province_name",province, MatchMode.ANYWHERE));

        }
        if (type!=null)
        {
            dc.add(Restrictions.like("type_name",type, MatchMode.ANYWHERE));

        }
        if (level!=null)
        {
            dc.add(Restrictions.like("level_name",level,MatchMode.ANYWHERE));
        }
        Criteria c =dc.getExecutableCriteria(getCurrentSession());
        List<School_Information> schools = c.list();
        if(schools!= null&&schools.size()>0)
        {
            return schools;
        }
        return null;

    }

    public Query ParamSQL(String school_name,String province)
    {
        if (province.equals(""))
        {
            province = null;
        }
        System.out.println("param=========");
        System.out.println(province);
        System.out.println("param=========");
        String hql;
        if (school_name == null && province == null)
        {
//            hql = "from School_Information";
            hql="";
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
    public DetachedCriteria detachedCriteria()
    {
        DetachedCriteria dc  = DetachedCriteria.forClass(School_Information.class);
        return dc;
    }

}
