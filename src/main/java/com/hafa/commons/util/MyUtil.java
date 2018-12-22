package com.hafa.commons.util;


import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.TreeModel;

import javax.servlet.http.HttpSession;
import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;

/**
 * 工具类
 */
public class MyUtil {

    /**
     * 将多个对象以字符串的形式拼接起来
     *
     * @param objs
     * @return
     */
    public static String concat(Object... objs) {
        if (objs == null || objs.length == 0) {
            return "";
        }
        StringBuilder temp = new StringBuilder();
        for (Object o : objs) {
            if (o != null)
                temp.append(o);
        }
        return temp.toString();
    }

    /**
     * 获取随机的验证码内容(字母加数字)
     * 同时将验证码放入session中
     */
    public static String getCodeContent(HttpSession session) {
        String str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder code = new StringBuilder();
        for (int x = 1; x <= 4; x++) {
            Random a = new Random();
            int m = a.nextInt(str.length());
            code.append(str.charAt(m));
        }
        session.setAttribute("validCode", code.toString());
        return code.toString();
    }

    /**
     * 构建response消息模型
     * 根据代码从枚举MessageEnum中获取消息
     *
     * @param code 消息代码
     * @return
     */
    public static Message msg(int code) {
        if (code >= 0) {
            return msg(true, "操作成功 !");
        }
        MessageEnum m = MessageEnum.codeOf(code);
        if (m == null) {
            return msg(false, "未知的错误消息类型");
        }
        return msg(false, m.msg());
    }

    /**
     * 构建response消息模型
     *
     * @param result true, false
     * @param action
     * @return
     */
    public static Message msg(boolean result, String action) {
        Message msg = new Message();
        msg.setSuccess(result);
        msg.setMessage(action);
        msg.setIconType(result ? 1 : 7);
        return msg;
    }

    /**
     * 构建response消息模型
     *
     * @param status
     * @param action
     * @return
     */
    public static Message msg(int status, String action) {
        return msg(status >= 0, action);
    }

    /**
     * 构建response消息模型
     *
     * @param result true, false
     * @param action
     * @param data   数据列表
     * @return
     */
    public static Message msg(int result, String action, List<?> data) {
        Message msg = msg(result >= 0, action);
        msg.setData(data);
        return msg;
    }

    /**
     * 用于将多个javabean转换成Map<String, Object><br>
     * 应当注意重复的key值
     * 主要用于MyBatis参数的合并
     *
     * @param objects
     * @return
     * @throws Exception
     */
    public static Map<String, Object> bean2Map(Object... objects) throws Exception {
        Map<String, Object> _map = null;
        if (objects != null && objects.length > 0) {
            for (Object object : objects) {
                if (_map == null) {
                    _map = transBean2Map(object);
                } else {
                    _map.putAll(transBean2Map(object));
                }
            }
        }
        return _map;
    }

    /**
     * 通过反射将javaBean转换成Map
     *
     * @param obj
     * @return
     * @throws Exception
     */
    private static Map<String, Object> transBean2Map(Object obj) throws Exception {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            try {
                return (Map<String, Object>) obj;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        Map<String, Object> map = new HashMap<>();
        BeanInfo beanInfo = Introspector.getBeanInfo(obj.getClass());
        PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
        for (PropertyDescriptor property : propertyDescriptors) {
            String key = property.getName();
            // 过滤class属性
            if (!key.equals("class")) { // 得到property对应的getter方法
                Method getter = property.getReadMethod();
                Object value = getter.invoke(obj);
                map.put(key, value);
            }
        }
        return map;
    }

    /**
     * 组装layui-data-table所需的数据格式
     *
     * @param code  状态码
     * @param msg   当数据获取失败时返回的消息
     * @param count 数据条数, 用于分页和统计
     * @param data  数据列表
     * @return
     */
    public static Map<String, Object> layData(int code, String msg, int count, List<?> data) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", code);
        resultMap.put("msg", msg);
        resultMap.put("count", count);
        resultMap.put("data", data);
        return resultMap;
    }


