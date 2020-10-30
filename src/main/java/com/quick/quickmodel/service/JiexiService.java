package com.quick.quickmodel.service;

import java.io.*;

/**
 * ClassName:JiexiService
 * Package:com.quick.quickmodel.service
 * Description:
 *
 * @Date:2020/10/3 22:39
 * @Author:$licunzhuang@13253633031
 */
public class JiexiService {
    public String JieXi(String case1) {
        try{
//            if(case1.startsWith("经审理")){
//                String result = "";
//                String yaosu = "租金 面积 租期 义务 产权 合同 签订 违约金 房产 商铺\n";
//                String yaosuG = "承租人：金正公司\n出租人：黄洁霞\n租赁合同签订时间：2004年7月30日\n房产建筑面积：15.44平方米\n房屋用途：商铺\n拖欠租金违约金计算方法:逾期付款违约金6341元";
//                result = result+yaosu+yaosuG;
////                System.out.println(result);
//                Thread.sleep(10000);
//                return result;
//            }
//            else if(case1.startsWith("原")){
//                String result = "";
//                String yaosu = "租金 面积 建筑 逾期 期限 合同 签订 违约金 租赁 经营\n";
//                String yaosuG = "承租人：合富公司\n出租人：马桃敏\n租赁合同签订时间：2012年6月1日\n实际支付租金数额：应于2012年6月10日支付的租金3741元\n房产建筑面积：29.09平方米\n房屋用途：经营\n拖欠租金违约金计算方法:每逾期一日按月租金的百分之十向甲方支付违约金";
//                Thread.sleep(10000);
//                result = result+yaosu+yaosuG;
//                return result;
//            }
            case1 = case1.replaceAll("&", "").replaceAll("\n", "");
//            System.out.println("start");
//            String url = DocService.class.getClassLoader().getResource("").getPath() + "fenci3.py";
//            url = url.substring(1,url.length());
//            String mil = "E:\\Anaconda3\\python.exe "+url + " " + case1;
//            String mil="E:\\Anaconda3\\python.exe C:/Users/lcz308/Desktop/fenci3.py "+case1;
//            System.out.println(mil);
//            这里可以将case1写入一个文件然后让python读取文件，最后在让python写入一个文件，然后让java读取结果。
//            明天可以写一个类，然后里面调用python文件尝试一下。
//            Process pr = Runtime.getRuntime().exec("E:\\Anaconda3\\Scripts\\activate.bat &&"+ mil);  // 本机的python运行环境 & 即将要调用的py文件

            File file = new File("/root/softwareTar/sifa.txt");
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(case1);
            fileWriter.close();
//            FileWriter fileWriter = new FileWriter("/root/softwareTar/sifa.txt");
//            System.out.println(case1);
//            String fileNameTest = "/root/softwareTar/sifa.txt";
//            FileInputStream fileTest = new FileInputStream(fileNameTest);
//            BufferedReader readerTest = new BufferedReader(new InputStreamReader(fileTest,"UTF-8"));
//            case1 = readerTest.readLine();
            String mil="python /root/softwareTar/justice/extract_element.py";
            Process pr = Runtime.getRuntime().exec(mil);  // 本机的python运行环境 & 即将要调用的py文件
            System.out.println("成功"+pr.waitFor());
//            System.out.println("成功"+pr1.waitFor());
            BufferedReader in = new BufferedReader(new
                    InputStreamReader(pr.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            in.close();
            pr.waitFor();
//            String fileName = "C:/Users/lcz308/Desktop/sifa1.txt";
            String fileName = "/root/softwareTar/sifa1.txt";
            FileInputStream file1 = new FileInputStream(fileName);
            BufferedReader reader = null;
            StringBuffer sbf = new StringBuffer();
            try {
                reader = new BufferedReader(new InputStreamReader(file1,"UTF-8"));
                String tempStr = "";
                String result = "";
                while((tempStr=reader.readLine())!=null){
                    result = result + tempStr + "\n";
                }
//                System.out.println(result);
                //while ((tempStr = reader.readLine()) != null) {
                //    return tempStr;
                //}
                reader.close();
                return result;
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (IOException e1) {
                        e1.printStackTrace();
                    }
                }
            }
            System.out.println("end");
        } catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

}
