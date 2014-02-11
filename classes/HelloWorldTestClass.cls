@isTest 
public class HelloWorldTestClass {
    static testMethod void validateHelloWorld() {
       
       System.debug('Price after trigger fired: ');
        CTRL_Resume a = new CTRL_Resume();
        a.initCall();
        a.showDocPopup();
        a.closeDocPopup();
          
        //CTRL_SeLoger b = new CTRL_SeLoger();
    }
}