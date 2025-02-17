package com.ruoyi.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @version 1.0
 * @description: 自动生成单号工具类 格式 : yyyyMMdd0001，每日从0001开始自增长
 * @date 2024/9/30 11:07
 */
public class GenerateOddNumbersUtil {
    /**
     * 自动生成单号
     * @date 2024/9/30
     * @param maxOddNumbers  数据库中的最新单号
     * @return java.lang.String
     */
    public static String getOddNumbers(String maxOddNumbers){
        //定义变量(最新的单号)
        String newOddNumber = "";
        //获取当前日期并将其进行格式化
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
        String formatDate = simpleDateFormat.format(new Date());//2025 0110 0001
        //判断数据中的最大单号是否存在，是否包含当前日期 038
        if (maxOddNumbers != null && maxOddNumbers.contains(formatDate)){
            //截取后四位数
            String endNum = maxOddNumbers.substring(8);
            //把截取的最后四位数解析为int
            int endIntNum = Integer.parseInt(endNum);//1
            //在将其加1(自增1)
            int newEndIntNum = 10000+endIntNum+1;//10002
            //把10000的1去掉，获取到最新的后四位
            String newEndNum = String.valueOf(newEndIntNum).substring(2);
            //生成单号
            newOddNumber = formatDate+newEndNum;
            //将单号返回
            return newOddNumber;
        }else{
            //如果为空(第一次生成)或者当前最大订单号的日期与当前日期不一致说明需要重新计数生成单号
            newOddNumber = formatDate+"0001";
            //将单号返回
            return newOddNumber;
        }
    }
}