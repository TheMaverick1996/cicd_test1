public class RandomContactFactory {
    public static list<Contact> generateRandomContacts(integer noc,string last){
	List<Contact> con=new List<Contact>();
        for(Integer i=0;i<noc;i++){
		last='Test'+i;
            Contact a=new Contact(FirstName=last,LastName=last);
            con.add(a);
        }
        return con;
    }
}