@IsTest
private class AccountManagerTest {
    
    @isTest static void testGetAccount() {

    Id accountId = createTestRecord();
    // Set up a test request
    RestRequest request = new RestRequest();
    request.requestUri = '/services/apexrest/Accounts/'+accountId+'/contacts';
    request.httpMethod = 'GET';
    RestContext.request = request;
    Account accRequest = AccountManager.getAccount();

    System.assertEquals(accountId,accRequest.id,'falhou');

    }

    static Id createTestRecord() {
        Account acct = new Account();
        acct.Name = 'teste';
        Database.insert(acct);

        Contact ctt = new Contact();
        ctt.AccountId = acct.Id;
        ctt.LastName = 'teste';
        
        Database.insert(ctt);
        return acct.Id;
    }
}