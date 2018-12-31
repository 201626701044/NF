package com.zoe.controller;

import com.zoe.pojo.Member;
import com.zoe.service.MemberService;
import com.zoe.service.impl.MemberServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.sql.SQLException;

@Controller
public class UploadFile {
    @RequestMapping(value = "/uploadfile")
public String uploadFile(@RequestParam("userlogo")MultipartFile multipartFile, HttpSession session, HttpServletRequest request) {

    System.out.println("表单字段名称：" + multipartFile.getName());
    System.out.println("上传的文件名称：" + multipartFile.getOriginalFilename());
    System.out.println("上传的文件类型：" + multipartFile.getContentType());
    System.out.println("上传的文件大小：" + multipartFile.getSize() + " byte");
    System.out.println("上传的文件是否为空：" + (multipartFile.isEmpty() ? "是" : "否"));

    // 只允许上传.jpg格式的图片文件，真正的文件类型需要通过ContentType来进行判断
//    if (!multipartFile.getContentType().equals("image/jpeg")) {
//        session.setAttribute("errMsg", "只能上传.jpg格式的图片文件");
//        System.err.println("文件上传失败\n");
//
//        return "error";
//    }

    // 得到uploadFile的绝对路径
    String realPath = session.getServletContext().getRealPath("uploadFile");
    // 将文件放在这个路径下
    File file = new File(realPath, multipartFile.getOriginalFilename());

    System.out.println(file);
    // 创建uploadFile目录
    file.getParentFile().mkdir();

    try {
        // 将上传的文件写入到本地中
        //参数通过MultipartFile file获取表单图片对象
        multipartFile.transferTo(file);
        //通过 file.getOriginalFilename()  获取图片名
        session.setAttribute("imgPath", multipartFile.getOriginalFilename());
        System.out.println( multipartFile.getOriginalFilename());

        String image= multipartFile.getOriginalFilename();
        System.out.println("文件上传完成\n");

////        HttpSession session1=request.getSession();
//        Member member=( Member) session.getAttribute("loginer");
////设置新的文件名
//        member.setMember_image(image);
//        MemberService memberService=new MemberServiceImpl();
//        boolean flag=false;
//        flag=memberService.updateMember(member);
        // return "upload";
        return "pushhouse";
    } catch (Exception e) {
        e.printStackTrace();
        System.err.println("文件上传失败\n");
        session.setAttribute("errMsg", e.toString());

        return "error";
    }
}


}