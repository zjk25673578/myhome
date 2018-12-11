package com.hafa.commons.util.freemarker;

import org.springframework.web.servlet.view.AbstractUrlBasedView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

public class MyFreeMarkerViewResolver extends FreeMarkerViewResolver {

	/**
	 * Set default viewClass
	 */
	public MyFreeMarkerViewResolver() {
		this.setViewClass(MyFreeMarkerView.class);
	}

	@Override
	protected AbstractUrlBasedView buildView(String viewName) throws Exception {
		AbstractUrlBasedView view = super.buildView(viewName);
		// start with / ignore prefix
		if (viewName.startsWith("/")) {
			view.setUrl(viewName + this.getSuffix());
		}
		return view;
	}

}
