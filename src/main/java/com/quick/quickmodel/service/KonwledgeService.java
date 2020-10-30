package com.quick.quickmodel.service;

import cn.hutool.json.JSONArray;
import com.quick.quickmodel.dao.tables.daos.KnowledgeDao;
import com.quick.quickmodel.dao.tables.pojos.Knowledge;
import com.quick.quickmodel.dao.tables.pojos.Ob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KonwledgeService {
    @Autowired
    private KnowledgeDao knowledgeDao;

    public void insert(Knowledge knowledge){
        knowledgeDao.insert(knowledge);
    }

    public void update(Knowledge knowledge){
        knowledgeDao.update(knowledge);
    }

    public void delete(Knowledge knowledge){
        knowledgeDao.delete(knowledge);
    }

    public String findAll(){
        JSONArray array = new JSONArray();
        List<Knowledge> list = knowledgeDao.findAll();
        for(Knowledge b:list){
            array.add(b);
        }
        return array.toString();
    }
}
