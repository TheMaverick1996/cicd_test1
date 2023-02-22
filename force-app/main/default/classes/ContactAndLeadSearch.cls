public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String s)
    {
        List<List<SObject>> searchList = [FIND :s IN Name FIELDS 
                   RETURNING Contact(FirstName,LastName,Department),Lead];
            return searchList;
}

}