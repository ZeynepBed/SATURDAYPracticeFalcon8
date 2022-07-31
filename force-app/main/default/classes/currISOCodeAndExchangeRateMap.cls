public  class currISOCodeAndExchangeRateMap {
  public  static void currExch(){
      Map<String,decimal> currISOCodeAndExchangeRateMap = new map<string,decimal>();
      currISOCodeAndExchangeRateMap.put('AUD', 0.73);
      currISOCodeAndExchangeRateMap.put('CAD', 0.78);
      currISOCodeAndExchangeRateMap.put('EUR', 1.13);
      currISOCodeAndExchangeRateMap.put('NZD', 0.68);
      currISOCodeAndExchangeRateMap.put('INR', 0.013);

      decimal curr1 = currISOCodeAndExchangeRateMap.get('CAD');
      system.debug(curr1);

      system.debug(currISOCodeAndExchangeRateMap.get('CAD'));

      boolean res2 = currISOCodeAndExchangeRateMap.containsKey('SAD');
      system.debug(res2);

      Set<String> greaterOne = new Set<String>();
      Set<String> lessOne = new Set<string>();
      for(string ISOcode : currISOCodeAndExchangeRateMap.keySet()){
          if(currISOCodeAndExchangeRateMap.get(ISOcode)>=1){
              greaterOne.add(ISOcode);
          }else if (currISOCodeAndExchangeRateMap.get(ISOcode)<1){
              lessOne.add(ISOcode);
          }

      }
      system.debug('Greater than 1 or equal = '+ greaterOne);
      system.debug('less than 1 = '+ lessOne);
       
  }
  List<opportunity> oppList = [select StageName, amount from Opportunity where StageName = 'Closed Won' AND Amount >= 35000];

  List<contact> contList = [select account.name, lastname from Contact ORDER BY lastNAme DESC  ];

  List<Account> accList = [select name,(select stageName from Opportunities where stageNAME != 'Closed Lost' )from account ];

  List<Opportunity> opp10List = [select amount from Opportunity ORDER BY Amount DESC limit 10];


  List<Opportunity> opp20LowList = [select amount from Opportunity where stageName != 'Closed Won' and stageName != 'Closed Lost' ORDER BY amount ASC limit 20];
} 
