public without sharing class CTRL_Resume {
	public Integer daysAvailability {
		get ;
		set ;
	}
	public Boolean displayDocPopUp {
		get ;
		set ;
	}
	public String certifType {
		get ;
		set ;
	}
	public Decimal visitCounter {
		get {
			Decimal total = 0;
			for (Resume__c s :[SELECT visitCounter__c FROM resume__c])
			{
				total +=s.visitCounter__c;
			}
			return total;
		}
		set ;
	}
	public String ip {
		get ;
		set ;
	}
	public CTRL_Resume()
	{
		Date availability = date.newinstance(2013, 10, 21);
		Date aujourd = Date.today();
		this .daysAvailability = aujourd.daysBetween(availability);
		this .displayDocPopUp = false;
		this .certifType = '';
	}
	public pageReference initCall()
	{
		list <Resume__c >a = new list <Resume__c >();
		a = [SELECT ip__c, visitCounter__c FROM resume__c WHERE ip__c =: GetUserIPAddress()];
		if (a.size()== 0)
		{
			Resume__c b = new Resume__c();
			b.visitCounter__c = 1;
			b.ip__c = GetUserIPAddress();
			insert b;
		}
		else {
			a [0].visitCounter__c = a [0].visitCounter__c + 1;
			update a;
		}
		return null;
	}
	public pagereference showDocPopup()
	{
		this .displayDocPopUp = true;
		return null;
	}
	public pagereference closeDocPopup()
	{
		this .displayDocPopUp = false;
		return null;
	}
	private String GetUserIPAddress()
	{
		return ApexPages.currentPage().getHeaders().get ('X-Salesforce-SIP');
	}
}