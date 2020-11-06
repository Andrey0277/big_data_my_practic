 create table ivanenko_shema.VendorID (ID int, Name varchar(40))WITH (
    DISTRIBUTION = REPLICATE
)

insert into ivanenko_shema.VendorID (ID, Name)
values (1, 'Creative Mobile Technologies, LLC') 
insert into ivanenko_shema.VendorID (ID, Name) 
values (2, 'VeriFone Inc.') 

create table ivanenko_shema.RateCodeID (ID int, Name varchar(40)) WITH (
    DISTRIBUTION = REPLICATE
)

insert into ivanenko_shema.RateCodeID (ID, Name) 
values (1, 'Standard rate') 
insert into ivanenko_shema.RateCodeID (ID, Name) 
values (2, 'JFK') 
insert into ivanenko_shema.RateCodeID (ID, Name)
values (3, 'Newark') 
insert into ivanenko_shema.RateCodeID (ID, Name) 
values (4, 'Nassau or Westchester') 
insert into ivanenko_shema.RateCodeID (ID, Name)
 values (5, 'Negotiated fare') 
insert into ivanenko_shema.RateCodeID (ID, Name) 
values (6, 'Group ride') 

create table ivanenko_shema.Payment_type (ID int, Name varchar(40)) WITH (
    DISTRIBUTION = REPLICATE
)

insert into ivanenko_shema.Payment_type (ID, Name) 
values (1, 'Credit card') 
insert into ivanenko_shema.Payment_type (ID, Name)
 values (2, 'Cash') 
insert into ivanenko_shema.Payment_type (ID, Name)
 values (3, 'No charge') 
insert into ivanenko_shema.Payment_type (ID, Name)
 values (4, 'Dispute') 
insert into ivanenko_shema.Payment_type (ID, Name)
 values (5, 'Unknown') 
insert into ivanenko_shema.Payment_type (ID, Name)
 values (6, 'Voided trip') 