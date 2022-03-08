public with sharing class UpdateContact {

    public static Contact selectContact(string contactId){
        Contact getcontact = new Contact();
        try {

            getcontact = ContactDAO.getContactById(contactId);
            System.debug('Contato Encontrado: ' + getcontact);
            
        } catch (System.QueryException e) {

           System.debug('Não retornou nada');

        }
        
        if(getcontact != null){
            System.debug('Entrou no IF');   
            return updateContactData(getcontact);
        }else{
            return null;
        }
    }
    
    public static Contact updateContactData(Contact getcontact){
        //Contact getcontact = ContactDAO.getContactById(getcontact.Id);

        if (getcontact.Phone == null) {

            getcontact.Phone = '999-777-9999';

        }

        //getcontact.name = 'luiz henrique';
        
        getcontact.MobilePhone = '777-888-8888';
        getcontact.CPF__c = '123.456.777-13';
        getcontact.is_active__c = false;

        update getcontact;
        System.debug('Contato Atualizado: '+getcontact);
        return getcontact;
        //accountData.change_type__c = 'Manual Change';
        //update accountData;
    }

}