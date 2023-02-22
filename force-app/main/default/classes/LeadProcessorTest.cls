@isTest
public class LeadProcessorTest {
@isTest
    public static void testit(){
    LIst<lead> l_lst=new List<lead>();
        for(Integer i=0;i<200;i++){
		Lead l=new Lead();
            l.LastName='name'+i;
            l.Company='Company';
            l.Status='Random Status';
            l_lst.add(l);
        }
        insert l_lst;
        Test.startTest();
        LeadProcessor lp=new LeadProcessor();
        Id batchId=Database.executeBatch(lp);
        Test.stopTest();
    }
}