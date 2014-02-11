public class page1CTRL {
    public String myURL {get;set;}
    public String accountURL {get;set;}
    
    public page1CTRL() {
         myURL = '';
         accountURL = '';
    }
    
    public pageReference action() {
        account a = new account(name='account1');
        upsert a;
        myURL ='/apex/page2?param1='+a.id;
        accountURL = '/'+a.id;
        /*
        PageReference ref=new PageReference('/'+a.id);
        ref.setRedirect(true);
        return ref;
        */
        return null;
    }

}