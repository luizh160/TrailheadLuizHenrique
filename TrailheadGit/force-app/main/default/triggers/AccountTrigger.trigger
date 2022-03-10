trigger AccountTrigger on Account (before insert) {
    if (trigger.isBefore) {

        if (trigger.isInsert) {

            List<Account> accountList = new List<Account>();

            for(Account acc: Trigger.new){
                accountList.add(acc);
            }
            AccountTriggerHandler.CreateAccounts(accountList);
            
        }
        
    }

}