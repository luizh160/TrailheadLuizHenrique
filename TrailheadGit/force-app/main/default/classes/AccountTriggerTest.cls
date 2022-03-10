@isTest
private class AccountTriggerTest {

    @isTest
    public static void AccountTriggerTest(){

        List<Account> accountList = new List<Account>();
        System.debug('tamanho da lista: '+accountList.size());
        

        for (integer i = 0; i < 200; i++) {
            Account acct = new Account();
            acct.Name = 'trigger test'+i;
            acct.BillingState = 'CA';
            acct.ShippingState = '';
            accountList.add(acct);
        }
        Account acct = new Account();
        acct.Name = 'trigger test'+201;
        acct.BillingState = 'CA';
        acct.ShippingState = 'CA';
        accountList.add(acct);

        Test.startTest();
        Database.insert(accountList);
        List<Account> accountResult = [SELECT Id, Name FROM Account Limit 200];
        //System.assertEquals('CA',result.ShippingState, 'erro');
        Test.stopTest();

    }
}