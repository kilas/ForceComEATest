//Generated by wsdl2apex

public class AsyncOnboardingSalesforceCom {
    public class getCommissionsResponseFuture extends System.WebServiceCalloutFuture {
        public Double getValue() {
            onboardingSalesforceCom.getCommissionsResponse response = (onboardingSalesforceCom.getCommissionsResponse)System.WebServiceCallout.endInvoke(this);
            return response.return_x;
        }
    }
    public class AsyncGetCommisionsPort {
        public String endpoint_x = 'http://onboarding-services.herokuapp.com/services/commissions';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://onboarding.salesforce.com/', 'onboardingSalesforceCom'};
        public AsyncOnboardingSalesforceCom.getCommissionsResponseFuture beginGetCommissions(System.Continuation continuation,String arg0,String arg1) {
            onboardingSalesforceCom.getCommissions request_x = new onboardingSalesforceCom.getCommissions();
            request_x.arg0 = arg0;
            request_x.arg1 = arg1;
            return (AsyncOnboardingSalesforceCom.getCommissionsResponseFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncOnboardingSalesforceCom.getCommissionsResponseFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://onboarding.salesforce.com/',
              'getCommissions',
              'http://onboarding.salesforce.com/',
              'getCommissionsResponse',
              'onboardingSalesforceCom.getCommissionsResponse'}
            );
        }
    }
}