    public static List<TreeModel> list2TreeModel(List<Map<String, Object>> dataList, Integer id) {
        return list2TreeModel(dataList, id, new HashMap<String, String>());
    }

    /**
     * 将List<Map<String, Object>>转换成List<TreeModel>的数据
     *
     * @param dataList 数据源
     * @param id       开始于此, 从parentId为这个值的数据开始取
     * @param model    作为解析的格式
     *                 原数据模型中的属性可以通过这个参数来匹配
     *                 比如:
     *                 TreeModel中显示的文字是label属性
     *                 而数据中显示的文字是menuName属性
     *                 可以实例化一个Map添加参数
     *                 map.put("label", "menuName")
     *                 方法在解析时可以通过menuName来获取显示的文字而不再是原来的label
     *                 其他不设置的默认使用原属性
     * @return
     */
    public static List<TreeModel> list2TreeModel(List<Map<String, Object>> dataList,
                                                 Integer id,
                                                 Map<String, String> model) {
        if (model == null) {
            return list2TreeModel(dataList, id);
        }

        String _id = model.get("id") == null ? "id" : model.get("id");
        String _label = model.get("label") == null ? "label" : model.get("label");
        String _icon = model.get("icon") == null ? "icon" : model.get("icon");
        String _url = model.get("url") == null ? "url" : model.get("url");
        String _parentId = model.get("parentId") == null ? "parentId" : model.get("parentId");
        String _spread = model.get("spread") == null ? "spread" : model.get("spread");
        String _disabled = model.get("disabled") == null ? "disabled" : model.get("disabled");
        String _checked = model.get("checked") == null ? "checked" : model.get("checked");

        List<TreeModel> treeList = new LinkedList<>();
        if (dataList.size() > 0) {
            for (int i = 0; i < dataList.size(); i++) {
                Map<String, Object> data = dataList.get(i);
                if (id.toString().equals(data.get(_parentId).toString())) {
                    TreeModel treeModel = new TreeModel();
                    treeModel.setId(Integer.parseInt(String.valueOf(data.get(_id))));
                    treeModel.setLabel(String.valueOf(data.get(_label)));
                    Object o = data.get(_icon);
                    if (o != null) {
                        treeModel.setIcon(o.toString());
                    }
                    treeModel.setUrl(String.valueOf(data.get(_url)));
                    treeModel.setParentId(Integer.parseInt(String.valueOf(data.get(_parentId))));

                    treeModel.setSpread(Boolean.parseBoolean(String.valueOf(data.get(_spread))));
                    treeModel.setDisabled(Boolean.parseBoolean(String.valueOf(data.get(_disabled))));
                    treeModel.setChecked(Boolean.parseBoolean(String.valueOf(data.get(_checked))));

                    List<TreeModel> temp = list2TreeModel(dataList, treeModel.getId(), model);
                    treeModel.setChildren(temp);
                    /*
                        将当前遍历的这个Map中的与TreeModel中的属性匹配上的去掉key值
                        然后将剩下的键值对存到TreeModel的attr属性中作为额外的属性
                     */
                    removeKeyValues(data, model.keySet());
                    removeKeyValues(data, getFieldString());
                    treeModel.setAttr(data); // 将除TreeModel类中成员变量额外的属性保存到这里
                    /**/
                    treeList.add(treeModel);
                }
            }
        }
        return treeList;
    }

    /**
     * 将已经赋值的TreeModel属性移除
     *
     * @param map 源数据
     * @param set 需要移除的key值
     */
    private static void removeKeyValues(Map<String, Object> map, Set<String> set) {
        if (map.size() > 0) {
            for (String key : set) {
                map.remove(key);
            }
        }
    }

    /**
     * 获取TreeModel的属性名
     *
     * @return TreeModel成员属性的集合
     */
    private static Set<String> getFieldString() {
        Set<String> set = new HashSet<>();
        Field[] fields = TreeModel.class.getDeclaredFields();
        for (Field field : fields) {
            set.add(field.getName());
        }
        return set;
    }
}
