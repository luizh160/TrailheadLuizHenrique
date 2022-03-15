public with sharing class AccountGetContactsLWC {

    @AuraEnabled(cacheable=true)
    public static List<Contact> GetAccountContactsById(Id accountId) {

        return ContactDAO.getContactByIdFromLWC(accountId);

    }
}