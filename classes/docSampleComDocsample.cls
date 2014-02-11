//Generated by wsdl2apex

public class docSampleComDocsample {
    public class search_element {
        public String keywords;
        private String[] keywords_type_info = new String[]{'keywords','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://doc.sample.com/docSample','true','false'};
        private String[] field_order_type_info = new String[]{'keywords'};
    }
    public class searchResponse_element {
        public String searchResult;
        private String[] searchResult_type_info = new String[]{'searchResult','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://doc.sample.com/docSample','true','false'};
        private String[] field_order_type_info = new String[]{'searchResult'};
    }
    public class DocSamplePort {
        public String endpoint_x = 'http://purple-concept.com/salesforce/Customer.php';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://doc.sample.com/docSample', 'docSampleComDocsample'};
        public String search_x(String keywords) {
            docSampleComDocsample.search_element request_x = new docSampleComDocsample.search_element();
            docSampleComDocsample.searchResponse_element response_x;
            request_x.keywords = keywords;
            Map<String, docSampleComDocsample.searchResponse_element> response_map_x = new Map<String, docSampleComDocsample.searchResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'urn:dotnet.callouttest.soap.sforce.com/search',
              'http://doc.sample.com/docSample',
              'search',
              'http://doc.sample.com/docSample',
              'searchResponse',
              'docSampleComDocsample.searchResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.searchResult;
        }
    }
}