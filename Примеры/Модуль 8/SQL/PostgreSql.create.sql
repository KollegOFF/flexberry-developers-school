

CREATE SEQUENCE Sequencef7aff5bb50224ad1bcab800fac887b1a START 1;

CREATE SEQUENCE Sequence136ad0f9d47f41388b8eb6456027dfe8 START 1;

CREATE SEQUENCE Sequence479d1ec8cd0b46d8b3c69f268b41b2b3 START 1;

CREATE SEQUENCE Sequence37b9618b03724229a98c1f5233791a65 START 1;

CREATE SEQUENCE Sequence950b7e7bdc0b42b5a7a631bea8e381f4 START 1;

CREATE SEQUENCE Sequence753c908cffe64d9f8abec0cd929dde8f START 1;

CREATE TABLE StoreProduct (

 primaryKey UUID NOT NULL,

 Amount INT NULL,

 Товар UUID NULL,

 Склад UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Product (

 primaryKey UUID NOT NULL,

 ProductCode INT DEFAULT NEXTVAL('Sequencef7aff5bb50224ad1bcab800fac887b1a') NOT NULL,

 Name VARCHAR(255) NULL,

 Measure VARCHAR(255) NULL,

 Description VARCHAR(255) NULL,

 Price DOUBLE PRECISION NULL,

 Weight DOUBLE PRECISION NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE OrderItem (

 primaryKey UUID NOT NULL,

 Amount INT NULL,

 PriceWTaxes DOUBLE PRECISION NULL,

 Товар UUID NULL,

 Order_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Invoice (

 primaryKey UUID NOT NULL,

 Status VARCHAR(16) NULL,

 ShipmentDateTime TIMESTAMP(3) NULL,

 TotalWeight DOUBLE PRECISION NULL,

 Note VARCHAR(255) NULL,

 CustomerName VARCHAR(255) NULL,

 Number INT DEFAULT NEXTVAL('Sequence136ad0f9d47f41388b8eb6456027dfe8') NOT NULL,

 CreateDate TIMESTAMP(3) NULL,

 Заказ UUID NULL,

 ResponsiblePerson UUID NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Storehouse (

 primaryKey UUID NOT NULL,

 Number INT DEFAULT NEXTVAL('Sequence479d1ec8cd0b46d8b3c69f268b41b2b3') NOT NULL,

 Address VARCHAR(255) NULL,

 Storekeeper UUID NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Employee (

 primaryKey UUID NOT NULL,

 Number INT DEFAULT NEXTVAL('Sequence37b9618b03724229a98c1f5233791a65') NOT NULL,

 LastName VARCHAR(255) NULL,

 FirstName VARCHAR(255) NULL,

 MiddleName VARCHAR(255) NULL,

 PhoneNumber VARCHAR(255) NULL,

 Email VARCHAR(255) NULL,

 Position VARCHAR(9) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE "Order" (

 primaryKey UUID NOT NULL,

 Status VARCHAR(10) NULL,

 ShipmentDate TIMESTAMP(3) NULL,

 PaymentDate TIMESTAMP(3) NULL,

 Number INT DEFAULT NEXTVAL('Sequence950b7e7bdc0b42b5a7a631bea8e381f4') NOT NULL,

 CreateDate TIMESTAMP(3) NULL,

 Manager UUID NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Document (

 primaryKey UUID NOT NULL,

 Number INT DEFAULT NEXTVAL('Sequence753c908cffe64d9f8abec0cd929dde8f') NOT NULL,

 CreateDate TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE InvoiceItem (

 primaryKey UUID NOT NULL,

 Amount INT NULL,

 Weight DOUBLE PRECISION NULL,

 Price DOUBLE PRECISION NULL,

 TotalSum DOUBLE PRECISION NULL,

 Товар UUID NULL,

 Накладная UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));


CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAG (

 primaryKey UUID NOT NULL,

 Name VARCHAR(80) NOT NULL,

 Login VARCHAR(50) NULL,

 Pwd VARCHAR(50) NULL,

 IsUser BOOLEAN NOT NULL,

 IsGroup BOOLEAN NOT NULL,

 IsRole BOOLEAN NOT NULL,

 ConnString VARCHAR(255) NULL,

 Enabled BOOLEAN NULL,

 Email VARCHAR(80) NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 Comment VARCHAR NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMLG (

 primaryKey UUID NOT NULL,

 Group_m0 UUID NOT NULL,

 User_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMI (

 primaryKey UUID NOT NULL,

 User_m0 UUID NOT NULL,

 Agent_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE Session (

 primaryKey UUID NOT NULL,

 UserKey UUID NULL,

 StartedAt TIMESTAMP(3) NULL,

 LastAccess TIMESTAMP(3) NULL,

 Closed BOOLEAN NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMS (

 primaryKey UUID NOT NULL,

 Name VARCHAR(100) NOT NULL,

 Type VARCHAR(100) NULL,

 IsAttribute BOOLEAN NOT NULL,

 IsOperation BOOLEAN NOT NULL,

 IsView BOOLEAN NOT NULL,

 IsClass BOOLEAN NOT NULL,

 SharedOper BOOLEAN NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMP (

 primaryKey UUID NOT NULL,

 Subject_m0 UUID NOT NULL,

 Agent_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMF (

 primaryKey UUID NOT NULL,

 FilterText TEXT NULL,

 Name VARCHAR(255) NULL,

 FilterTypeNView VARCHAR(255) NULL,

 Subject_m0 UUID NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMAC (

 primaryKey UUID NOT NULL,

 TypeAccess VARCHAR(7) NULL,

 Filter_m0 UUID NULL,

 Permition_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMLO (

 primaryKey UUID NOT NULL,

 Class_m0 UUID NOT NULL,

 Operation_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMLA (

 primaryKey UUID NOT NULL,

 View_m0 UUID NOT NULL,

 Attribute_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMLV (

 primaryKey UUID NOT NULL,

 Class_m0 UUID NOT NULL,

 View_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));


CREATE TABLE STORMLR (

 primaryKey UUID NOT NULL,

 StartDate TIMESTAMP(3) NULL,

 EndDate TIMESTAMP(3) NULL,

 Agent_m0 UUID NOT NULL,

 Role_m0 UUID NOT NULL,

 CreateTime TIMESTAMP(3) NULL,

 Creator VARCHAR(255) NULL,

 EditTime TIMESTAMP(3) NULL,

 Editor VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE StoreProduct ADD CONSTRAINT FKf74274354c204c7eaa45a8651a847a1b FOREIGN KEY (Товар) REFERENCES Product; 
CREATE INDEX Index1662d93b8f2a484b85f1f408e7b22d98 on StoreProduct (Товар); 

 ALTER TABLE StoreProduct ADD CONSTRAINT FK874a72c350f040eabdf96e2aa3031cd8 FOREIGN KEY (Склад) REFERENCES Storehouse; 
CREATE INDEX Index156db0a1fe014c7897e2f620e06798f1 on StoreProduct (Склад); 

 ALTER TABLE OrderItem ADD CONSTRAINT FK764258d0b2994657b96a69a827cc6ea9 FOREIGN KEY (Товар) REFERENCES Product; 
CREATE INDEX Indexa646f3cfdffe4b9aa58f05d564c2de6e on OrderItem (Товар); 

 ALTER TABLE OrderItem ADD CONSTRAINT FK9dcad68646c347d3b754dc28dc9371c1 FOREIGN KEY (Order_m0) REFERENCES "Order"; 
CREATE INDEX Index7065d68762a0436bb971d530dc88bbb1 on OrderItem (Order_m0); 

 ALTER TABLE Invoice ADD CONSTRAINT FK3aba911c39ed4cc6a71eb4d1a54f8ddf FOREIGN KEY (Заказ) REFERENCES "Order"; 
CREATE INDEX Indexc25318278d7a4a0ba05a327c223003f8 on Invoice (Заказ); 

 ALTER TABLE Invoice ADD CONSTRAINT FKa2f0c99c8d90422e834d14385cb1fcbe FOREIGN KEY (ResponsiblePerson) REFERENCES Employee; 
CREATE INDEX Index459a5cc1fea94a39be1c3e3be6f8b4cf on Invoice (ResponsiblePerson); 

 ALTER TABLE Storehouse ADD CONSTRAINT FK7ca0a8ce3f204b82be9896d36b799a29 FOREIGN KEY (Storekeeper) REFERENCES Employee; 
CREATE INDEX Indexf38ba577462e431f87c1e01e274c3b98 on Storehouse (Storekeeper); 

 ALTER TABLE "Order" ADD CONSTRAINT FK2f61e858b5f24f56a56a2bae8650a208 FOREIGN KEY (Manager) REFERENCES Employee; 
CREATE INDEX Index252711acb94340cfa116393f427752ef on "Order" (Manager); 

 ALTER TABLE InvoiceItem ADD CONSTRAINT FK03b67badcf774ed3bec857eaaf6b96c3 FOREIGN KEY (Товар) REFERENCES Product; 
CREATE INDEX Indexcd909e648a3e4b338a5a1c8bb633ad5c on InvoiceItem (Товар); 

 ALTER TABLE InvoiceItem ADD CONSTRAINT FK9e7f12b8e2d848fcb4171625ac099575 FOREIGN KEY (Накладная) REFERENCES Invoice; 
CREATE INDEX Indexba4e63e2aded414fb7ea9a9f313927fa on InvoiceItem (Накладная); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK67809d2852aa474a9f0aee6ea81baed8 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FK69f645cbca5e41bfac7029374143127e FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK5a747c3ca43547478b6fefcae3316ed5 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMLG ADD CONSTRAINT FKcf89eac782464b5bba0a46ebc2bd70ad FOREIGN KEY (Group_m0) REFERENCES STORMAG; 

 ALTER TABLE STORMLG ADD CONSTRAINT FK9a200689460b48be8acb21e00dcdca65 FOREIGN KEY (User_m0) REFERENCES STORMAG; 

 ALTER TABLE STORMI ADD CONSTRAINT FK3b0f5c3faee349f29db9dcfdf6e9cde7 FOREIGN KEY (User_m0) REFERENCES STORMAG; 

 ALTER TABLE STORMI ADD CONSTRAINT FK958d760f66c546a8bd94fac46e62bb55 FOREIGN KEY (Agent_m0) REFERENCES STORMAG; 

 ALTER TABLE STORMP ADD CONSTRAINT FK802b1f9246c04b29ba0c402a16bc0e1c FOREIGN KEY (Subject_m0) REFERENCES STORMS; 

 ALTER TABLE STORMP ADD CONSTRAINT FK1d3755fa874f40218a0b7631b2d4cd04 FOREIGN KEY (Agent_m0) REFERENCES STORMAG; 

 ALTER TABLE STORMF ADD CONSTRAINT FKfc143e3503384d3d99e4a07082b9e7fa FOREIGN KEY (Subject_m0) REFERENCES STORMS; 

 ALTER TABLE STORMAC ADD CONSTRAINT FK000dba3b90f64cdd821703666cb41e85 FOREIGN KEY (Filter_m0) REFERENCES STORMF; 

 ALTER TABLE STORMAC ADD CONSTRAINT FK4798b2bab80d4a238fbcb7cda6ac925e FOREIGN KEY (Permition_m0) REFERENCES STORMP; 

 ALTER TABLE STORMLO ADD CONSTRAINT FK80d99963b381410ea55dc06f378fe0ef FOREIGN KEY (Class_m0) REFERENCES STORMS; 

 ALTER TABLE STORMLO ADD CONSTRAINT FK305fee47916f4da0b5df5be97f94e9a8 FOREIGN KEY (Operation_m0) REFERENCES STORMS; 

 ALTER TABLE STORMLA ADD CONSTRAINT FK104309554bcb4e88863009962c4fe88f FOREIGN KEY (View_m0) REFERENCES STORMS; 

 ALTER TABLE STORMLA ADD CONSTRAINT FKa097aa687fc24413892afc80d4d1c600 FOREIGN KEY (Attribute_m0) REFERENCES STORMS; 

 ALTER TABLE STORMLV ADD CONSTRAINT FKd37aa2e094af48fbb43ed4779eab6e91 FOREIGN KEY (Class_m0) REFERENCES STORMS; 

 ALTER TABLE STORMLV ADD CONSTRAINT FK3cd59ebf750b45d2b14b5d95de991cb0 FOREIGN KEY (View_m0) REFERENCES STORMS; 

 ALTER TABLE STORMLR ADD CONSTRAINT FK5625f35c4302418d8e730c4bbb57b044 FOREIGN KEY (Agent_m0) REFERENCES STORMAG; 

 ALTER TABLE STORMLR ADD CONSTRAINT FKc5f418d16ab944ab8d8f9d4f255d3bda FOREIGN KEY (Role_m0) REFERENCES STORMAG; 
