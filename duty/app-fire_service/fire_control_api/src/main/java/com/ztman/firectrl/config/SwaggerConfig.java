package com.ztman.firectrl.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.ApiKey;
import springfox.documentation.service.AuthorizationScope;
import springfox.documentation.service.SecurityReference;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.contexts.SecurityContext;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;
import java.util.List;

@Configuration                       //注解表示这个是一个配置文件，让spring来加载该类配置
@EnableSwagger2                      //注解表示启用Swagger2
public class SwaggerConfig {
    @Bean                            //注解表示交由bean容器去管理
    public Docket newsApi() {
        Docket docket = new Docket(DocumentationType.SWAGGER_2);
        docket.enable(true);
        //apiInfo()用来创建该Api的基本信息（这些基本信息会展现在文档页面中）。
        //select()函数返回一个ApiSelectorBuilder实例用来控制哪些接口暴露给Swagger来展现，本例采用指定扫描的包路径来定义，Swagger会扫描该包下所有Controller定义的API，并产生文档内容（除了被@ApiIgnore指定的请求）。
        docket.apiInfo(apiInfo())
              .select()
              .apis(RequestHandlerSelectors.basePackage("com.ztman.firectrl.controller"))
              .paths(PathSelectors.regex("^(?!auth).*$"))
              .paths(PathSelectors.any())
              .build()
              .securitySchemes(securitySchemes())
              .securityContexts(securityContexts());

        return docket;
    }


    private List<ApiKey> securitySchemes() {
        List<ApiKey> apiKeys = new ArrayList<>();
        apiKeys.add(new ApiKey("Authorization", "Authorization", "header"));
        return apiKeys;
    }

    private List<SecurityContext> securityContexts() {
        List<SecurityContext> securityContexts = new ArrayList<>();
        securityContexts.add(SecurityContext.builder()
                .securityReferences(defaultAuth())
                .forPaths(PathSelectors.regex("^(?!auth).*$")).build());
        return securityContexts;
    }
    private List<SecurityReference> defaultAuth() {
        AuthorizationScope authorizationScope = new AuthorizationScope("global", "accessEverything");
        AuthorizationScope[] authorizationScopes = new AuthorizationScope[1];
        authorizationScopes[0] = authorizationScope;
        List<SecurityReference> securityReferences = new ArrayList<>();
        securityReferences.add(new SecurityReference("Authorization", authorizationScopes));
        return securityReferences;
    }


    private ApiInfo apiInfo() {
        return new ApiInfoBuilder().title("北京消防协会地理信息系统api").description("在这里你可以浏览项目所有接口，并提供相关测试工具")
                .termsOfServiceUrl("http://fztsp.bjxingtaikeji.com/febs/login").contact("ztman").version("1.0").build();
    }

}