@isTest
public class DailyLeadProcessorTest {
    
    private static String CRON_EXP = '0 0 0 ? * * *';

    @isTest
    private static void TestSchedulableClass () {

        List<Lead> leads = new List<Lead>();
        for (integer i=0; i<500; i++) {
            if (i<250) {
                leads.add(new Lead(Lastname='Connock', Company='Salesforce'));
            } else{
                leads.add(new Lead(Lastname='Connock', Company='Salesforce', LeadSource='Other'));
            }
        }
        insert leads;

        Test.startTest();

        String jobId = System.schedule('Process Leads', CRON_EXP, new DailyLeadProcessor());

        Test.stopTest();

        List<Lead> updateLeads = [SELECT Id,LeadSource FROM Lead WHERE LeadSource = 'Dreamforce'];
        System.assertEquals(200, updateLeads.size(), 'ERROR: at least 1 record not updated correctly');

        List<CronTrigger> cts = [SELECT Id, TimesTriggered, NextFireTime FROM CronTrigger WHERE id=:jobId];

    }
}
