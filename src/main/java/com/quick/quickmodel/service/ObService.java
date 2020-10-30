package com.quick.quickmodel.service;

import cn.hutool.json.JSONArray;
import com.quick.quickmodel.dao.tables.daos.ObDao;
import com.quick.quickmodel.dao.tables.pojos.Ob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ObService {

    @Autowired
    private ObDao obdao;

    public void insert(Ob ob){
        obdao.insert(ob);
    }

    public void update(Ob ob){
        obdao.update(ob);
    }

    public void delete(Ob ob){
        obdao.delete(ob);
    }

    public String findAll(){
        JSONArray array = new JSONArray();
        List<Ob> list = obdao.findAll();
        for(Ob b:list){
            array.add(b);
        }
        return array.toString();
    }
}
