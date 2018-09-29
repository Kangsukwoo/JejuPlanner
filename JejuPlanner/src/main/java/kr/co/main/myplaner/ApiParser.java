package kr.co.main.myplaner;

import java.io.BufferedInputStream;
import java.net.URL;
import java.sql.Date;
import java.util.ArrayList;
 
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;             
 
public class ApiParser{
 
    public final static String PHARM_URL = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList";
    public final static String KEY = "QGciytYo1byXvcdbijOLi05uFZvri8WQXW3V7LZ5WIcRNcNJmE3GVqaXsfRWrEkdgw91wM5%2BVKCSZDIwoMO1Ww%3D%3D";
    //private PlanerDTO dto;
    
    public ApiParser() {
        try {
            apiParserSearch();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
 
    public ArrayList<PlanerDTO> apiParserSearch() throws Exception {
        int pageNo = 0;
        String contentid = null;
        String title = null;
        String image = null;
        String cat1 = null;
        String cat2 = null;
        String cat3 = null;
        String addr1 = null;
        String addr2 = null;
        String mapx = null;
        String mapy = null;
        String sigungucode = null;
        String contenttypeid = null;
        String modifiedtime = null;
        //ArrayList<String> list = new ArrayList<String>();
        ArrayList<PlanerDTO> list = new ArrayList<PlanerDTO>();
        while(pageNo!=10) {
          pageNo = pageNo+1;
          URL url = new URL(getURLParam(pageNo));
          
          XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
          factory.setNamespaceAware(true);
          XmlPullParser xpp = factory.newPullParser();
          BufferedInputStream bis = new BufferedInputStream(url.openStream());
          xpp.setInput(bis, "utf-8");
          
          String tag = null;
          int event_type = xpp.getEventType();
          
          while (event_type != XmlPullParser.END_DOCUMENT) {
              if (event_type == XmlPullParser.START_TAG) {
                  tag = xpp.getName();
              } else if (event_type == XmlPullParser.TEXT) {
                  if(tag.equals("title")){
                    title = xpp.getText();
                  }else if(tag.equals("firstimage")) { image = xpp.getText();}
                  else if(tag.equals("cat1")) { cat1 = xpp.getText();}
                  else if(tag.equals("cat2")) { cat2 = xpp.getText();}
                  else if(tag.equals("cat3")) { cat3 = xpp.getText();}
                  else if(tag.equals("contentid")) { contentid = xpp.getText();}
                  else if(tag.equals("contenttypeid")) { contenttypeid = xpp.getText();}
                  else if(tag.equals("addr1")) { addr1 = xpp.getText();}
                  else if(tag.equals("addr2")) {addr2 = xpp.getText();}
                  else if(tag.equals("mapx")) { mapx = xpp.getText();}
                  else if(tag.equals("mapy")) { mapy = xpp.getText();}
                  else if(tag.equals("sigungucode")) { sigungucode = xpp.getText();}
                  else if(tag.equals("modifiedtime")) { modifiedtime = xpp.getText();}
                  
              } else if (event_type == XmlPullParser.END_TAG) {
                  tag = xpp.getName();
                  if (tag.equals("item")) {
                     /* list.add(title);
                      list.add(img);
                      list.add(cat1);
                      list.add(cat2);
                      list.add(cat3);
                      list.add(contentid);
                      list.add(contenttypeid);
                      list.add(addr1);
                      list.add(addr2);
                      list.add(mapx);
                      list.add(mapy);
                      list.add(sigungucode);*/
                    list.add(new PlanerDTO(contentid,title,image,cat1,cat2,cat3,
                        addr1,addr2,mapx,mapy,sigungucode,contenttypeid,modifiedtime));
                  }
              }
              event_type = xpp.next();
          } // 한페이지 파싱 end

        } //지정페이지 까지 파싱 end
        //한페이지에 10개의상품, 10페이지 
/*        System.out.println(list);
        printList(list);*/
       // printList(list);
        return list;
       // return null;
    }
    
    /**
     * 결과 값을 출력
     * @param list
     */
    private void printList(ArrayList<PlanerDTO> list){
        for(PlanerDTO entity : list){
            System.out.println(entity.getContentid());
        }
    }

    private String getURLParam(int search){
        String url = PHARM_URL+"?ServiceKey="+KEY+"&pageNo="+search+"&MobileOS=ETC"+"&MobileApp=AppTest"+"&areaCode=39";
        //System.out.println(url);
        return url;
    }
 
    
}
 