package com.zoe.controller;

import com.zoe.pojo.Member;
import com.zoe.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class TestController {

    @Autowired
    MemberService memberService;

    @RequestMapping("/index")
    public String index(ModelMap map) {
        List<Member> memberList = memberService.list();
        map.addAttribute("memberList",memberList);
        return "showAll";
    }

    @RequestMapping("/addMember")
    public String addMember(Member member, MultipartFile file, HttpServletRequest request) throws IOException {
        System.out.println("提交的用户："+member);
        String filePath = request.getSession().getServletContext().getRealPath("/upload");; //定义图片上传后的路径
        String newFileName = fileOperate(file,filePath);
        member.setMember_image(newFileName);
        System.out.println("最后的member:"+member);
        memberService.insert(member);
        return "redirect:/index";
    }


    /**
     * 跳转到修改用户信息页面
     * @param member_ID
     * @param map
     * @return
     */
    @RequestMapping("/toUpdateMember")
    public String toUpdateMemberPage(int member_ID,ModelMap map) {
        System.out.println("member_ID:"+member_ID);
        Member member = memberService.getMemberById(member_ID);
        System.out.println("修改后获取的member："+member);
        map.addAttribute("member",member);
        return "updateMember";
    }

    @RequestMapping("/updateMember")
    public String updateMember(Member member,MultipartFile file,HttpServletRequest request) throws Exception{
        System.out.println("修改提交的用户："+member);
        String filePath = request.getSession().getServletContext().getRealPath("/upload");; //定义图片上传后的路径
        String newFileName = fileOperate(file,filePath);
        member.setMember_image(newFileName);
        System.out.println("修改最后的member:"+member);
        memberService.update(member);
        return "redirect:/index";
    }

    @RequestMapping("/deleteMember")
    public String deleteMember(int member_ID) {
        System.out.println("member_ID"+member_ID);
        memberService.delete(member_ID);
        return "redirect:/index";
    }

    /**
     * 封装操作文件方法， 添加用户 和修改用户都会用到
     * @param file
     * @param filePath
     * @return
     */
    private String fileOperate(MultipartFile file,String filePath) {
        String originalFileName = file.getOriginalFilename();//获取原始图片的扩展名
        System.out.println("图片原始名称："+originalFileName);
        String newFileName = UUID.randomUUID()+originalFileName;  //新的文件名称
        System.out.println("新的文件名称："+newFileName);
        File targetFile = new File(filePath,newFileName); //创建新文件
        try {
            file.transferTo(targetFile); //把本地文件上传到文件位置 , transferTo()是springmvc封装的方法，用于图片上传时，把内存中图片写入磁盘
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return newFileName;
    }


}
