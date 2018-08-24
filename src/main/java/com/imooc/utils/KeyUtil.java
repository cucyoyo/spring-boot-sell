package com.imooc.utils;

import java.util.Random;

public class KeyUtil {

    /**
     * 生成唯一的主键
     * 格式: 时间+随机数
     * @return
     */
    // synchronized为了防止多线程时产生相同的随机数
    public static synchronized String genUniqueKey() {
        Random random = new Random();
        Integer number = random.nextInt(900000) + 100000; // 六位随机数

        return System.currentTimeMillis() + String.valueOf(number);
    }
}
