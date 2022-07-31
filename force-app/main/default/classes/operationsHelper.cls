public  class operationsHelper {
    public static Decimal largeOutOfTwoNumbers(decimal num1,decimal num2) {
        decimal large;
        if(num1<num2){
            large=num2;
        }else{
            large = num1;
        }
        return large;
    }

    public static decimal smallestOutOfThreeNumber(decimal x,decimal y, decimal z) {
        decimal small;
        if(x<=y && x<=z){
            return x;
        }else if(y<=x && y<=z){
            return y;
            
        }else{
            return z;
        }
    }
    public static integer sumOfPositiveInteger(integer n) {
        integer sum;
        if(n<0){
            system.debug('we are not calculating the sum for negative numbers');
        }else{
            sum= 0;
            for(integer i=1;i<=n;i++){
                sum+=i;
            }
        }
        return sum;
    }
}
