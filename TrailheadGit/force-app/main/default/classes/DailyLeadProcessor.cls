public Without sharing class DailyLeadProcessor implements Schedulable {

    public void execute(SchedulableContext ctx){

        List<Lead> leads = [SELECT Id, Leadsource FROM Lead WHERE Leadsource = NULL LIMIT 200];
        for (Lead l : leads) {

            l.LeadSource = 'Dreamforce';
            
        }
        update leads;
        
    }
}
