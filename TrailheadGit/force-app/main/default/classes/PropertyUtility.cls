public with sharing class PropertyUtility {

    public static void newListedProperties() {

        //List<Property__c> newPropList = [SELECT Name, Broker__r.Email__c, Days_On_Market__c  FROM Property__c WHERE Date_Listed__c  <= LAST_MONTH];
        List<Property__c> newPropList = [SELECT Name, Broker__r.Email__c, Days_On_Market__c  FROM Property__c WHERE Days_On_Market__c  <= 30];
        String propEmail;

        for (Property__c property : newPropList) {

            propEmail = property.Name + ' : '+ property.Broker__r.Email__c;   

            System.debug(propEmail);
        }
               
    }
}