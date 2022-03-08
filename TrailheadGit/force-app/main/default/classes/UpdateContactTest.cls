@isTest
private class UpdateContactTest {
    @testSetup
    public static void setup(){
        Account acc = new Account();
        acc.Name = 'NTT';
        Database.insert(acc);

        Contact ctt = new Contact();
        ctt.AccountId = acc.Id;
        ctt.Phone = '';
        ctt.MobilePhone = '';
        ctt.CPF__c = '';
        ctt.is_active__c = true;
        ctt.LastName = 'Lima';
        ctt.FirstName = 'Luiz';

        Database.insert(ctt);

    }
    
    @isTest static void selectContactTest() {
        Account acc = [SELECT ID, Name FROM Account LIMIT 1];
        Contact ctt = [SELECT ID, AccountId, Phone, MobilePhone, CPF__c, is_active__c, LastName, FirstName FROM Contact WHERE AccountId = :acc.ID];

        Test.startTest();
        Contact contact = UpdateContact.selectContact(ctt.Id);
        Test.stopTest();
        System.debug('Retorno metodo' + contact);
        System.assertEquals('999-777-9999', contact.Phone,'Numero de telefone errado');

    }

    @isTest static void selectPhoneError() {

        Contact ctt = [SELECT ID, AccountId, Phone, MobilePhone, CPF__c, is_active__c, LastName, FirstName FROM Contact LIMIT 1];
        ctt.Phone = '123456';
        update ctt;
        
        Test.startTest();
        Contact contact = UpdateContact.selectContact(ctt.Id);
        Test.stopTest();
        System.debug('Retorno metodo' + contact);
        System.assertEquals('123456', contact.Phone,'Numero de telefone foi atualizado');

    }
}