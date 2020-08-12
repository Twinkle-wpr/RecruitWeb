package com.igeek.RecruitWeb.boss.dao;

import com.igeek.RecruitWeb.boss.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * 基础的增删改查  CRUD
 * @param <T>
 */
public class BaseDao<T> {

    //通过DbUtils工具类，获得核心操作类，简化JDBC操作
    private QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    //增、删、改
    public int update(String sql , Object... params){
        int i = 0;
        try {
            i = runner.update(sql, params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }


    //查询单个对象
    public T getBean(Class<T> type , String sql , Object... params){
        T t = null;
        try {
            t = runner.query(sql, new BeanHandler<>(type), params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return t;
    }


    //查询多个对象
    public List<T> getBeanList(Class<T> type , String sql , Object... params){
        List<T> list = null;
        try {
            list = runner.query(sql, new BeanListHandler<>(type), params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


    //查询单个字段
    public Object getSingleValue(String sql , Object... params){
        Object value = null;
        try {
            value = runner.query(sql , new ScalarHandler() , params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return value;
    }
}
