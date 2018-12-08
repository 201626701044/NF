package com.zoe.controller;


import com.zoe.pojo.Member;
import com.zoe.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    MemberService memberService;

    @RequestMapping("regist")
    public String regist(Member member,HttpServletRequest request) {
        String memberName = request.getParameter("memberName");
        int num = memberService.findMemberByName(memberName);
        if (num > 0) {
            return "failed";
        } else {
            //合法用户
            memberService.add(member);
            HttpSession session = request.getSession();
            session.setAttribute("memberName", memberName);
            return "success";
        }
    }
    @RequestMapping("login")
    public String memberLogin(HttpServletRequest request) {
        String memberName = request.getParameter("memberName");
        String memberPassword = request.getParameter("memberPassword");
        int num = memberService.findMemberByNameAndPwd(memberName,memberPassword);
        if(num>0){
            //合法用户
            HttpSession session = request.getSession();
            session.setAttribute("memberName",memberName);
            session.setAttribute("memberPassword",memberPassword);
            return "index";
        }else {
            return "login1";
        }
    }

    @RequestMapping("memberNameValidate")
    public void memberNameValidate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //1.读取浏览器发送过来的新增用户名
        String memberName=request.getParameter("memberName");
        //2.调用Service层进行验证
        int num =memberService.validateMemberName(memberName);
        //3.将判断结果推送到浏览器上
        response.setCharacterEncoding("utf-8");
        PrintWriter out =response.getWriter();
        if(num==0){
            //新增用户名在数据库不存在，可以使用
            out.write("用户名可以使用");
        }else {
            //新增用户名在数据库存在，不可以使用
            out.write("用户名已经存在");
        }
    }
}
