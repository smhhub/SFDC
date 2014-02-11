global class codeCoverageJob implements Schedulable {



   public static String CRON_EXP = '0 31 0 * * ?';
   
   global void execute(SchedulableContext ctx) {
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