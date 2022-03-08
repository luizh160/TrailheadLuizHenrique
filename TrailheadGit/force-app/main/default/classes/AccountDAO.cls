public with sharing class AccountDAO {
    public static Account getAccountById(String accountId) {
        return [SELECT Id, change_type__c, name FROM Account WHERE Id =:accountID]; //'0015f00000I6BEoAAN'

    }
}