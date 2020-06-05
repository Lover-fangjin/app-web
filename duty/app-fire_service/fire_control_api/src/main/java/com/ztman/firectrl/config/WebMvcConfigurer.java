package com.ztman.firectrl.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by Administrator on 2020/3/10.
 */
@Configuration
public class WebMvcConfigurer extends WebMvcConfigurerAdapter {

    @Value("${prop.upload-folder}")
    private String UPLOAD_FOLDER;

    @Value("${prop.virtual-folder}")
    private String VIRTUAL_FOLDER;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //其中OTA表示访问的前缀。"file:D:/OTA/"是文件真实的存储路径
        registry.addResourceHandler(VIRTUAL_FOLDER).addResourceLocations("file:"+UPLOAD_FOLDER);
    }
}
