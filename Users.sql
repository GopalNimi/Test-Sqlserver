/******** Tables created for mutiple users to Pay ********/
/******************** Visa Fee aganist *******************
/******** Country, VisaCategoryId and SubVisaCategoryId******/


/****** Country Table*****/

CREATE TABLE Country(
    CountryId int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,    
    PRIMARY KEY (CountryId)  
);


/****** Visa Category Table*****/

CREATE TABLE VisaCategory(
    VisaCatgoryId Int NOT NULL AUTO_INCREMENT,
    VisaCatName Varchar(255) NOT NULL,
    Country Id Int NOT NULL,
    PRIMARY KEY (VisaCatgoryId)  
);


/****** Visa SubCategory Table *****/

CREATE TABLE Sub_VisaCategory(
    Sub_VisaCatId Int NOT NULL AUTO_INCREMENT,
    Sub_VisaCatName Varchar(255) NOT NULL,
    Country Id Int NOT NULL,
    PRIMARY KEY (Sub_VisaCatgId)  
);

/****** Visa Fee Mapping Table *****/

CREATE TABLE VisaCate_mapping(
    VisaCate_mappId Int NOT NULL AUTO_INCREMENT,
    VisaCatgoryId Int NOT NULL,
    Sub_VisaCatId Int NOT NULL,
    Fee Decimal(8,2) NOT NULL,
    Tax Int NOT NULL,
    PRIMARY KEY (VisaCate_mappId)  
);

/****** Users Table*****/

CREATE TABLE Users(
    UserId Int NOT NULL AUTO_INCREMENT,
    LastName varchar(255),
    FirstName varchar(255),
    CountryId Int  
);

/****** Transaction Table*****/

CREATE TABLE Transaction(
    TransactionId Int NOT NULL AUTO_INCREMENT,
    UserId Int NOT NULL,
    CountryId Int,  
    VisaCatId Int,
    Sub_VisaCatId Int,
    Total Fee Decimal(8,2)
);