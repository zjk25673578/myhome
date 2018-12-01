package com.hafa.commons.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;

public interface ApplicationService {
    BufferedImage drawValidCode(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
