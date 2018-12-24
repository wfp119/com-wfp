package com.wfp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JenkinsTestController {
    @GetMapping("/test")
    public String jenkinsTest(){
        return "jenkins自动部署啦啦啦啦啦！";
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

    @GetMapping("auto5")
    public String autoUpdate5(){
        return "自动部署5！";
    }

    @GetMapping("auto6")
    public String autoUpdate6(){
        return "自动部署6！";
    }

    @GetMapping("auto7")
    public String autoUpdate7(){
        return "自动部署7！";
    }

    @GetMapping("auto8")
    public String autoUpdate8(){
        return "自动部署8！";
    }
}
