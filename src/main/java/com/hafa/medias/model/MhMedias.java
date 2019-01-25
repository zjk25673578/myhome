package com.hafa.medias.model;

import com.hafa.commons.entity.CommonModel;

public class MhMedias extends CommonModel {
    private String fname;

    private String filename;

    private String filepath;

    private Integer filetype;

    private Integer comlevl;

    private Integer photos;

    private String filesize;

    private String descp;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public Integer getFiletype() {
        return filetype;
    }

    public void setFiletype(Integer filetype) {
        this.filetype = filetype;
    }

    public Integer getComlevl() {
        return comlevl;
    }

    public void setComlevl(Integer comlevl) {
        this.comlevl = comlevl;
    }

    public Integer getPhotos() {
        return photos;
    }

    public void setPhotos(Integer photos) {
        this.photos = photos;
    }

    public String getFilesize() {
        return filesize;
    }

    public void setFilesize(String filesize) {
        this.filesize = filesize;
    }

    public String getDescp() {
        return descp;
    }

    public void setDescp(String descp) {
        this.descp = descp;
    }
}
