package com.igeek.RecruitWeb.boss.service;
import com.igeek.RecruitWeb.boss.dao.BossDao;
import com.igeek.RecruitWeb.boss.entity.Boss;

//企业用户的业务逻辑类
public class BossService {

    BossDao dao = new BossDao();
    //企业用户注册
    public boolean Register(Boss boss)
    {

        int i = dao.insert(boss);
        return i>0 ? true : false;
    }
    public Boss Login(String email, String password)
    {
       Boss boss = dao.SelectOne(email, password);
        System.out.println(boss);
       return boss;
    }
    //校验姓名是否存在
    public boolean validateName(String username){
        Long count = dao.SelectOne(username);
        return count>0 ? true : false;
    }

}
