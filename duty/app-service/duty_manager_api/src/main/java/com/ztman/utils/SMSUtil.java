package com.ztman.utils;

import org.springframework.stereotype.Component;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/**
 * Created by Administrator on 2020/3/31.
 */
@Component
public class SMSUtil {

    public static boolean sendSms(String sms, String surl, String phone, String content) throws UnsupportedEncodingException {
        String sendUrl = surl + sms +"&mobile={phone}&content={content}&sendTime=&extno=";

        sendUrl = sendUrl.replace("{phone}", phone);
        // 生成验证码
//        String content = "【兴泰科技】注册验证码为:{code},请在2分钟内使用";
        sendUrl = sendUrl.replace("{content}", URLEncoder.encode(content, "UTF-8"));
        // 发送验证码 向用户
        SMSHttpRequest request = new SMSHttpRequest();
        request.DoRequest(sendUrl);

        // 接收发送结果
        if (request.getStatus() == 200) {
            return true;
        } else {
            return false;
        }
    }
}
