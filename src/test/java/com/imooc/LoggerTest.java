package com.imooc;

import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class LoggerTest {
    //    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(LoggerTest.class);
    @Test
    public void test1() {

        log.debug("debug");
        log.info("info");
        String name = "yoyo";
        String add = "beijing";
        log.info("name:" + name + ",add:" + add);
        log.info("name: {}, add: {}", name, add);
        log.error("error");

    }
}
