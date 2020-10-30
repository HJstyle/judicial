package com.quick.quickmodel.handler;

import com.quick.quickmodel.dao.tables.pojos.Knowledge;
import com.quick.quickmodel.dao.tables.pojos.Ob;
import com.quick.quickmodel.service.KonwledgeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping(value = "/knowledge")
@RestController
public class KnowledgeHandler {
    @Autowired
    KonwledgeService service;

    @RequestMapping(value = "/insert",method = RequestMethod.POST)
    public String insert(
            @RequestBody Knowledge knowledge
            ){
        service.insert(knowledge);
        return "ok";
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(
            @RequestBody Knowledge knowledge
    ){
        service.update(knowledge);
        return "ok";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public String delete(
            @RequestBody Knowledge knowledge
    ){
        service.delete(knowledge);
        return "ok";
    }

    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    public String findAll(

    ){
        return service.findAll();
    }
}
