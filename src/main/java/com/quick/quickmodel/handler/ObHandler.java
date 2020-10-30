package com.quick.quickmodel.handler;

import com.quick.quickmodel.dao.tables.pojos.Ob;
import com.quick.quickmodel.service.JiexiService;
import com.quick.quickmodel.service.ObService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RequestMapping(value = "/ob")
@RestController
public class ObHandler {
    @Autowired
    private ObService service;

    @RequestMapping(value = "/insert",method = RequestMethod.POST)
    public String insert(
            @RequestBody Ob ob
    ){
        service.insert(ob);
        return "ok";
    }

    @RequestMapping(value = "/insert1",method = RequestMethod.POST)
    public String insert1(
            @RequestBody Ob ob
    ){
        return "ok";
    }

    @RequestMapping(value = "/jiexi",method = RequestMethod.POST)
    @ResponseBody
    public String jiexi(
            @RequestBody Ob ob
    ){
        String case1 = ob.getName();
        JiexiService jiexiService = new JiexiService();
        String s = jiexiService.JieXi(case1);
//        System.out.println(ob.getName()+"acb");
        return s;
//        System.out.println(ob.getProperty()+"acb");
//        return "ok";
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(
            @RequestBody Ob ob
    ){
        service.update(ob);
        return "ok";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public String delete(
            @RequestBody Ob ob
    ){
        service.delete(ob);
        return "ok";
    }

    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    public String findAll(

    ){
        return service.findAll();
    }


}
