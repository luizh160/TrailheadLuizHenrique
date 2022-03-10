public with sharing class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accountsRecived) {
        
        List<Account> accountsList = new List<Account>();

        for (Account acc : accountsRecived) {

            if (acc.BillingState == acc.ShippingState) {
                accountsList.add(acc);
            }else {
                acc.ShippingState = acc.BillingState;
                accountsList.add(acc);
            }
            
        }
    }
}
