public class CTRL_SeLoger {
   public String reponse {get;set;}

// Constructor
    public CTRL_SeLoger() {
  
        HTTPResponse rawHtml = basicAuthCallout();
        //DOM.Document doc = rawHtml.getBodyDocument();
        System.debug('@@: '+rawHtml);
        //DOM.XMLNode root = doc.getRootElement();
        //System.debug('@@: '+root);
        reponse = rawHtml.getBody();
        
    }
// Onload method call
    public pageReference onLoad() {
    
        return null;
    }
    
    public HTTPResponse basicAuthCallout(){
     HttpRequest req = new HttpRequest();
     req.setEndpoint('http://www.seloger.com/recherche.htm?org=engine&idtt=2&ci=940059&idtypebien=1,2&');
     req.setMethod('GET');
     
     Http http = new Http();
     HTTPResponse res = http.send(req);
     
     return res;
   }
}