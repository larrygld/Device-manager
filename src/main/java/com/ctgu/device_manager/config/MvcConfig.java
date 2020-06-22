package com.ctgu.device_manager.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

/***
 * 
 * @author larry
 * @date 2020/2/13 13:24
 * @creed: Talk is cheap, show me the code!
 * 
 */


@Configuration
@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("memory");
    }


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        /*告知系统static 当成 静态资源访问*/
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    }



}