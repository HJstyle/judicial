package com.quick.quickmodel.handler;

import com.quick.quickmodel.dao.tables.pojos.personal_info;
import com.quick.quickmodel.service.personService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.InvocationTargetException;

@RequestMapping("/element1")
@RestController
public class personHandler {
    @Autowired
    personService elementService;

    personal_info elementEntity;

    @RequestMapping("/get/{id}")
    public personal_info getElement(@PathVariable int id ){
        personal_info elementElement = elementService.getElementElement(id);
        System.out.println(elementElement.toString());
        return elementElement;
    }
    @RequestMapping("/findAll")
    public String findAll(){
        String all = elementService.findAll();
        return all;
    }
    @RequestMapping("/delete")
    public String deleteById(@RequestBody personal_info el){
//        System.out.println(el);
        elementService.deleteById(el.getId());
        return "ok";
    }
//    @RequestMapping("/visual")
//    public String getElementJson() throws InvocationTargetException, IllegalAccessException {
//        String elementJson = elementService.getElementJson(elementEntity.getId());
//        System.out.println(elementJson);
//        return elementJson;
//    }

    @RequestMapping("/param")
    public void postParam(@RequestBody personal_info el) throws InvocationTargetException, IllegalAccessException {
        this.elementEntity = el;
    }
//    @RequestMapping("/insert")
//    public void insert(@RequestBody ElementEntity el){
//        elementService.
//    }
}
