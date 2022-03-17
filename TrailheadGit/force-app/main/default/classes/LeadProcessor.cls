public class LeadProcessor implements
    Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator('SELECT Id, LeadSource FROM Lead');

    }
    public void execute(Database.BatchableContext bc, List<Lead> leads){
        List<Lead> leadList = new List<Lead>();
        for (Lead lead : leads) {
            lead.LeadSource = 'Dreamforce';
            leadList.add(lead);
        }
        update leadList;
    }
    public void finish(Database.BatchableContext bc){


    }
}