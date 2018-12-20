package com.wfp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JenkinsTestController {
    @GetMapping("/test")
    public String jenkinsTest(){
        return "jenkins成功！";
    }
}
