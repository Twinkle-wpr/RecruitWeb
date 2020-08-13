package com.igeek.RecruitWeb.boss.dao;

import com.igeek.RecruitWeb.boss.entity.Boss;

//企业用户数据库操作类

public class BossDao extends BaseDao<Boss> {
    //插入
    public int insert(Boss boss)
    {
        String sql = "insert into companyUser values(?,?,?,?,?,?,?)";
        int  i = this.update(sql,boss.getId(),boss.getUsername(),boss.getEmail(),boss.getPassword(),
                                boss.getPhone(),boss.getDate(),boss.getCompanyName());

        return i;
    }
    public Long SelectOne(String username)
    {
        //通过用户名查询是否存在该用户
        String sql = "select count(*) from companyuser where username = ?";
        Long o = (Long)this.getSingleValue(sql, username);
        return o;
    }
}
