@isTest
public class AccountProcessorTest {
    
    @isTest
    public static void countContactsTest(){
        Account acct = New Account();
        acct.name = 'teste processor';
        database.insert(acct);

        List<Id> accountId = new List<Id>();
        List<Contact> contactsList = new List<Contact>();
        for (integer i = 0; i <= 4; i++) {
            Contact ctt = new Contact();
            ctt.AccountId = acct.Id;
            ctt.LastName = 'teste'+i;
            contactsList.add(ctt);

            accountId.add(acct.Id);
        }
        database.insert(contactsList);

        Test.startTest();

        AccountProcessor.countContacts(accountId);

        Test.stopTest();

        Account result = [SELECT Number_of_Contacts__c FROM Account LIMIT 1];
        
        System.assertEquals( result.Number_of_Contacts__c , 5);
    }
}