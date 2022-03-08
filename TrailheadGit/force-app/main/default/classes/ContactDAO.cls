public with sharing class ContactDAO {
    public static Contact getContactById(String contactId) {
       
        return [SELECT Name, Phone, MobilePhone, CPF__c, is_active__c, AccountId  FROM Contact where Id =:contactId];//'0035f00000FlLDsAAN'
    }

    public static List<Contact> getContactListId (List<Account> accountList){
        return [SELECT Id, Inactive_Account__c, AccountId FROM Contact WHERE AccountId IN :accountList];

    }
}