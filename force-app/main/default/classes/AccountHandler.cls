public class AccountHandler {
    public static Account insertNewAccount(String s)
    {
        try
        {
            Account acc=new Account(Name=s);
            insert acc;
            return acc;
		}
        catch(DmlException d)
        {
            return NULL;
        }
	}

}