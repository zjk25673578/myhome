package com.hafa.commons.util.freemarker;

import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 扩展spring的FreemarkerView，加上base属性。
 * <p>
 * 支持jsp标签，Application、Session、Request、RequestParameters属性
 */
public class MyFreeMarkerView extends FreeMarkerView {

    /**
     * 部署路径属性名称
     */
    public static final String CONTEXT_PATH = "ctx";

    /**
     * 部署路径属性名称
     */
    public static final String CONTEXT_BATH_PATH = "basePath";

    /**
     * 在model中增加部署路径base，方便处理部署路径问题。
     */
    @Override
    @SuppressWarnings({"unchecked", "rawtypes"})
    protected void exposeHelpers(Map model, HttpServletRequest request)
            throws Exception {
        super.exposeHelpers(model, request);
        model.put(CONTEXT_PATH, request.getContextPath());
        model.put(CONTEXT_BATH_PATH, request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + request.getContextPath());
    }

}
