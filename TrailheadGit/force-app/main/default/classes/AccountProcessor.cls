public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountId) {
        List<Account> accountsList = [SELECT Id, Name,(SELECT ID, Name FROM contacts), Number_Of_Contacts__c from Account WHERE ID = :accountId];//'0015f00000Pas4QAAR'
        System.debug(accountsList);

        for (Account acc : accountsList) {
            acc.Number_Of_Contacts__c = acc.Contacts.size();
        }
        
        System.debug(accountsList);
        Database.update(accountsList);
    }
}