public class AccountList {
    
    public static void displaynameacct(){
        List<Account> acct=[select ID,name from Account];
    
   System.debug('The ID of the account is :' + acct[0].ID);
}
}