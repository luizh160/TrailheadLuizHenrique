@isTest
global class ParkServiceMock implements WebServiceMock {
   global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
        // start - specify the response you want to send
        ParkService.byCountryResponse response_x = 
            new ParkService.byCountryResponse();

            List<String> parques = new List<String> {'ibira1','ibira2','ibira3','ibira4'};
            
            response_x.return_x = parques;
        // end
        response.put('response_x', response_x); 
   }
}