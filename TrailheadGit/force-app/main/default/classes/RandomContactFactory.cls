public class RandomContactFactory {

    public static list<contact> generateRandomContacts(integer contactNumber, string contactLastName) {

        list<contact> contactList = new list<contact>();
        System.debug('numero ' + contactNumber);
        System.debug('nome' + contactLastName);

        for(integer i=1; i<=contactNumber; i++) {  
           
            contact ctt = new contact(firstname='Test ' + i, lastname = contactLastName);
            contactList.add(ctt);
            System.debug('contato criado ' + ctt);

        }

        System.debug('lista de contato ' + contactList);
        return contactList;

    }

}