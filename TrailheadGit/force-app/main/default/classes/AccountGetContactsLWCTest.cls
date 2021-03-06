@isTest
private class AccountGetContactsLWCTest{
    @isTest 
    static void GetAccountContactsById(){

        Id idTest = createTestRecord();
        System.debug('id criado:' +idTest);

        List<Contact> ctt = AccountGetContactsLWC.GetAccountContactsById(idTest);
        System.debug('lista recebida: '+ctt);

        System.assertEquals(1, ctt.size());
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