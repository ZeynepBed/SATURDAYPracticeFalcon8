public  class calculator {
    public static decimal dynamicCalulationMethod(decimal x,decimal y,string type) {
        switch on type {
            when 'addition' {
               return x+y;
            }
            when 'substriction' {
                return x-y;
            }
            when 'division'{
                return x/y;
            }
            when 'multiplication'{
                return x*y;
            }
            when else{
                return null;
            }
        }
        
    }
}
