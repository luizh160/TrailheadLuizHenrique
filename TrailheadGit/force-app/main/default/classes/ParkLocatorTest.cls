@isTest
private class ParkLocatorTest{
    @isTest 
    static void testParkLocator() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        List<String> parkList = ParkLocator.country('Brasil');
        List<String> respostaCerta = new List<String>{'ibira1','ibira2','ibira3','ibira4'};
        System.assertEquals(respostaCerta, parkList,'comparação incorreta');
    }
}