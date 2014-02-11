public with sharing class dev1_CTRL_ext1 {
    public resume__c res{get;set;}
    public dev1_CTRL_ext1(ApexPages.StandardController controller) {
        controller.addFields(new list<String>{'IP_Origin__c', 'Name'});
        this.res= (resume__c)controller.getRecord();
    }

    public String var1 {get{return 'dev1_CTRL ext1';} set;}
    
    public dev1_CTRL_ext1(dev1_CTRL controller) {
        
    }
    
    public void print() {
        //OrderNumber__c a = [select OrderNumber__c from OrderNumber__c limit 1];
        //a.OrderNumber__c++;
        //update a;
    }
    
    public void callCloud9() {
    String url = 'http://purple-concept.com/Salesforce/launch.php';
        // Instantiate a new http object
    Http h = new Http();

// Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
    HttpRequest req = new HttpRequest();
    req.setEndpoint(url);
    req.setMethod('GET');
    req.setTimeout(120000);

// Send the request, and return a response
    HttpResponse res = h.send(req);
    System.debug('REPONSE:'+res.getBody());
        
    }
}