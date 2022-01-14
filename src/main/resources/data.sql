CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    phone varchar(255),
    address varchar(255),
    pan_card varchar(255),
    card_number varchar(255),
    sanctioned_limit DECIMAL,
    available_limit DECIMAL
);

INSERT INTO Users (user_id, Password, Name, Email, Phone, Address, pan_card, card_number, sanctioned_limit, available_limit)  
   VALUES ('ram123', 'dummyP', 'Ramu', 'ram.cherry@relevel.com', '7784521475', 'Plot No 5/A, Pedemma Temple Lane, Madhapur, Hyderabad', 
   'RDCFG8845K', '349315340878471', 10000, 6801);
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('prakhar.g', 'dummyP', 'Prakhar Gupta', 'prakhar.gupta@relevel.com', '8745147968', 'Plot No 12/B, Pedemma Temple Lane, Habsiguda, Hyderabad');


CREATE TABLE Transactions (
    transaction_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    transaction_date DATE,
    amount DECIMAL,
    vendor_name varchar(255),
    status varchar(255)
);

INSERT INTO Transactions (user_id, transaction_date, amount, vendor_name, status)  
   VALUES ('ram123', '2021-10-01', 125, 'Paytm_Services', 'billed');
INSERT INTO Transactions (user_id, transaction_date, amount, vendor_name, status)
   VALUES ('ram123', '2021-10-06', 2200, 'Paytm_Services', 'unbilled');
INSERT INTO Transactions (user_id, transaction_date, amount, vendor_name, status)
   VALUES ('ram123', '2021-10-24', 999, 'AmazonPay_UPI_Vendor', 'unbilled');

   
CREATE TABLE Bills (
    bill_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    billed_date DATE,
    amount DECIMAL,
    settelement_date DATE,
    status varchar(255)
);

INSERT INTO Bills (user_id, billed_date, amount, settelement_date, status)  
   VALUES ('ram123', '2021-10-05', 125, '2021-10-22', 'setteled');
CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    phone varchar(255),
    address varchar(255),
    pan_card varchar(255),
    card_number varchar(255),
    sanctioned_limit DECIMAL,
    available_limit DECIMAL
);

INSERT INTO Users (user_id, Password, Name, Email, Phone, Address, pan_card, card_number, sanctioned_limit, available_limit)  
   VALUES ('ram123', 'dummyP', 'Ramu', 'ram.cherry@relevel.com', '7784521475', 'Plot No 5/A, Pedemma Temple Lane, Madhapur, Hyderabad', 
   'RDCFG8845K', '349315340878471', 10000, 6801);
   
INSERT INTO Users (user_id, Password, Name, Email, Phone, Address)  
   VALUES ('prakhar.g', 'dummyP', 'Prakhar Gupta', 'prakhar.gupta@relevel.com', '8745147968', 'Plot No 12/B, Pedemma Temple Lane, Habsiguda, Hyderabad');


CREATE TABLE Transactions (
    transaction_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    transaction_date DATE,
    amount DECIMAL,
    vendor_name varchar(255),
    status varchar(255)
);

INSERT INTO Transactions (user_id, transaction_date, amount, vendor_name, status)  
   VALUES ('ram123', '2021-10-01', 125, 'Paytm_Services', 'billed');
INSERT INTO Transactions (user_id, transaction_date, amount, vendor_name, status)
   VALUES ('ram123', '2021-10-06', 2200, 'Paytm_Services', 'unbilled');
INSERT INTO Transactions (user_id, transaction_date, amount, vendor_name, status)
   VALUES ('ram123', '2021-10-24', 999, 'AmazonPay_UPI_Vendor', 'unbilled');

   
CREATE TABLE Bills (
    bill_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    user_id varchar(255) references Users(user_id),
    billed_date DATE,
    amount DECIMAL,
    settelement_date DATE,
    status varchar(255)
);

INSERT INTO Bills (user_id, billed_date, amount, settelement_date, status)  
   VALUES ('ram123', '2021-10-05', 125, '2021-10-22', 'setteled');
