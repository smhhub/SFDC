public Class WSPhp {
    public String a {get;set;}
    public WSPhp() {
    
      docSampleComDocsample.DocSamplePort stub = new docSampleComDocsample.DocSamplePort();
    
        String input = 'This is the input string';
      a = stub.search_x(input);
    
    }



}