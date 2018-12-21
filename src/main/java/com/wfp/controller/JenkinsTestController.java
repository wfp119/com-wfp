package com.wfp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JenkinsTestController {
    @GetMapping("/test")
    public String jenkinsTest(){
        return "jenkins成功！";
    }

    @GetMapping("auto")
    public String autoUpdate(){
        return "自动部署！";
    }

    @GetMapping("auto2")
    public String autoUpdate2(){
        return "自动部署2！";
    }

    @GetMapping("auto3")
    public String autoUpdate3(){
        return "自动部署3！";
    }

    @GetMapping("auto4")
    public String autoUpdate4(){
        return "自动部署4！";
    }
}
