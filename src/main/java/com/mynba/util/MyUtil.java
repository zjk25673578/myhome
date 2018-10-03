package com.mynba.util;

import com.mynba.model.Message;

public class MyUtil {

    /**
     * 构建response消息模型
     * @param result
     * @return
     */
    public static Message msg(int result) {
        Message msg;
        if (result > 0) {
            msg = new Message(true, "数据操作成功 !", 1);
        } else {
            msg = new Message(false, "操作失败 !", 5);
        }
        return msg;
    }
}
