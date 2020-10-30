package com.quick.quickmodel.handler;

import com.quick.quickmodel.dao.tables.pojos.Docs;
import com.quick.quickmodel.dao.tables.pojos.Knowledge;
import com.quick.quickmodel.service.DocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@RequestMapping(value = "/doc")
@RestController
public class DocHandler {
    @Autowired
    DocService service;

    @RequestMapping(value = "/insert",method = RequestMethod.POST)
    public String insert(
            @RequestBody Docs docs
    ){
        service.insert(docs);
        return "ok";
    }

    @RequestMapping(value = "/update",method = RequestMethod.POST)
    public String update(
            @RequestBody Docs docs
    ){
        service.update(docs);

        return "ok";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public String delete(
            @RequestBody Docs docs
    ){
        service.delete(docs);
        return "ok";
    }

    @RequestMapping(value = "/findAll",method = RequestMethod.GET)
    public String findAll(

    ){
        return service.findAll();
    }

    @RequestMapping(value = "/getFile",method = RequestMethod.POST)
    public String getFile(@RequestParam("file") MultipartFile file){
        return service.upFile(file);

    }
}
