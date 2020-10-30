package com.quick.quickmodel.service;


import cn.hutool.json.JSONArray;
import com.quick.quickmodel.dao.tables.pojos.case_Info;
import com.quick.quickmodel.mapper.caseMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class caseService {
    @Autowired
    caseMap casemap;

    public case_Info getElementElement(int id) {
        return casemap.selectById(id);
    }

    public String findAll(){
        JSONArray array = new JSONArray();
        List<case_Info> all = casemap.findAll();
        for(case_Info el:all){
            array.add(el);
        }
        return array.toString();
    }
    public void deleteById(int id){
        casemap.deleteById(id);
    }

}
