trigger AccountTrigger on Account (after update, after insert) {

    List<Contact> contactList = ContactDAO.getContactListId(Trigger.new);
    List<Contact> contact = new List<Contact>();
    List<Account> accountList = [SELECT Id, Active__c FROM Account WHERE Id IN :Trigger.new];
    List<Account> account = new List<Account>();
    for (Account acc : accountList) {

        if (acc.Active__c == true) {
            for (Contact ctt : contactList) {
                if (ctt.Inactive_Account__c != true ) {
                    ctt.Inactive_Account__c = true;
                    contact.add(ctt);            
                }
            } 

        }else {
        
            for (Contact ctt : contactList) {
                if (ctt.Inactive_Account__c != false ) {
                    ctt.Inactive_Account__c = false;
                    contact.add(ctt);            
                }                       
            } 
        }   
    }    
    Database.update(contact);

}