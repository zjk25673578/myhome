package com.mynba.medias.model;

public class MhMedias {
    private Integer ids;

    private String fname;

    private String filename;

    private String filepath;

    private Short filetype;

    private Short comlevl;

    private Integer photos;

    private String filesize;

    private String descp;

    private Short status;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

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

    public Short getFiletype() {
        return filetype;
    }

    public void setFiletype(Short filetype) {
        this.filetype = filetype;
    }

    public Short getComlevl() {
        return comlevl;
    }

    public void setComlevl(Short comlevl) {
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

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }
}