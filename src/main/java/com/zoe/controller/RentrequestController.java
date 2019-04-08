package com.zoe.controller;


import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zoe.pojo.House;
import com.zoe.pojo.Rentrequest;
import com.zoe.service.HouseService;
import com.zoe.service.RentrequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("/request")
public class RentrequestController {

    @Autowired
    RentrequestService rentrequestService;

    @RequestMapping("admin_rentrequest_list")
    public String list(@RequestParam(value="page",defaultValue = "1") Integer page, Model model) {
        PageHelper.startPage(page,3);
        List<Rentrequest> cs = rentrequestService.list();
        for(Rentrequest rentrequest :cs){
            System.out.println("-----"+rentrequest);
        }
        PageInfo<Rentrequest> pageInfo = new PageInfo<Rentrequest>(cs);

        model.addAttribute("cs", cs);
        model.addAttribute("pageInfo",pageInfo);
        return "admin/requestPage";
    }

    //发布请求
    @RequestMapping("addrequest")
    public String add(Rentrequest rentrequest, MultipartFile file, HttpServletRequest request) throws IOException {

        System.out.println("提交的请求："+rentrequest);
        //定义图片上传后的路径
        String filePath = request.getSession().getServletContext().getRealPath("/upload");
        String newFileName = fileOperate(file,filePath);
        rentrequest.setImage(newFileName);
        System.out.println("最后的rentrequest"+rentrequest);
        rentrequestService.add(rentrequest);
        return "redirect:/request/admin_rentrequest_list";
    }

    /**
     * 封装操作文件方法， 添加用户 和修改用户都会用到
     * @param file
     * @param filePath
     * @return
     */
    private String fileOperate(MultipartFile file, String filePath) {
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
