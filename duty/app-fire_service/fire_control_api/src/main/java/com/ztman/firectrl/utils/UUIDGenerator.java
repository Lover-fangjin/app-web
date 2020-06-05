package com.ztman.firectrl.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Administrator on 2020/3/12.
 */
public class UUIDGenerator {

    public static String randomUUID(){
        return UUID.randomUUID().toString().replace("-", "");
    }
    public static String getTime(){
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyyMMddHHmmss");
        return dateFormat.format(new Date());
    }
}
