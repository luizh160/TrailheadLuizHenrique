public with sharing class AccountUtils {
    public static List<Account> accountsByState(String billingState ) {

        List<Account> accountList = new List<Account>();
        for (Account acct : [SELECT Id, Name FROM Account WHERE BillingState = :billingState]) {

            accountList.add(acct);
            
        }

        return accountList;
    }
}