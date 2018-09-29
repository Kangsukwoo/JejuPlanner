package kr.co.main.myplaner;

import java.sql.Date;

public class PlanerDTO {
  private String contentid;
  private String title;
  private String image;
  private String cat1;
  private String cat2;
  private String cat3;
  private String addr1;
  private String addr2;
  private String mapx;
  private String mapy;
  private String sigungucode;
  private String contenttypeid;
  private String modifiedtime;
  
  public PlanerDTO(){}

  public PlanerDTO(String contentid, String title, String image, String cat1, String cat2, String cat3, String addr1,
      String addr2, String mapx, String mapy, String sigungucode, String contenttypeid, String modifiedtime) {
    this.contentid = contentid;
    this.title = title;
    this.image = image;
    this.cat1 = cat1;
    this.cat2 = cat2;
    this.cat3 = cat3;
    this.addr1 = addr1;
    this.addr2 = addr2;
    this.mapx = mapx;
    this.mapy = mapy;
    this.sigungucode = sigungucode;
    this.contenttypeid = contenttypeid;
    this.modifiedtime = modifiedtime;
  }

  public String getContentid() {
    return contentid;
  }

  public void setContentid(String contentid) {
    this.contentid = contentid;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public String getCat1() {
    return cat1;
  }

  public void setCat1(String cat1) {
    this.cat1 = cat1;
  }

  public String getCat2() {
    return cat2;
  }

  public void setCat2(String cat2) {
    this.cat2 = cat2;
  }

  public String getCat3() {
    return cat3;
  }

  public void setCat3(String cat3) {
    this.cat3 = cat3;
  }

  public String getAddr1() {
    return addr1;
  }

  public void setAddr1(String addr1) {
    this.addr1 = addr1;
  }

  public String getAddr2() {
    return addr2;
  }

  public void setAddr2(String addr2) {
    this.addr2 = addr2;
  }

  public String getMapx() {
    return mapx;
  }

  public void setMapx(String mapx) {
    this.mapx = mapx;
  }

  public String getMapy() {
    return mapy;
  }

  public void setMapy(String mapy) {
    this.mapy = mapy;
  }

  public String getSigungucode() {
    return sigungucode;
  }

  public void setSigungucode(String sigungucode) {
    this.sigungucode = sigungucode;
  }

  public String getContenttypeid() {
    return contenttypeid;
  }

  public void setContenttypeid(String contenttypeid) {
    this.contenttypeid = contenttypeid;
  }

  public String getModifiedtime() {
    return modifiedtime;
  }

  public void setModifiedtime(String modifiedtime) {
    this.modifiedtime = modifiedtime;
  }

  @Override
  public String toString() {
    return "PlanerDTO [contentid=" + contentid + ", title=" + title + ", image=" + image + ", cat1=" + cat1 + ", cat2="
        + cat2 + ", cat3=" + cat3 + ", addr1=" + addr1 + ", addr2=" + addr2 + ", mapx=" + mapx + ", mapy=" + mapy
        + ", sigungucode=" + sigungucode + ", contenttypeid=" + contenttypeid + ", modifiedtime=" + modifiedtime + "]";
  }
  
  
  
  
}// class end
