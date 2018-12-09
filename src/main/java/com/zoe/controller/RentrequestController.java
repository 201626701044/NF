package com.zoe.controller;


import com.alibaba.fastjson.JSONObject;
import com.zoe.pojo.Rentrequest;
import com.zoe.service.RentrequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("/request")
public class RentrequestController {

    @Autowired
    RentrequestService rentrequestService;

    @ResponseBody
    @RequestMapping(produces="text/html;charset=UTF-8", value = "/getManyRequests")

    public String getManyRequests(Model model) {
        List<Rentrequest> cs = rentrequestService.list();
        model.addAttribute("cs", cs);
        return JSONObject.toJSON(cs).toString();

    }

    @RequestMapping("admin_rentrequest_list")
    public String list(Model model) {
        List<Rentrequest> cs = rentrequestService.list();
        model.addAttribute("cs", cs);
        return "admin/listRentrequest";
    }

}
