public with sharing class ContactDAO {
    public static Contact getContactById(String contactId) {
       
        return [SELECT Name, Phone, MobilePhone, CPF__c, is_active__c, AccountId  FROM Contact where Id =:contactId];//'0035f00000FlLDsAAN'
    }

    public static List<Contact> getContactListId (List<Account> accountList){
        return [SELECT Id, Inactive_Account__c, AccountId FROM Contact WHERE AccountId IN :accountList];

    }

    public static List<Contact> getContactByIdFromLWC(Id accountId) {
       
        return [SELECT FirstName, LastName, Email, Phone FROM Contact WHERE AccountId = :accountId ];//0015f00000Pas4QAAR AZIMUTE
    }


}