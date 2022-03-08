public with sharing class ContactSearch {
    public Static List<contact> searchForContacts(String lastName ,String mailingPostalCode) {
        List<Contact> contactList = new List<Contact>();
        
        //contactList = [SELECT Id, Name FROM Contact WHERE LastName =:lastName];
        //System.debug('retorno do select' + contactList);

        for (Contact ctt : [SELECT Id, Name, MailingPostalCode  FROM Contact WHERE LastName =:lastName]) {
            if (ctt.MailingPostalCode == mailingPostalCode) {
                System.debug('var ctt '+ctt);
                contactList.add(ctt);
                
            }
            
        }

        System.debug('retorno do metodo' + contactList);
        return contactList;

    }
}