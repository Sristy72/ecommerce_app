class TPricingCalculator{
  static double getTaxRateForLocation(String location){
    //Look up the tax rate for the given location from a tax rate database or API
    //Return the tax rate as a double
    return 0.1;//Example tax rate of 10%
  }

  static double getShippingCostForLocation(String location){
    //Look up the shipping cost for the given location from a shipping rate API
    //Calculate the shipping cost based on various factors like distance, weight etc.
    return 10.0;//Example shipping cost of $10
  }

  //Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingRate = getShippingCostForLocation(location);
    double totalPrice = productPrice +taxAmount + shippingRate;
    return totalPrice;
  }

  //Calculate Shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCostForLocation(location);
    return shippingCost.toStringAsFixed(2);
  }

  //Calculate Tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = taxRate * productPrice;
    return taxAmount.toStringAsFixed(2);
  }
}