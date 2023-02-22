@isTest
private class DailyLeadProcessorTest {
@testSetup
    static void setup(){
	List<Lead> lstofLead=new list<lead>();
        for(Integer i=1;i<=200;i++){
		Lead ld=new Lead(Company ='Comp' +i,LastName='LN'+i,Status='Working - Contacted');
            lstofLead.add(ld);
        }
        Insert lstofLead;
    }
    static testmethod void testDailyLeadProcessorScheduledJob(){
        String sch='0 5 12 * * ?';
        Test.startTest();
        String jobId=System.Schedule('ScheduledApexTest',sch,new DailyleadProcessor());
        List<Lead> lstofLead=[SELECT Id FROM Lead WHERE LeadSource =null LIMIT 200];
        System.assertEquals(200, lstofLead.size());
        Test.stopTest();
    }
}