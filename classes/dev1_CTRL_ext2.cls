public with sharing class dev1_CTRL_ext2 {

    public dev1_CTRL_ext2(ApexPages.StandardController controller) {
       
    }

    public String var1 {get{return 'dev1_CTRL ext2';} set;}
    public dev1_CTRL_ext2(dev1_CTRL controller) {

    }
    
    public PageReference save() {
    //update account;
    PageReference secondPage = Page.dev2;
    secondPage.setRedirect(false);
    return secondPage;
    }

}