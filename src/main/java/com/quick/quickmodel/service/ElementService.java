package com.quick.quickmodel.service;

import cn.hutool.json.JSONArray;
import com.quick.quickmodel.dao.tables.pojos.ElementEntity;
import com.quick.quickmodel.mapper.ElementMapper;
import com.quick.quickmodel.tools.GenerateElementJsonTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * ClassName:ElementService
 * Package:com.quick.quickmodel.service
 * Description:
 *
 * @Date:2020/10/19 16:43
 * @Author:$licunzhuang@13253633031
 */
@Service
public class ElementService {
    @Autowired
    ElementMapper elementMapper;

    public ElementEntity getElementElement(int id) {
        return elementMapper.selectById(id);
    }

    public String findAll(){
        JSONArray array = new JSONArray();
        List<ElementEntity> all = elementMapper.findAll();
        for(ElementEntity el:all){
            array.add(el);
        }
        return array.toString();
    }

    public void deleteById(int id){
        elementMapper.deleteById(id);
    }
    public String getElementJson(int id) throws InvocationTargetException, IllegalAccessException {
        ElementEntity elementEntity = elementMapper.selectById(id);
        GenerateElementJsonTool generateElementJsonTool = new GenerateElementJsonTool();
        String elementJson = generateElementJsonTool.getElementJson(elementEntity);
        return elementJson;
    }
    public void insert(ElementEntity el){
        elementMapper.insert(el);
    }
}
