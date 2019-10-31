
INSERT INTO Orders (
  SaleDate,
  DayOfYear, 
  MonthOfYear, 
  QuarterOfYear, 
  SoldThrough ,
  BuyerUserId ,
  FullName,
  FirstName ,
  LastName ,
  NumberOfItems,
  PaymentMethod ,
  DateShipped,
  Street1 ,
  Street2 ,
  ShipCity ,
  ShipState ,
  ShipZipCode ,
  ShipCountry ,
  Currency ,
  OrderValue ,
  CouponCode ,
  CouponDetails ,
  DiscountAmount,
  ShippingDiscount,
  Shipping,
  SalesTax,
  OrderTotal,
  Status,
  CardProcessingFees,
  OrderNet,
  AdjustedOrderTotal,
  AdjustedCardProcessingFees,
  AdjustedNetOrderAmount,
  Buyer ,
  OrderType ,
  PaymentType ,
  InPersonDiscount ,
  InPersonLocation 
)



select
  MID(SaleDate, 1, 2) as SaleMonth,  
  MID(SaleDate, 4, 2) as SaleDay, 
  CONCAT('20', MID(SaleDate, 7, 2)) as SaleYear ,
  DATE( 
    CONCAT( 
      CONCAT('20', MID(SaleDate, 7, 2)), 
      '-', 
      MID(SaleDate, 1, 2),
      '-', 
      MID(SaleDate, 4, 2) 
      ) 
    ) as DateOfSale
  FROM `tempOrders`;
