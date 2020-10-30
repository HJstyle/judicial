package com.quick.quickmodel.service;


import cn.hutool.json.JSONArray;
import com.quick.quickmodel.dao.tables.pojos.ElementEntity;
import com.quick.quickmodel.dao.tables.pojos.personal_info;
import com.quick.quickmodel.mapper.personalMap;
import com.quick.quickmodel.tools.GenerateElementJsonTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.Mapping;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

@Service
public class personService {
    @Autowired
    personalMap personalmap;

    public personal_info getElementElement(int id) {
        return personalmap.selectById(id);
    }

    public String findAll(){
        JSONArray array = new JSONArray();
        List<personal_info> all = personalmap.findAll();
        for(personal_info el:all){
            array.add(el);
        }
        return array.toString();
    }





    public void deleteById(int id){
        personalmap.deleteById(id);
    }

//    public String getElementJson(int id) throws InvocationTargetException, IllegalAccessException {
//        ElementEntity elementEntity = personalmap.selectById(id);
//        GenerateElementJsonTool generateElementJsonTool = new GenerateElementJsonTool();
//        String elementJson = generateElementJsonTool.getElementJson(elementEntity);
//        return elementJson;
//
//    }
//    public String getElementJson(int id) throws InvocationTargetException, IllegalAccessException {
//        personal_info elementEntity = personalmap.selectById(id);
//        GenerateElementJsonTool generateElementJsonTool = new GenerateElementJsonTool();
//        String elementJson = generateElementJsonTool.getElementJson(elementEntity);
//        return elementJson;
//    }


}
