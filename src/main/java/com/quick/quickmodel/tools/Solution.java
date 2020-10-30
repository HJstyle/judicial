package com.quick.quickmodel.tools;

import sun.applet.Main;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * ClassName:Solution
 * Package:com.quick.quickmodel.tools
 * Description:
 *
 * @Date:2020/10/8 19:30
 * @Author:$licunzhuang@13253633031
 */
public class Solution {
    public static void main(String[] args) {
        System.out.println(workdays_between(2020,9,25,2020,9,29));

    }
    public static int workdays_between (int y1, int m1, int d1, int y2, int m2, int d2) {
        // write code here
        Calendar calendar = Calendar.getInstance();
        String format = ""+y1+"-"+m1+"-"+d1;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try{
            date = simpleDateFormat.parse(format);
        }catch (Exception e){
            e.printStackTrace();
        }
        calendar.setTime(date);
        int w = calendar.get(Calendar.DAY_OF_WEEK)-1;
        int start = 0;
        if(w==0) w=7;
        start = w;
        int result = 0;
        int count = d2-d1;
        for(int i=0;i<count;i++){
            if((start+i)%7!=6 && (start+i)%7!=0){
                result++;
            }
        }
        return result;
    }
}
