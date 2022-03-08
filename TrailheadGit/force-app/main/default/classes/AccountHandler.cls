public with sharing class AccountHandler {

    public Static Account insertNewAccount(String acctName) {
        Account acct = new Account();

        acct.Name = acctName;

        try {
            database.insert(acct);
            System.debug(acct);
            System.debug('deu bom');
            return acct;

        } catch (System.DmlException e) {
        
            System.debug('deu ruim');
            return null;

        }
    }
}