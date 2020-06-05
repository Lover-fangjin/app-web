package cc.mrbird.febs;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author MrBird
 */
@EnableAsync
@SpringBootApplication
@EnableTransactionManagement
@MapperScan("cc.mrbird.febs.*.mapper")
public class DutyManagerApplication extends SpringBootServletInitializer {

    private static final Logger logger = LoggerFactory.getLogger(DutyManagerApplication.class);

   /* public static void main(String[] args) {
        new SpringApplicationBuilder(FebsApplication.class).run(args);
    }*/

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder app) {

        return app.sources(DutyManagerApplication.class);
    }


    public static void main(String[] args) {
        SpringApplication.run(DutyManagerApplication.class, args);
        logger.info("oops");
    }
}
