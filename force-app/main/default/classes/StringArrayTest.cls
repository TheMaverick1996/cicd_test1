public class StringArrayTest {
    public static String[] generateStringArray(Integer n)
    {
        String[] listsamp = new String[n];
        for(Integer i=0;i<n;i++) {
            listsamp[i]='Test '+i;
        }
        return listsamp;
	}
}