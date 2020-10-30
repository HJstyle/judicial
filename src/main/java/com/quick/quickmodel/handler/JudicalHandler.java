package com.quick.quickmodel.handler;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.quick.quickmodel.dao.tables.pojos.JudicalEntity;
import com.quick.quickmodel.dao.tables.pojos.JudicalEntityT;
import com.quick.quickmodel.dao.tables.pojos.Knowledge;
import com.quick.quickmodel.mapper.JudicalMapper;
import com.quick.quickmodel.service.JudicalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * ClassName:LoginHandler
 * Package:com.quick.quickmodel.handler
 * Description:
 *
 * @Date:2020/10/4 21:28
 * @Author:$licunzhuang@13253633031
 */
@RequestMapping("/judical")
@RestController
public class JudicalHandler {
    @Autowired
    JudicalService service;

    @RequestMapping(value = "/findAll")
    public String findAll(){
        List<JudicalEntityT> judicalEntities = service.select();
        JSONArray array = new JSONArray();
        for(JudicalEntityT judicalEntityT:judicalEntities){
            array.add(judicalEntityT);
        }
//        System.out.println(array.toString());
//        ArrayList<String> resultString = new ArrayList<>();
//        String string = JSONArray.toJSON(judicalEntities).toString();
//        for(JudicalEntityT judicalEntity:judicalEntities){
//            String temp = JSONArray.toJSON(judicalEntity).toString();
//            System.out.println(temp);
//            resultString.add(temp);
//        }
//        String resultJson = JSONArray.toJSON(resultString).toString();
//        System.out.println(resultJson);
//        System.out.println(string);
        return "ok";
    }
}
