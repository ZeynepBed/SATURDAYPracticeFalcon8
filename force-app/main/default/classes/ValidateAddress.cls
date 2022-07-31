public  class ValidateAddress {
    public void validateHomeAddress(){
        String houseName = 'Flower';
        
        String streetName = 'Caldewood Dr.';
        String cityName = 'Antioch';
        String stateName = 'Tennesse';
        String stateISOcode = 'TN73473';
        String cauntryName = 'US';
        String countryISOcode = 'US62373';
        
        
        Integer lengthOFstreetName = streetName.length();
        System.debug(lengthOFstreetName);

        Boolean isContainsName = streetName.contains(houseName);
        System.debug(isContainsName);

        Boolean isContainIso = streetName.contains(stateISOcode);
        System.debug(isContainIso);

        String upperStateISOcode = stateISOcode.toUpperCase();
        System.debug(upperStateISOcode);

        String upperCountryISOcode = countryISOcode.toUpperCase();
        System.debug(upperCountryISOcode);

        String uppercountryName = cauntryName.toUpperCase();
        System.debug(uppercountryName);

        String lowerCityName= cityName.toLowerCase();
        System.debug(lowerCityName);

        String lowerStateName = stateName.toLowerCase();
        System.debug(lowerStateName);

        String varTotal = houseName +' '+ streetName + ' ' + cityName + ' ' + stateName + ' ' + cauntryName;
        System.debug(varTotal);



        
    }
}
