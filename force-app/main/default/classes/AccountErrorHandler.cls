public class AccountErrorHandler {
    public static void NotDeleteAccountRelCon(List<Account> listAcc){
        for(Account acc: listAcc){
           List<Contact> listCon = [ SELECT ID FROM CONTACT WHERE ACCOUNTID =: acc.Id];
            
            System.debug('The size of the contact list is' + listCon );
            if(!listCon.isEmpty()){
                acc.addError('You cannot delete account which have contacts');
            }
        }
           }
}