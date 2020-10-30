package com.quick.quickmodel.service;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.quick.quickmodel.dao.tables.daos.DocsDao;
import com.quick.quickmodel.dao.tables.daos.KnowledgeDao;
import com.quick.quickmodel.dao.tables.daos.ObDao;
import com.quick.quickmodel.dao.tables.pojos.Docs;
import com.quick.quickmodel.dao.tables.pojos.Knowledge;
import com.quick.quickmodel.dao.tables.pojos.Ob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ExamplesService {
    @Autowired
    ObDao obDao;

    @Autowired
    KnowledgeDao knowledgeDao;

    @Autowired
    DocsDao docsDao;

    public String getStruct1() {
        List<Ob> obs = obDao.findAll();
        List<Knowledge> knowledges = knowledgeDao.findAll();
        List<Docs> docs = docsDao.findAll();
        JSONObject json = new JSONObject();
        JSONObject categories = new JSONObject();
        categories.put("person", "知识");
        JSONObject data = new JSONObject();
        JSONArray nodes = new JSONArray();
        JSONArray edges = new JSONArray();
        int eid = 0;
        for (Ob ob : obs) {
            JSONObject tmpJson = new JSONObject();
            tmpJson.put("id", 10000 + ob.getId());
            tmpJson.put("value", 40);
            tmpJson.put("label", ob.getName() + ob.getId());
            JSONArray properties = JSONArray.parseArray(ob.getProperty().toString());
            JSONArray objectRelations = JSONArray.parseArray(ob.getObjectRelation().toString());
            JSONArray knowledgeRelations = JSONArray.parseArray(ob.getKnowledgeRelation().toString());
            JSONArray docRelation = JSONArray.parseArray(ob.getDocRelation().toString());
            String info = "";

            for (Object property : properties) {
                info += ((JSONObject) property).getString("name") + "--" + ((JSONObject) property).getString("value") + "\n";
            }
            for (Object or : objectRelations) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) or).getString("content"));
                tmp.put("to", 10000 + Integer.parseInt(((JSONObject) or).getString("to")));
                tmp.put("from", 10000 + ob.getId());
                eid += 1;
                edges.add(tmp);
            }
            for (Object kr : knowledgeRelations) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) kr).getString("content"));
                tmp.put("to", 20000 + Integer.parseInt(((JSONObject) kr).getString("to")));
                tmp.put("from", 10000 + ob.getId());
                eid += 1;
                edges.add(tmp);
            }
            for (Object dr : docRelation) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) dr).getString("content"));
                tmp.put("to", 30000 + Integer.parseInt(((JSONObject) dr).getString("to")));
                tmp.put("from", 10000 + ob.getId());
                eid += 1;
                edges.add(tmp);
            }
            tmpJson.put("info", info);
            JSONArray c_s = new JSONArray();
            c_s.add("knowledge");
            tmpJson.put("categories", c_s);
            tmpJson.put("community", 0);
            nodes.add(tmpJson);


        }

        for (Knowledge knowledge : knowledges) {
            JSONObject tmpJson = new JSONObject();
            tmpJson.put("id", 20000 + knowledge.getId());
            tmpJson.put("value", 40);
            tmpJson.put("label", knowledge.getName()+ knowledge.getId());
            JSONArray properties = JSONArray.parseArray(knowledge.getProperty().toString());
            JSONArray objectRelations = JSONArray.parseArray(knowledge.getObjectRelation().toString());
            JSONArray knowledgeRelations = JSONArray.parseArray(knowledge.getKnowledgeRelation().toString());
            JSONArray docRelation = JSONArray.parseArray(knowledge.getDocRelation().toString());
            String info = "";

            for (Object property : properties) {
                info += ((JSONObject) property).getString("name") + "--" + ((JSONObject) property).getString("value") + "\n";
            }
            for (Object or : objectRelations) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) or).getString("content"));
                tmp.put("to", 10000 + Integer.parseInt(((JSONObject) or).getString("to")));
                tmp.put("from", 20000 + knowledge.getId());
                eid += 1;
                edges.add(tmp);
            }
            for (Object kr : knowledgeRelations) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) kr).getString("content"));
                tmp.put("to", 20000 + Integer.parseInt(((JSONObject) kr).getString("to")));
                tmp.put("from", 20000 + knowledge.getId());
                eid += 1;
                edges.add(tmp);
            }
            for (Object dr : docRelation) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) dr).getString("content"));
                tmp.put("to", 30000 + Integer.parseInt(((JSONObject) dr).getString("to")));
                tmp.put("from", 20000 + knowledge.getId());
                eid += 1;
                edges.add(tmp);
            }
            tmpJson.put("info", info);
            JSONArray c_s = new JSONArray();
            c_s.add("knowledge");
            tmpJson.put("categories", c_s);
            tmpJson.put("community", 0);
            nodes.add(tmpJson);
        }

        for (Docs doc : docs) {
            JSONObject tmpJson = new JSONObject();
            tmpJson.put("id", 20000 + doc.getId());
            tmpJson.put("value", 40);
            tmpJson.put("label", doc.getName()+ doc.getId());
            JSONArray properties = JSONArray.parseArray(doc.getProperty().toString());
            JSONArray objectRelations = JSONArray.parseArray(doc.getObjectRelation().toString());
            JSONArray knowledgeRelations = JSONArray.parseArray(doc.getKnowledgeRelation().toString());
            JSONArray docRelation = JSONArray.parseArray(doc.getDocRelation().toString());
            String info = "";

            for (Object property : properties) {
                info += ((JSONObject) property).getString("name") + "--" + ((JSONObject) property).getString("value") + "\n";
            }
            for (Object or : objectRelations) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) or).getString("content"));
                tmp.put("to", 10000 + Integer.parseInt(((JSONObject) or).getString("to")));
                tmp.put("from", 30000 + doc.getId());
                eid += 1;
                edges.add(tmp);
            }
            for (Object kr : knowledgeRelations) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) kr).getString("content"));
                tmp.put("to", 20000 + Integer.parseInt(((JSONObject) kr).getString("to")));
                tmp.put("from", 30000 + doc.getId());
                eid += 1;
                edges.add(tmp);
            }
            for (Object dr : docRelation) {
                JSONObject tmp = new JSONObject();
                tmp.put("id", eid);
                tmp.put("label", ((JSONObject) dr).getString("content"));
                tmp.put("to", 30000 + Integer.parseInt(((JSONObject) dr).getString("to")));
                tmp.put("from", 30000 + doc.getId());
                eid += 1;
                edges.add(tmp);
            }
            tmpJson.put("info", info);
            JSONArray c_s = new JSONArray();
            c_s.add("knowledge");
            tmpJson.put("categories", c_s);
            tmpJson.put("community", 0);
            nodes.add(tmpJson);
        }

        data.put("nodes", nodes);
        data.put("edges", edges);
        json.put("categories", categories);
        json.put("data", data);

//        return json.toString();
        System.out.println(json.toString());
        return JSON.parse(json.toString()).toString();
    }
}
