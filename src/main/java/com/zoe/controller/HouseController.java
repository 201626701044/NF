package com.zoe.controller;


import com.alibaba.fastjson.JSONObject;
import com.zoe.pojo.House;
import com.zoe.pojo.Rentrequest;
import com.zoe.service.HouseService;
import com.zoe.service.RentrequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class HouseController {

    @Autowired
    HouseService houseService;

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
    public String getManyHousesAndRequest1(Model model) {
        List<House> cs = houseService.listAndRequest();
        model.addAttribute("cs", cs);
        return "admin/listHouses";

    }



    @RequestMapping("admin_house_list")
    public String list(Model model) {
        List<House> cs = houseService.list();
        model.addAttribute("cs", cs);
        return "admin/homePage";
    }

}
