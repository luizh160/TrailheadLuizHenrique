public with sharing class CreateOportunity {
    public static void CreateOportunity() {

        List<Opportunity> OpportunityList = new List<Opportunity>();
        Opportunity opp = new Opportunity();
        integer i=0;

        while ( i <= 200) {

            opp.Name = 'opp'+i;
            opp.CloseDate = Date.today();
            opp.StageName = 'Closed Won';
            OpportunityList.add(opp);

            
        }
        Database.insert(OpportunityList);
    }
}