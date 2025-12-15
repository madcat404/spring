package com.taerinsoft.product.web.kwangjinwintec.site.repository;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.annotation.Resource;
import java.util.List;

public abstract class CommonStockRepository<E> {
    @Resource(name = "stockSessionFactory")
    private SessionFactory sessionFactory;

    private Class clazz;

    public CommonStockRepository(Class clazz) {
        this.clazz = clazz;
    }

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    protected Criteria createDefaultCriteria() {
        return getCurrentSession().createCriteria(clazz);
    }

    public void save(E entity) {
        getCurrentSession().save(entity);
    }

    public void saveOrUpdate(E entity) {
        getCurrentSession().saveOrUpdate(entity);
    }

    public void update(E entity) {
        getCurrentSession().update(entity);
    }

    public void delete(E entity) {
        getCurrentSession().delete(entity);
    }

    @SuppressWarnings("unchecked")
    public List<E> list() {
        return createDefaultCriteria().list();
    }
}