package com.wfp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ComWfpApplicationTests {

    @Test
    public void contextLoads() {
        this.test1("张三");
    }

    public String test1(String name, String... args){
        return name;
    }

}

