package com.zoe.controller;


import com.alibaba.fastjson.JSONObject;
import com.zoe.pojo.Member;
import com.zoe.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    MemberService memberService;

    /**
     * web端 注册
     * 调用findMemberByName()方法查找member_name是否存在
     * 返回int型，当返回值大于0，说明用户已存在，注册失败
     * 否则，调用add()方法，注册成功
     * @param member
     * @param request
     * @return
     */
    @RequestMapping("regist")
    public String regist(Member member,HttpServletRequest request) {
        String member_name = request.getParameter("member_name");
        int num = memberService.findMemberByName(member_name);
        if (num > 0) {
            return "regfailed";
        } else {
            //合法用户
            memberService.add(member);
            HttpSession session = request.getSession();
            session.setAttribute("member_name", member_name);
            return "regsuccess";
        }
    }

    //用户名验证
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
            out.write("contiune");
        }else {
            //新增用户名在数据库存在，不可以使用
            out.write("exsit");
        }
    }

    /**
     * 注册返回json数据{"regFlag":"failed","regMsg":"zoe"}到Android端
     * failed表示用户存在，注册失败，
     * success则表示用户注册成功
     * @param member
     * @return
     */
    @ResponseBody
    @RequestMapping("regist2")
    public String regist2(Member member) {
        String regFlag=null;
        String regMsg=null;
        System.out.println("用户注册：" + member.getMember_name() + member.getMember_password());
        String memberName = member.getMember_name();
        String memberPassword = member.getMember_password();
        if (memberName != null && memberName.trim().equals("") || memberPassword != null && memberPassword.trim().equals("")) {
            regMsg= "用户名或密码为空";
            regFlag= "isnull";
        } else {
            int check = 0;
            try {
                check = memberService.findMemberByName(memberName);
                System.out.print("__________" + check);
            } catch (Exception e) {

            }
            if (check==0) {
                regMsg= memberName;
                memberService.add(member);
                System.out.println(member.toString());
                if (memberService.findMemberByNameAndPwd(memberName,memberPassword) > 0)
                    regFlag= "success";
            }
            else {
                regFlag= "failed";
                regMsg= memberName;
            }
        }
        Map<String,String> map= new HashMap<String,String >();
        map.put("regMsg",regMsg);
        map.put("regFlag",regFlag);
        System.out.println(JSONObject.toJSON(map).toString());
        return  JSONObject.toJSON(map).toString();
    }

    /**
     * 登录
     * 调用findMemberByNameAndPwd()方法查找member_name，memberPassword是否存在
     * 返回int型，当返回值大于0，说明用户已存在，登录成功，到首页
     * @param request
     * @param response
     * @return
     * @throws IOException
     */
    @RequestMapping("login")
    public String memberLogin2(Member member, HttpServletRequest request,HttpServletResponse response) throws IOException {
        String memberName = request.getParameter("memberName");
        String memberPassword = request.getParameter("memberPassword");
        int num = memberService.findMemberByNameAndPwd(memberName,memberPassword);
        if(num>0){
            //合法用户
            HttpSession session = request.getSession();
            session.setAttribute("memberName",memberName);
            session.setAttribute("memberPassword",memberPassword);
            session.setAttribute("login",member);
            //  return "settings";
            response.sendRedirect(request.getContextPath()+"/admin_house_list");
            return "loginsuccess";
        }else {
            return "loginfailed";
        }
    }

    @RequestMapping(value = "/settings/avatar")
    public ModelAndView updateAvatar(HttpSession session){

        session.getAttribute("memberName");
        ModelAndView mv=new ModelAndView("update_avatar");

        return mv;
    }

    @RequestMapping(value = "/settings/avatar/update")
    public ModelAndView updateAvatarDo(@RequestPart("avatar") MultipartFile avatarFile, HttpSession session){
       String memberName=(String ) session.getAttribute("memberName");

        String fileName=avatarFile.getOriginalFilename();
        String suffix=fileName.substring(fileName.lastIndexOf(".")+1, fileName.length());
        Long date=new Date().getTime();
        String newFileName=date+"-"+memberName+"."+suffix;
        String absolutePath=session.getServletContext().getRealPath("/img/avatar")+"/"+newFileName;
        String relativePath="/img/avatar"+"/"+newFileName;
        Member newMember=new Member();
        newMember.setMember_image(relativePath);
        newMember.setMember_name(memberName);
        File file=new File(absolutePath);
        System.out.println("------------------"+absolutePath);
        if (!file.exists()){
            try {
                avatarFile.transferTo(file);
                memberService.updateMember(newMember);
            }catch (Exception e){
                e.printStackTrace();
            }
        }

        Member member=memberService.getMemberByName(memberName);

        ModelAndView mv=new ModelAndView("update_avatar");
        mv.addObject("member",member);

        return mv;
    }

    @RequestMapping("admin_member_list")
    public String list(Model model) {
        List<Member> cs = memberService.list();
        model.addAttribute("cs1", cs);
        return "admin/listMember";
    }

    @ResponseBody
    @RequestMapping(produces="text/html;charset=UTF-8", value = "/getManyMembers")
    public String getManyMembers(Model model) {
        List<Member> cs = memberService.list();
        model.addAttribute("cs1", cs);
        System.out.println("test---------------"+JSONObject.toJSON(cs).toString());
        return JSONObject.toJSON(cs).toString();

    }

    @ResponseBody
    @RequestMapping(produces="text/html;charset=UTF-8", value = "/getOneMember")
    public String getOneMember(Model model,Member member) {

        String regFlag=null;
        List<Member> cs = memberService.list1(member.getMember_name() , member.getMember_password());
        if(cs!=null)
        {

           // model.addAttribute("cs", cs);
            System.out.println(JSONObject.toJSON(cs).toString());
            return JSONObject.toJSON(cs).toString();
        }
        else {
            Map<String,String> map= new HashMap<String,String >();
            regFlag="failed";
         //   map.put("regMsg","");
            map.put("regFlag",regFlag);
            System.out.println(JSONObject.toJSON(map).toString());
            return  JSONObject.toJSON(map).toString();
        }





    }

    @RequestMapping("personal")
    public String personal(Model model,HttpServletRequest request) throws IOException {
        String memberName = request.getParameter("memberName");
        String memberPassword = request.getParameter("memberPassword");
        int num = memberService.findMemberByNameAndPwd(memberName, memberPassword);
        if (num > 0) {
            //合法用户
            List<Member> members =memberService.list1(memberName, memberPassword);
//            System.out.println(members);
            model.addAttribute("members",members);
//            HttpSession session = request.getSession();
//            session.setAttribute("memberName", memberName);
//            session.setAttribute("memberPassword", memberPassword);
            //  return "settings";
           return "admin/personal-detail";
        } else {
            return "loginfailed";
        }
    }

//    @ResponseBody
//    @RequestMapping("login2")
//    public String memberLogin(HttpServletRequest request) {
//        String memberName = request.getParameter("memberName");
//        String memberPassword = request.getParameter("memberPassword");
//        int num = memberService.findMemberByNameAndPwd(memberName,memberPassword);
//        if(num>0){
//            //合法用户
//            HttpSession session = request.getSession();
//            session.setAttribute("memberName",memberName);
//            session.setAttribute("memberPassword",memberPassword);
////            Map<String,String> map= new HashMap<String,String >();
////            map.put("regMsg",regMsg);
////            map.put("regFlag",regFlag);
////            System.out.println(JSONObject.toJSON(map).toString());
////            return  JSONObject.toJSON(map).toString();
////            return JSONObject.toJSON(map).toString();
//        }else {
//            return "login2";
//        }
//    }



}
