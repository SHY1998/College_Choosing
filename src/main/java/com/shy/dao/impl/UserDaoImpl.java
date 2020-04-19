package com.shy.dao.impl;

import com.shy.dao.UserDao;
import com.shy.eneity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;



    private Session getCurrentSession()
    {
        return this.sessionFactory.openSession();
    }


    @Override
    public int loginTest(String name, String password)
    {
        String sql = " from User where username =:name " ;
        Query q = this.getCurrentSession().createQuery(sql);
        q.setParameter("name",name);
        List<User> list = q.list();
        if (list.size()<1)
        {
            return 0;
        }
        else if (list.size()==1)
        {
            if (list.get(0).getPassword().trim().equals(password) )
            {

                return 2;
            }
            else
            {
                return 1;
            }
        }
        else
        {
            return 3;
        }
    }

    @Override
    public User getUserByName(String name)
    {
        String sql  =" from User where username =:name " ;
        Query  q =this.getCurrentSession().createQuery(sql);
        q.setParameter("name",name);
        User user = (User) q.list().get(0);
        return user;
    }
}
