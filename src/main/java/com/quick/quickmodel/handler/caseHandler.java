package com.quick.quickmodel.handler;

import com.quick.quickmodel.dao.tables.pojos.case_Info;
import com.quick.quickmodel.service.caseService;;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.lang.reflect.InvocationTargetException;

@RequestMapping("/element2")
@RestController
public class caseHandler {
    @Autowired
    caseService elementService;

    case_Info elementEntity;

    @RequestMapping("/get/{caseId}")
    public case_Info getElement(@PathVariable int id ){
        case_Info elementElement = elementService.getElementElement(id);
        System.out.println(elementElement.toString());
        return elementElement;
    }
    @RequestMapping("/findAll")
    public String findAll(){
        String all = elementService.findAll();
        return all;
    }
    @RequestMapping("/delete")
    public String deleteById(@RequestBody case_Info el){
//        System.out.println(el);
        elementService.deleteById(el.getCaseId());
        return "ok";
    }
//    @RequestMapping("/visual")
//    public String getElementJson() throws InvocationTargetException, IllegalAccessException {
//        String elementJson = elementService.getElementJson(elementEntity.getId());
//        System.out.println(elementJson);
//        return elementJson;
//    }

    @RequestMapping("/param")
    public void postParam(@RequestBody case_Info el) throws InvocationTargetException, IllegalAccessException {
        this.elementEntity = el;
    }


}
