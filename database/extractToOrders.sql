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
