package com.ztman.annotation;

import java.lang.annotation.*;

/**
 * Created by Administrator on 2020/4/21.
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface IgnoreSecurity {
}
