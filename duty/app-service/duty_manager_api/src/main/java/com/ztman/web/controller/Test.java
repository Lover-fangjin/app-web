package com.ztman.web.controller;

/**
 * Created by Administrator on 2020/3/13.
 */
public class Test {
    public static void main(String[] args)throws java.io.IOException {
        java.net.ServerSocket server=new java.net.ServerSocket(54321);
        java.net.Socket socket=server.accept();
        java.io.InputStream in=socket.getInputStream();
        byte[] data=new byte[1024];
        int len=in.read(data);

        System.out.println(new String(data,0,len));

//        String str = new String(data,0,len);
        String str = "{01,AA001, 1583895355,A1583895355,37.5,T}";
        String reStr = "failure";
        if(!"".equals(str) && str!=null){
            String [] strs = str.replace("{","").replace("}","").split(",");
            reStr = strs[3];
        }

        java.io.OutputStream out=socket.getOutputStream();
        out.write(reStr.getBytes());

        socket.close();
        server.close();

    }
}
