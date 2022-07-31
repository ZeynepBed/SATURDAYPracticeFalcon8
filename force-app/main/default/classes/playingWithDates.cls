public  class playingWithDates {
   public void printDateOutput(){
       Date todayDate = Date.today();
       System.debug(todayDate);

       Date future = Date.newInstance(2789, 11, 5);
       System.debug(future);

       Date past = Date.newInstance(1459, 3, 4);
       System.debug(past);

       Integer dayInt = 15;
       Integer monthInt = 3;
       Integer yearInt = 1998;

       Date newDate = Date.newInstance(yearInt, monthInt, dayInt );
       System.debug(newDate);
   }
}
