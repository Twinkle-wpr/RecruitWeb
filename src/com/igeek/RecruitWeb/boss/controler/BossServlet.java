package com.igeek.RecruitWeb.boss.controler;
import com.igeek.RecruitWeb.boss.entity.Boss;
import com.igeek.RecruitWeb.boss.service.BossService;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@WebServlet(name = "BossServlet",urlPatterns = "/Boss")
public class BossServlet extends BaseServlet {


    /*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        if(method.equals("regist")){
            regist(request, response);
        }else if(method.equals("active")){
            active(request, response);
        }else if(method.equals("validateName")){
            validateName(request, response);
        }
    }*/
    private BossService service = new BossService();

    //注册
    public void Register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(222);
        Map<String, String[]> companyUser = request.getParameterMap();
        // System.out.println(companyUser);
        Boss boss = new Boss();

        try {
            /**
             * 自定义转换器：将生日String转换成Date类型
             * 第一个参数：Converter类型的转换器，定义转换的规则
             * 第二个参数：转换的类型
             */
            ConvertUtils.register(new Converter() {
                @Override
                public Object convert(Class cla, Object value) {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = null;
                    try {
                        date = sdf.parse(value.toString());
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                    return date;
                }
            }, Date.class);
            //给指定的对象传递值  第一个参数：给哪个实体bean赋值  第二个参数：获取请求参数中key/value组成的map集合
            BeanUtils.populate(boss, companyUser);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        //调用注册方法
        boolean flag = service.Register(boss);
        if (flag) {
            //注册成功

            //跳转到注册成功界面
            response.sendRedirect(request.getContextPath() + "/boss/Login.jsp");
        } else {
            //注册失败，跳转到注册失败界面
            response.sendRedirect(request.getContextPath() + "/boss/RegisterFail.jsp");
        }

    }

    public void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        //获得请求参数
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println("email:"+email+"password:"+password);
        Boss boss = service.Login(email, password);
        if (boss != null) {
            //查询到记录，登陆成功
            //跳转到boss主页
            //将登录用户信息存储到会话中
            HttpSession session = request.getSession();
            session.setAttribute("boss", boss);
            response.sendRedirect(request.getContextPath() + "/boss/HomeBoss.jsp");
        }
        else
        {
            //未查询到记录，登陆失败
            //跳转到登录页
            request.setAttribute("msg", "当前邮箱和密码不匹配");
            request.getRequestDispatcher(request.getContextPath() + "/boss/Login.jsp").forward(request, response);
        }


    }


}

