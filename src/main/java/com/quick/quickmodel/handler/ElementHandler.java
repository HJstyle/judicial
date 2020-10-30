package com.quick.quickmodel.handler;

import com.quick.quickmodel.dao.tables.pojos.ElementEntity;
import com.quick.quickmodel.service.ElementService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

/**
 * ClassName:ElementHandler
 * Package:com.quick.quickmodel.handler
 * Description:
 *
 * @Date:2020/10/19 16:42
 * @Author:$licunzhuang@13253633031
 */
@RequestMapping("/element")
@RestController
public class ElementHandler {
    @Autowired
    ElementService elementService;

    ElementEntity elementEntity;

    @RequestMapping("/get/{id}")
    public ElementEntity getElement(@PathVariable int id ){
        ElementEntity elementElement = elementService.getElementElement(id);
        System.out.println(elementElement.toString());
        return elementElement;
    }
    @RequestMapping("/findAll")
    public String findAll(){
        String all = elementService.findAll();
        return all;
    }
    @RequestMapping("/delete")
    public String deleteById(@RequestBody ElementEntity el){
//        System.out.println(el);
        elementService.deleteById(el.getId());
        return "ok";
    }
    @RequestMapping("/visual")
    public String getElementJson() throws InvocationTargetException, IllegalAccessException {
        String elementJson = elementService.getElementJson(elementEntity.getId());
        System.out.println(elementJson);
        return elementJson;
    }

    @RequestMapping("/param")
    public void postParam(@RequestBody ElementEntity el) throws InvocationTargetException, IllegalAccessException {
        this.elementEntity = el;
    }
    @RequestMapping("/insert")
    public void insert(@RequestBody ElementEntity el){
        System.out.println(el.toString());
        elementService.insert(el);
    }


}
