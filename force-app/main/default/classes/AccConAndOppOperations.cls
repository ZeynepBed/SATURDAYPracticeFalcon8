public  class AccConAndOppOperations {
    public static List<Account> fetchAllAccounts(){
        List<Account> accList = [select name, annualRevenue, type ,accountsource from account];
        system.debug(accList);
        return accList;

    }

    public static void fetchOpp(string stg, string ld){
        List<Opportunity> oppList = new List<Opportunity>();
        oppList =[select name, leadsource, StageName from Opportunity where LeadSource =:ld and stageName =:stg];
        system.debug(oppList);
    }

    public static void fetchAnnualRevenue(){ 
        List<Account> accList1 = [select name, annualRevenue,(select name, amount from Opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];
         
        for(account acc : accList1){
            system.debug(acc.name +''+ acc.AnnualRevenue);
           for(Opportunity opp : acc.Opportunities){
               system.debug(opp);

             
           }

        }
    }
       public static account createAccount(string name, Decimal AnnualRevenue,string type){
           account acc = new Account();
          if(name == null){
              system.debug('Account without name cannot be created');
          }else{
              acc.name = name;
              acc.AnnualRevenue =AnnualRevenue;
              acc.Type = type;
              insert acc;
              system.debug(acc);
          }
           return acc;
       }

}
