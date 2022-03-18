public Without Sharing class AddPrimaryContact implements Queueable {
    
    private Contact contact;
    private String state;
    
    public AddPrimaryContact(Contact inputContact, String inputState) {
        this.contact = inputContact;
        this.state = inputState;
    }

    public void execute(QueueableContext context){

        List<Account> accounts = [SELECT Id FROM Account WHERE BillingState = :state LIMIT 200];

        List<Contact> contacts = new List<Contact>();

        for (Account acc : accounts) {

            Contact contactclone = contact.clone();
            contactclone.AccountId = acc.Id;
            contacts.add(contactclone);
            
        }
        insert contacts;
        
    }
}