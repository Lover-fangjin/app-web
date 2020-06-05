package com.ztman.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by Administrator on 2020/3/6.
 */
public class SMSHttpRequest {
    private String result;//json获取xml
    private int Status;

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public void DoRequest(String httpurl) {
        BufferedReader reader = null;
        StringBuffer stringBuffer = new StringBuffer();
        try {

            URL url = new URL(httpurl);
            HttpURLConnection connection = (HttpURLConnection) url
                    .openConnection();
            connection.setRequestMethod("GET");

            connection.connect();
            InputStream is = connection.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, "GBK"));

            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                stringBuffer.append(strRead);
                stringBuffer.append("\r\n");
            }
            reader.close();
            setResult(stringBuffer.toString());
            setStatus(connection.getResponseCode());
        } catch (Exception e) {
            //e.printStackTrace()
        }
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
