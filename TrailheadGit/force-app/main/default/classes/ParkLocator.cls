public with sharing class ParkLocator {
    public Static List<String> country(String pais) {
        ParkService.ParksImplPort parkservice = new ParkService.ParksImplPort();
        List<String> parksName = parkservice.byCountry(pais);
        System.debug(parksName);
        return parksName;
        
    }
}