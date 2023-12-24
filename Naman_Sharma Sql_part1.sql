

 /*database name*/
 USE naman89; 
 
 DELIMITER //
 DROP PROCEDURE IF EXISTS tax_increase_naman;


/*Procedure created*/
 CREATE PROCEDURE tax_increase_naman() 

 BEGIN 
	
    /*Declaring the variable as a decimal data type*/
	DECLARE tax_increase DECIMAL(5,2);
     
	/*Increased by 9% as last two digit of STUDENT number is 9*/
	SET tax_increase = 9;

	/*Update text rate of those states whose name starts with A*/
    UPDATE sales_tax_rate
    	SET tax_rate = tax_rate + tax_increase WHERE state LIKE 'A%' ; 
    
 END //
 DELIMITER ;
 
 /*Calling the procedure*/
 CALL tax_increase_naman(); 