public class ContactSearch {
    public static List<Contact> searchForContacts(String a,String b)
    {
        List<Contact> ctr = [SELECT Id,Name FROM Contact WHERE LastName=:a AND MailingPostalCode=:b];
        return ctr;        
}

}