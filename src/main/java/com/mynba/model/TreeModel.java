package com.mynba.model;

public class TreeModel {
    private String label; // 节点名称
    private boolean spread; // 是否展开
    private boolean disabled; // 是否禁用
    private boolean checked; // 是否选中
    private TreeModel[] children; // 子节点数据

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public boolean isSpread() {
        return spread;
    }

    public void setSpread(boolean spread) {
        this.spread = spread;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public TreeModel[] getChildren() {
        return children;
    }

    public void setChildren(TreeModel[] children) {
        this.children = children;
    }
}
