public class FinanceCtrl {
    public final Finance__c myFinance {get; set;}
    public FinanceCtrl(ApexPages.StandardController controller) {
        myFinance = (Finance__c)controller.getRecord();
    }
    
    public pageReference GenerateInvoice() {
        OrgInvoiceNumber__c orgInvoiceNum = [select InvoiceNumber__c from OrgInvoiceNumber__c limit 1];
        orgInvoiceNum.InvoiceNumber__c++;
        
        myFinance.Invoice_Number__c = Date.today().year()+'-'+orgInvoiceNum.InvoiceNumber__c;
        update myFinance;
        update orgInvoiceNum;
        
        return null;
    }
}