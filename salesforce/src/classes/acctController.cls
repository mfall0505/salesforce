public class acctController {

    public String getSearchtext() {
        return null;
    }


    public String getSelected() {
        return null;
    }


    public PageReference save() {
        return null;
    }


    public Account getAccount() {
        return account;
    }
    public Account account;
    public acctController(){
    
    account=[Select Id, Name, Phone from Account where Id =: apexpages.currentpage().getparameters().get('Id')];
    
    }

}