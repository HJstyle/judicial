package com.quick.quickmodel.handler;

import com.quick.quickmodel.service.ExamplesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/examples")
public class ExampleHandler {

    @Autowired
    ExamplesService service;

    @RequestMapping(value = "/data1", method = RequestMethod.GET)
    public String getData1() {
        return service.getStruct1();
    }

    @RequestMapping(value="/mytest")
    public String test1(){
        return "hello world";
    }

}
