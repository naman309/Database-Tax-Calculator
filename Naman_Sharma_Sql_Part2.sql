

/*=database name*/
USE naman89; 

/*Trigger created*/
CREATE TRIGGER capt_naman 

/*Perform trigger before inserting data into table*/
BEFORE INSERT ON geo_provinces_ca 
FOR EACH ROW

/*convert lowercase to uppercase*/
SET NEW.iso = UPPER(NEW.iso); 