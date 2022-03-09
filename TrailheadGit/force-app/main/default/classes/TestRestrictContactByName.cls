@isTest
private class TestRestrictContactByName {

    public void TestRestrictContactByNameError() {
        Test.startTest();
        //List<Contact> contactList = new List<contact>();

        Contact contactTestErro = new Contact();
        contactTestErro.LastName = 'INVALIDNAME';
        //contactTestErro.FirstName = 'Erro';
        //contactList.add(contactTestErro);

        Test.startTest();
            
        //Database.insert(contactList);
        Database.SaveResult result = Database.insert(contactTestErro, false);
        System.assert(result.getErrors().size() > 0);

        Test.stopTest(); 
    }
}