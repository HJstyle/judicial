package com.quick.quickmodel.service;

import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import com.huaban.analysis.jieba.JiebaSegmenter;
import com.quick.quickmodel.dao.tables.daos.DocsDao;
import com.quick.quickmodel.dao.tables.pojos.Docs;
import com.quick.quickmodel.dao.tables.pojos.Knowledge;
import com.quick.quickmodel.tools.PDFTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class DocService {
    @Autowired
    DocsDao docsDao;

    public void insert(Docs docs) {
        docsDao.insert(docs);
    }

    public void update(Docs docs) {
        System.out.println(docs.getObjectRelation());
        docsDao.update(docs);
    }

    public void delete(Docs docs) {
        docsDao.delete(docs);
    }

    public String findAll() {
        JSONArray array = new JSONArray();
        List<Docs> list = docsDao.findAll();
        for (Docs b : list) {
            array.add(b);
        }
        return array.toString();
    }

    public String upFile(MultipartFile file) {
        JiebaSegmenter segmenter = new JiebaSegmenter();
        JSONObject json = new JSONObject();
        String basePath =  System.getProperty("java.class.path");
        String filePath = "/program/docs/" + file.getOriginalFilename();
        System.out.println(filePath);
        System.out.println(basePath);
        File desFile = new File(filePath);
        if (!desFile.getParentFile().exists()) {
            desFile.mkdirs();
        }
        try {
            file.transferTo(desFile);
            String PDFText = PDFTool.getText(filePath);
            System.out.print(PDFText);
            List<String> words = segmenter.sentenceProcess(PDFText);
            JSONArray array = new JSONArray();
            for(String s:words){
                array.add(s);
            }

            json.put("Msg", "success");
            json.put("words",array);
        } catch (IOException e) {
            e.printStackTrace();
            json.put("Msg", "fail");
        }
        Docs doc = new Docs();
        doc.setHref("docs/" + file.getOriginalFilename());
        doc.setName(file.getOriginalFilename());
        doc.setDocRelation("[]");
        doc.setObjectRelation("[]");
        doc.setKnowledgeRelation("[]");
        doc.setProperty("[]");
        Docs d = null;
        if(docsDao.fetchByName(file.getOriginalFilename()).size()!=0){
            d = docsDao.fetchByName(file.getOriginalFilename()).get(0);
        }else{
            docsDao.insert(doc);
            d = docsDao.fetchByName(file.getOriginalFilename()).get(0);
        }

        json.put("doc",d);
        return json.toString();

    }
}
