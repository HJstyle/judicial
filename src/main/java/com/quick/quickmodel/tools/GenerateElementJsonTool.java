package com.quick.quickmodel.tools;

import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONObject;
import com.quick.quickmodel.dao.tables.pojos.ElementEntity;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * ClassName:GenerateElementJsonTool
 * Package:com.quick.quickmodel.tools
 * Description:
 *
 * @Date:2020/10/20 11:12
 * @Author:$licunzhuang@13253633031
 */
public class GenerateElementJsonTool {
    public String getElementJson(ElementEntity elementEntity) throws InvocationTargetException, IllegalAccessException {
        Map<String,Map<String,Object>> jsonT = new HashMap<>();
        List<Map<String,Object>> nodes = new LinkedList<>();
        List<Map<String,Object>> edges = new LinkedList<>();
        HashMap<String, Object> caterogies = new HashMap<>();
        String[] strings = new String[]{"承租人","出租人","实际支付金额","支付租金时间","租赁合同签订时间","租赁期限",
                "房产建筑面积","房屋用途","拖欠违约金标准","拖欠违约金计算方法","租金支付方式","房屋具体位置"};
        caterogies.put("case","案件标识");
        caterogies.put("element","案件要素");
        caterogies.put("attribute","要素属性值");
        Class<? extends ElementEntity> aClass = elementEntity.getClass();
        Method[] methods = aClass.getDeclaredMethods();
        HashMap<String, String> ssMap = new HashMap<>();
        ssMap.put("承租人","chengZuRen");
        ssMap.put("出租人","chuZuRen");
        ssMap.put("实际支付金额","shijiZhifuJine");
        ssMap.put("支付租金时间","zhifuZujinShijian");
        ssMap.put("租赁合同签订时间","zulinHetongQiandingShijian");
        ssMap.put("租赁期限","zulinQixian");
        ssMap.put("房产建筑面积","fangChanJianzhuMianji");
        ssMap.put("房屋用途","fangwuYongtu");
        ssMap.put("拖欠违约金标准","tuoqianWeiyuejinBiaozhun");
        ssMap.put("拖欠违约金计算方法","tuoqianJisuanFangfa");
        ssMap.put("租金支付方式","zujinZhifuFangshi");
        ssMap.put("房屋具体位置","fangwuJutiWeizhi");
        String methodName = "";
        String attriName = "";
        HashMap<String,Method> strMethod = new HashMap<>();
        for(Method method:methods){
            methodName = method.getName();
            if(methodName.startsWith("get")){
                attriName = methodName.substring(3,methodName.length());
                String s = StrUtil.lowerFirst(attriName);
                strMethod.put(s,method);
            }
        }
        HashMap<String, Object> sOMap0 = new HashMap<>();
        String name = elementEntity.getName();
        sOMap0.put("lable",name);
        sOMap0.put("value",8);
        sOMap0.put("id",1);
        sOMap0.put("categories",new String[]{"案件标识"});
        sOMap0.put("info","");
        jsonT.put("categories",caterogies);
        nodes.add(sOMap0);
        for(int i=0;i<strings.length;i++){
            HashMap<String, Object> sOMap = new HashMap<>();
            String key = strings[i];
            sOMap.put("label",key);
            sOMap.put("value",4);
            sOMap.put("id",i+2);
            sOMap.put("categories",new String[]{"案件要素"});
            sOMap.put("info","");
            nodes.add(sOMap);
            HashMap<String, Object> sOMapE = new HashMap<>();
            sOMapE.put("id",i+30);
            sOMapE.put("lable","属性");
            sOMapE.put("from",1);
            sOMapE.put("to",i+2);
            edges.add(sOMapE);
            String strAtt = "";
            if(ssMap.containsKey(key)){
                String strM = ssMap.get(key);
                if(strMethod.containsKey(strM)){
                    Method method = strMethod.get(strM);
                    strAtt = (String)(method.invoke(elementEntity));
                }
            }
            HashMap<String, Object> sOMapAttr = new HashMap<>();
            sOMapAttr.put("label",strAtt);
            sOMapAttr.put("value",3);
            sOMapAttr.put("id",i+60);
            sOMapAttr.put("categories",new String[]{"要素属性值"});
            sOMapAttr.put("info","");
            nodes.add(sOMapAttr);
            HashMap<String, Object> sOMapE1 = new HashMap<>();
            sOMapE1.put("id",i+90);
            sOMapE1.put("lable","属性值");
            sOMapE1.put("from",i+2);
            sOMapE1.put("to",i+60);
            edges.add(sOMapE1);
        }
        HashMap<String,Object> data = new HashMap<>();
        data.put("nodes",nodes);
        data.put("edges",edges);
        jsonT.put("categories",caterogies);
        jsonT.put("data",data);
        JSONObject jsonObject = new JSONObject(jsonT);
        String string = jsonObject.toString();
        return string;



    }
}
