@isTest
public class LeadProcessorTest {
    
    @isTest
    public static void batchTest(){

        List<Lead> leadList = new List<Lead>();

        for (integer i = 0; i<=199; i++) {
            Lead ld = new Lead();
            ld.LastName = 'LastName '+i;
            ld.Company = 'Company '+i;
            leadList.add(ld);
        }
        Database.insert(leadList);

        Test.startTest();
        LeadProcessor batch = new LeadProcessor();
        Id batchId = Database.executeBatch(batch);
        Test.stopTest();

        List<Lead> result = new List<Lead>();
        result = [SELECT Id FROM Lead WHERE LeadSource = 'dreamforce' LIMIT 200];

        system.assertEquals(200, result.size(), 'falhou');

    }
}