-- drop table user
CREATE TABLE [User]
(
 [ID] int PRIMARY KEY IDENTITY(1,1),  
 FirstName varchar (30),  
 MiddleInitial char(1),  
 LastName varchar(30),  
 NickName varchar(30),  
 EmailAddress varchar(30),  
 MailingAdress varchar(50),
 PrimaryPhone varchar(30),  
 AlternatePhone varchar(30),  
 isVerified bit
); 

-- DROP TABLE [UserSettings]
CREATE TABLE [UserSettings]
(
 [ID] int PRIMARY KEY IDENTITY(1,1),  
 [UserID] int FOREIGN KEY (USERID) REFERENCES [User](AIID),
 ProfileImage VARBINARY(MAX),  
 Language varchar(30),  
 Industries varchar(30),  
 IsDarkMode bit,  
 Bio varchar(50)
); 

-- drop table [UserSubscription]
CREATE TABLE [UserSubscription]
(
 [ID] int PRIMARY KEY IDENTITY(1,1),  
 [UserID] int FOREIGN KEY (USERID) REFERENCES [User](AIID),
 PricingPlanID int FOREIGN KEY REFERENCES [PricingPlan](PricingPlanID),
 IsActive bit
); 

-- drop table inapppurchase
CREATE TABLE [InAppPurchases]
(
 [ID] int PRIMARY KEY IDENTITY(1,1),  
 [Name] varchar(30),  
 Rate varchar(30),  
 IsActive bit
); 

-- drop table [UserNotificationSettings]
CREATE TABLE [UserNotificationSettings]
(
 [ID] int PRIMARY KEY IDENTITY(1,1),  
 [UserID] int FOREIGN KEY (USERID) REFERENCES [User](AIID),
 IsUserActivity bit,
 IsPromotionOffer bit,
 IsProductUpdate bit,
 IsRegulatory bit NULL DEFAULT 1
); 

-- DROP TABLE [UserType]
CREATE TABLE [UserType]
(
 [ID] int PRIMARY KEY IDENTITY(1,1),  
 Name varchar (30),  
 [Description] varchar(500)
); 

-- drop table [PricingPlan]
CREATE TABLE [PricingPlan]
(
 PricingPlanID int PRIMARY KEY IDENTITY(1,1),  
 [Name] varchar (30),  
 Term char(1),  
 Rate varchar(30),  
 UploadLimit int,  
 WaterMarkLimit int,  
 [Description] varchar(500)
); 
