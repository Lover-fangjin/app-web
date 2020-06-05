package com.ztman.firectrl.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/**
 * Created by Administrator on 2020/3/13.
 */
public class SocketTest {
    public static void main(String[] args) throws IOException {
        while(true){
            //创建Socket对象，连接服务器
            Socket socket=new Socket("101.200.211.234",54321);
            //通过客户端的套接字对象Socket方法，获取字节输出流，将数据写向服务器
            OutputStream out=socket.getOutputStream();
            out.write("{01,AA001,1584085970,A1798260480,088.2,F}".getBytes());

            //读取服务器发回的数据，使用socket套接字对象中的字节输入流
            InputStream in=socket.getInputStream();
            byte[] data=new byte[1024];
            int len=in.read(data);
            System.out.println(new String(data,0,len));

            socket.close();
            try{
                Thread.sleep(3000);
            }catch (Exception ex){
                ex.printStackTrace();
            }
        }
    }
}
