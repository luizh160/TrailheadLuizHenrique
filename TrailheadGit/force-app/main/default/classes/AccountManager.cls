@RestResource(urlMapping='/Accounts/*/contacts')
//@RestResource(urlMapping='/Accounts/contacts/*')

global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {

        RestRequest request = RestContext.request;
        Account acountRest;

        
        // grab the caseId from the end of the URL
        //String accountId = request.requestURI.substringAfterLast('/');
        String accountId = request.requestURI.substringBetween('Accounts/', '/contacts');
        System.debug(accountId);
        acountRest = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id = :accountId];
    

        return acountRest;
    }


//select Id, Name, from Account
//select Id, Name  from Contact where AccountId = '0015f00000M4mYBAAZ'
//SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account WHERE Id = '0015f00000M4mYBAAZ'
// /services/data/v53.0/services/apexrest/Accounts/0015f00000M4mYBAAZ/contacts/
}