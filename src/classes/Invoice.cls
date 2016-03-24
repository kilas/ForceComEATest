public class Invoice {
	public String name {
		get; set;
	}
 public Invoice__c invoice {
 	get; set;
 }
    
    public Opportunity opp {
        get; set;
    }
    
    public String city{
        get; set;
    }
    
    public String state{
        get; set;
    }
    
     public String zip{
        get; set;
    }
     public String streetAddress{
        get; set;
    }
    
 public Invoice() {  
  opp = [select id, account.name, account.BillingAddress, account.id from opportunity where id='00661000005urHH']; 
 // acc = [select Account from Opportunity where id = '00661000005urHH'];
  system.debug('name invoice ' + opp.account.name);
     state = opp.account.BillingAddress.getState();
     city = opp.account.BillingAddress.getCity();
     zip = opp.account.BillingAddress.getPostalCode();
     streetAddress = opp.account.BillingAddress.getStreet();
     system.debug('address ' + opp.account.BillingAddress.getState() + state + city+zip+streetAddress);
     system.debug('id ' + opp.account.id);
    
 }
 public PageReference save() {
     System.debug('state :: ' + state);
     Invoice__c invoice = new Invoice__c(
     	invoice_City__c = city,
        Invoice_State__c = state
        //Opportunity = opp
     );
  insert invoice;
  return null;
 }
    
    public list<account> getAccounts(){	    
	    List<Account> acc = [select id, name from account limit 10];       
	    return acc;
	}
}