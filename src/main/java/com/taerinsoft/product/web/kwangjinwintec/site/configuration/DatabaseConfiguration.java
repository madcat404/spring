package com.taerinsoft.product.web.kwangjinwintec.site.configuration;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.ImprovedNamingStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;

import java.util.Properties;

@Configuration
public class DatabaseConfiguration {
    private final Environment environment;

    @Autowired
    public DatabaseConfiguration(Environment environment) {
        this.environment = environment;
    }

    @Primary
    @Bean(name = "noticeDataSource")
    public DataSource dataSource() {
        return getDefaultJDBCDataSource(
                environment.getProperty("jdbc.url"),
                environment.getProperty("jdbc.username"),
                environment.getProperty("jdbc.password"),
                environment.getProperty("jdbc.driverClassName")
        );
//        DataSource dataSource = new DataSource();
//        dataSource.setDriverClassName(environment.getProperty("jdbc.driverClassName"));
//        dataSource.setUrl(environment.getProperty("jdbc.url"));
//        dataSource.setUsername(environment.getProperty("jdbc.username"));
//        dataSource.setPassword(environment.getProperty("jdbc.password"));
//
//        dataSource.setInitialSize(Integer.parseInt(environment.getProperty("jdbc.initialSize")));
//        dataSource.setMaxActive(Integer.parseInt(environment.getProperty("jdbc.maxActive")));
//        dataSource.setValidationQuery(environment.getProperty("jdbc.validationQuery"));
//
//        dataSource.setMaxIdle(Integer.parseInt(environment.getProperty("jdbc.maxIdle")));
//        dataSource.setMinIdle(Integer.parseInt(environment.getProperty("jdbc.minIdle")));
//        dataSource.setMaxWait(Integer.parseInt(environment.getProperty("jdbc.maxWait")));
//        dataSource.setTestOnBorrow(Boolean.parseBoolean(environment.getProperty("jdbc.testOnBorrow")));
//        dataSource.setTestOnReturn(Boolean.parseBoolean(environment.getProperty("jdbc.testOnReturn")));
//        dataSource.setTestWhileIdle(Boolean.parseBoolean(environment.getProperty("jdbc.testWhileIdle")));
//        dataSource.setTimeBetweenEvictionRunsMillis(Integer.parseInt(environment.getProperty("jdbc.timeBetweenEvictionRunsMillis")));
//        dataSource.setNumTestsPerEvictionRun(Integer.parseInt(environment.getProperty("jdbc.numTestsPerEvictionRun")));
//        dataSource.setMinEvictableIdleTimeMillis(Integer.parseInt(environment.getProperty("jdbc.minEvictableIdleTimeMillis")));
//        dataSource.setRemoveAbandonedTimeout(Integer.parseInt(environment.getProperty("jdbc.removeAbandonedTimeout")));
//        dataSource.setRemoveAbandoned(Boolean.parseBoolean(environment.getProperty("jdbc.removeAbandoned")));
//        dataSource.setLogAbandoned(Boolean.parseBoolean(environment.getProperty("jdbc.logAbandoned")));
//
//        return dataSource;
    }

    @Primary
    @Bean(name = "noticeSessionFactory")
    public LocalSessionFactoryBean sessionFactory(@Qualifier("noticeDataSource") DataSource noticeDataSource) {
        return getLocalSessionFactoryBean("com.taerinsoft.product.web.kwangjinwintec.site.entity.notice", noticeDataSource);
//        Properties properties = new Properties();
//        properties.setProperty("hibernate.dialect", environment.getProperty("hibernate.dialect"));
//        properties.setProperty("hibernate.show_sql", environment.getProperty("hibernate.show_sql"));
//        properties.setProperty("hibernate.format_sql", environment.getProperty("hibernate.format_sql"));
//
//        LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
//        localSessionFactoryBean.setDataSource(dataSource());
//        localSessionFactoryBean.setPackagesToScan("com.taerinsoft.product.web.kwangjinwintec.site.entity");
//
//        localSessionFactoryBean.setHibernateProperties(properties);
//        localSessionFactoryBean.setNamingStrategy(ImprovedNamingStrategy.INSTANCE);
//
//        return localSessionFactoryBean;
    }

    @Primary
    @Bean(name = "noticeTransactionManager")
    public HibernateTransactionManager transactionManager(@Qualifier("noticeSessionFactory") SessionFactory noticeSessionFactory) {
        return getHibernateTransactionManager(noticeSessionFactory);
//        HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
//        hibernateTransactionManager.setSessionFactory(sessionFactory().getObject());
//        return hibernateTransactionManager;
    }

    @Bean(name = "stockDataSource")
    public DataSource stockDataSource(){
        return getDefaultJDBCDataSource(
                environment.getProperty("stock.jdbc.url"),
                environment.getProperty("stock.jdbc.username"),
                environment.getProperty("stock.jdbc.password"),
                environment.getProperty("stock.jdbc.driverClassName")
        );
    }

    @Bean(name = "stockSessionFactory")
    public LocalSessionFactoryBean stockSessionFactory(@Qualifier("stockDataSource") DataSource stockDataSource){
        return getLocalSessionFactoryBean("com.taerinsoft.product.web.kwangjinwintec.site.entity.stock", stockDataSource);
//        Properties properties = new Properties();
//        properties.setProperty("hibernate.dialect", environment.getProperty("hibernate.dialect"));
//        properties.setProperty("hibernate.show_sql", environment.getProperty("hibernate.show_sql"));
//        properties.setProperty("hibernate.format_sql", environment.getProperty("hibernate.format_sql"));
//
//        LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
//        localSessionFactoryBean.setDataSource(dataSource());
//        localSessionFactoryBean.setPackagesToScan("com.taerinsoft.product.web.kwangjinwintec.site.entity.stock");
//
//        localSessionFactoryBean.setHibernateProperties(properties);
//        localSessionFactoryBean.setNamingStrategy(ImprovedNamingStrategy.INSTANCE);
//
//        return localSessionFactoryBean;
    }

