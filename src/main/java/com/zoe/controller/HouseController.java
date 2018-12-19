package com.zoe.controller;


import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zoe.pojo.House;
import com.zoe.pojo.Rentrequest;
import com.zoe.service.HouseService;
import com.zoe.service.RentrequestService;
import com.zoe.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.*;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class HouseController {

    @Autowired
    HouseService houseService;

//    @ResponseBody
//    @RequestMapping("listHouse")
//    public String listHouse(Model model,String alink) throws IOException {
//
//        List<House> houseList=houseService.findArea(alink);
//
//        model.addAttribute("houseList", houseList);
//        return JSONObject.toJSON(houseList).toString();
//    }

    @ResponseBody
    @RequestMapping("queryHouse")
    public String queryHouse(String alink,String numlink,int pricelink1,int pricelink2,String timelink,String sexlink,String waylink) {

        Date now = new Date();
        Calendar calendar = new GregorianCalendar();
        calendar.setTime(now);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式

       if(timelink.equals("1")){
            calendar.add(Calendar.MONTH,1); //把日期往后增加一个月,

        }else if(timelink.equals("2")){
            calendar.add(Calendar.MONTH,2); //把日期往后增加一个月,

        }else if(timelink.equals("3")) {
            calendar.add(Calendar.MONTH, 3); //把日期往后增加一个月,

        }
        Date date1=calendar.getTime(); //
        timelink=dateFormat.format(date1);


        if ("no".equals(sexlink)) sexlink=null;
        if("no".equals(alink)) alink=null;
        if ("no".equals(numlink)) numlink=null;
        if ("no".equals(sexlink)) sexlink=null;
        if("no".equals(waylink)) waylink=null;

        List<House> houseList=houseService.listHouse(alink,numlink,pricelink1,pricelink2,timelink,sexlink,waylink);

//        List<House> houseList=houseService.list();

     //   model.addAttribute("houseList", houseList);
        System.out.println(JSONObject.toJSON(houseList).toString());
        return JSONObject.toJSON(houseList).toString();
    }

//    @ResponseBody
//    @RequestMapping("list")
//    public String aaa(Model model,String alink) throws IOException {
//
//        List<House> houseList=houseService.findArea(alink);
//
//        model.addAttribute("houseList", houseList);
//        return JSONObject.toJSON(houseList).toString();
//    }

    @RequestMapping("houseList")
    public String bbb(Model model,HttpServletRequest request) {
        String addlist=request.getParameter("addlist");
//        String area =houseService.findArea(addlist);
//        model.addAttribute("area",area);
        return "admin/homePage";
    }


        @ResponseBody
    @RequestMapping(produces="text/html;charset=UTF-8", value = "/getManyHouses")
    public String getManyHouses(Model model) {
        List<House> cs = houseService.list();
        model.addAttribute("cs", cs);
        return JSONObject.toJSON(cs).toString();

    }

    @ResponseBody
    @RequestMapping(produces="text/html;charset=UTF-8", value = "/getHouses")
    public String getManyHousesAndRequest(Model model) {
        List<House> cs = houseService.listAndRequest();
        model.addAttribute("cs", cs);
        return JSONObject.toJSON(cs).toString();

    }

    @RequestMapping("house_list")
    public String getManyHousesAndRequest1(Model model, Page page) {
        PageHelper.offsetPage(page.getStart(),page.getCount());
        List<House> cs = houseService.listAndRequest();
        int total = (int) new PageInfo<>(cs).getTotal();
        page.setTotal(total);
        model.addAttribute("cs", cs);
        model.addAttribute("page",page);
        return "admin/requestPage";
//        return "admin/listHouses";

    }



    @RequestMapping("admin_house_list")
    public String list(Model model) {
        List<House> cs = houseService.list();
        model.addAttribute("cs", cs);
        return "admin/homePage";
    }


}
