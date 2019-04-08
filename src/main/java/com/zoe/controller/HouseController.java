package com.zoe.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zoe.pojo.House;
import com.zoe.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.*;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class HouseController {

    @Autowired
    HouseService houseService;

    //列出所有房源
    @RequestMapping("admin_house_list")
    public String list(@RequestParam(value="page",defaultValue = "1") Integer page, Model model) {
        PageHelper.startPage(page,3);
        List<House> cs = houseService.find();
        for(House house :cs){
            System.out.println("-----"+house);
        }
        PageInfo<House> pageInfo = new PageInfo<House>(cs);

        model.addAttribute("cs", cs);
        model.addAttribute("pageInfo",pageInfo);
        return "admin/homePage";

    }

    @RequestMapping("queryByArea")
    public String queryByArea(@RequestParam("area") String area,Model model){
        model.addAttribute("area",area);
        List<House> list = houseService.queryByArea(area);
        model.addAttribute("cs",list);
        return "admin/homePage";
    }

    @RequestMapping("addHouse")
    public String addHouse(House house, MultipartFile file, HttpServletRequest request) throws IOException {

        System.out.println("提交的房源："+house);
        //定义图片上传后的路径
        String filePath = request.getSession().getServletContext().getRealPath("/upload");
        String newFileName = fileOperate(file,filePath);
        house.setImage(newFileName);
        System.out.println("最后的house"+house);
        houseService.insert(house);
        return "redirect:/admin_house_list";
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