    @Bean(name = "stockTransactionManager")
    public HibernateTransactionManager stockTransactionManager(@Qualifier("stockSessionFactory")SessionFactory stockSessionFactory){

//        HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
//        hibernateTransactionManager.setSessionFactory(stockSessionFactory);

        return getHibernateTransactionManager(stockSessionFactory);
//        return hibernateTransactionManager;
    }

    private DataSource getStockJDBCDataSource(String url, String userName, String password) {
        DataSource dataSource = new DataSource();
        dataSource.setDriverClassName(environment.getProperty("stock.jdbc.driverClassName"));
        dataSource.setUrl(url);
        dataSource.setUsername(userName);
        dataSource.setPassword(password);

        dataSource.setMaxIdle(Integer.parseInt(environment.getProperty("jdbc.maxIdle")));
        dataSource.setMinIdle(Integer.parseInt(environment.getProperty("jdbc.minIdle")));
        dataSource.setMaxWait(Integer.parseInt(environment.getProperty("jdbc.maxWait")));
        dataSource.setTestOnBorrow(Boolean.parseBoolean(environment.getProperty("jdbc.testOnBorrow")));
        dataSource.setTestOnReturn(Boolean.parseBoolean(environment.getProperty("jdbc.testOnReturn")));
        dataSource.setTestWhileIdle(Boolean.parseBoolean(environment.getProperty("jdbc.testWhileIdle")));
        dataSource.setTimeBetweenEvictionRunsMillis(Integer.parseInt(environment.getProperty("jdbc.timeBetweenEvictionRunsMillis")));
        dataSource.setNumTestsPerEvictionRun(Integer.parseInt(environment.getProperty("jdbc.numTestsPerEvictionRun")));
        dataSource.setMinEvictableIdleTimeMillis(Integer.parseInt(environment.getProperty("jdbc.minEvictableIdleTimeMillis")));
        dataSource.setRemoveAbandonedTimeout(Integer.parseInt(environment.getProperty("jdbc.removeAbandonedTimeout")));
        dataSource.setRemoveAbandoned(Boolean.parseBoolean(environment.getProperty("jdbc.removeAbandoned")));
        dataSource.setLogAbandoned(Boolean.parseBoolean(environment.getProperty("jdbc.logAbandoned")));

        return dataSource;
    }

    private DataSource getDefaultJDBCDataSource(String url, String userName, String password, String jdbcDriver){
        DataSource dataSource = new DataSource();
//        dataSource.setDriverClassName(environment.getProperty("jdbc.driverClassName"));
        dataSource.setUrl(url);
        dataSource.setUsername(userName);
        dataSource.setPassword(password);
        dataSource.setDriverClassName(jdbcDriver);

        dataSource.setInitialSize(Integer.parseInt(environment.getProperty("jdbc.initialSize")));
        dataSource.setMaxActive(Integer.parseInt(environment.getProperty("jdbc.maxActive")));
        dataSource.setValidationQuery(environment.getProperty("jdbc.validationQuery"));

        dataSource.setMaxIdle(Integer.parseInt(environment.getProperty("jdbc.maxIdle")));
        dataSource.setMinIdle(Integer.parseInt(environment.getProperty("jdbc.minIdle")));
        dataSource.setMaxWait(Integer.parseInt(environment.getProperty("jdbc.maxWait")));
        dataSource.setTestOnBorrow(Boolean.parseBoolean(environment.getProperty("jdbc.testOnBorrow")));
        dataSource.setTestOnReturn(Boolean.parseBoolean(environment.getProperty("jdbc.testOnReturn")));
        dataSource.setTestWhileIdle(Boolean.parseBoolean(environment.getProperty("jdbc.testWhileIdle")));
        dataSource.setTimeBetweenEvictionRunsMillis(Integer.parseInt(environment.getProperty("jdbc.timeBetweenEvictionRunsMillis")));
        dataSource.setNumTestsPerEvictionRun(Integer.parseInt(environment.getProperty("jdbc.numTestsPerEvictionRun")));
        dataSource.setMinEvictableIdleTimeMillis(Integer.parseInt(environment.getProperty("jdbc.minEvictableIdleTimeMillis")));
        dataSource.setRemoveAbandonedTimeout(Integer.parseInt(environment.getProperty("jdbc.removeAbandonedTimeout")));
        dataSource.setRemoveAbandoned(Boolean.parseBoolean(environment.getProperty("jdbc.removeAbandoned")));
        dataSource.setLogAbandoned(Boolean.parseBoolean(environment.getProperty("jdbc.logAbandoned")));
        return dataSource;
    }

    private LocalSessionFactoryBean getLocalSessionFactoryBean(String entityPath, DataSource dataSource) {
        Properties properties = new Properties();
        properties.setProperty("hibernate.dialect", environment.getProperty("hibernate.dialect"));
        properties.setProperty("hibernate.show_sql", environment.getProperty("hibernate.show_sql"));
        properties.setProperty("hibernate.format_sql", environment.getProperty("hibernate.format_sql"));

        LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
        localSessionFactoryBean.setDataSource(dataSource);
        localSessionFactoryBean.setPackagesToScan(entityPath);
        localSessionFactoryBean.setHibernateProperties(properties);
        localSessionFactoryBean.setNamingStrategy(ImprovedNamingStrategy.INSTANCE);
        return localSessionFactoryBean;
    }

    private HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory) {
        HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
        hibernateTransactionManager.setSessionFactory(sessionFactory);
        return hibernateTransactionManager;
    }

}