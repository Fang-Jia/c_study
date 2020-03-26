package com.wj.entity;

/**
 * 标签实体类    对应数据库标签表
 */
public class Note {
//    ID
    private Integer nid;

//    笔记拥有者
    private String name;

//    笔记记录所在教程ID
    private String courseId;

//    笔记文字内容
    private String font;

//    笔记代码内容
    private String code;

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public String getFont() {
        return font;
    }

    public void setFont(String font) {
        this.font = font;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
