DROP TABLE PRODUCTS IF EXISTS;

CREATE TABLE PRODUCTS (
  ID VARCHAR(25) PRIMARY KEY,
  NAME VARCHAR(50),
  DESCRIPTION  VARCHAR(250),
  UNIT_PRICE DECIMAL,
  MANUFACTURER VARCHAR(50),
  CATEGORY VARCHAR(50),
  CONDITION VARCHAR(50),
  UNITS_IN_STOCK BIGINT,
  UNITS_IN_ORDER BIGINT,
  DISCONTINUED BOOLEAN
);

DROP TABLE ADD IF EXISTS;

CREATE TABLE ADD (
  ID INT PRIMARY KEY,
  TITLE VARCHAR(100),
  OWNER_ID INT,
  OWNERS_NAME VARCHAR (50),
  PROPERTY_TYPE VARCHAR(50),
  PURPOSE VARCHAR(50),
  LOCATION  VARCHAR(50),
  CITY VARCHAR (50),
  DETAILS VARCHAR (250),
  PRICE INT ,
  SQ_FEET INT,
  BED INT,
  BATH INT,
  IMAGE BLOB
);
