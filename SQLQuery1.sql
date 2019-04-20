IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Admin_ManageBooking]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Admin] DROP CONSTRAINT [FK_Admin_ManageBooking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Admin_LoginAdmin]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Admin] DROP CONSTRAINT [FK_Admin_LoginAdmin]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Booking_Online Banking]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Booking] DROP CONSTRAINT [FK_Booking_Online Banking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Login_Register]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Login] DROP CONSTRAINT [FK_Login_Register]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_LoginAdmin_Register]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [LoginAdmin] DROP CONSTRAINT [FK_LoginAdmin_Register]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Observer_ReloadWallet]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Observer] DROP CONSTRAINT [FK_Observer_ReloadWallet]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Parking_Vehicle]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Parking] DROP CONSTRAINT [FK_Parking_Vehicle]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Reload_Online Banking]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Reload] DROP CONSTRAINT [FK_Reload_Online Banking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Reload_User]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Reload] DROP CONSTRAINT [FK_Reload_User]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_User_Booking]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [User] DROP CONSTRAINT [FK_User_Booking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_User_Login]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [User] DROP CONSTRAINT [FK_User_Login]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_User_Parking]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [User] DROP CONSTRAINT [FK_User_Parking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_User_Register]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [User] DROP CONSTRAINT [FK_User_Register]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[FK_Vehicle_User]') AND OBJECTPROPERTY(id, 'IsForeignKey') = 1) 
ALTER TABLE [Vehicle] DROP CONSTRAINT [FK_Vehicle_User]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Admin]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Admin]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Booking]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Booking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[BookingAdapter]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [BookingAdapter]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[BookingList]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [BookingList]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Login]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Login]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[LoginAdmin]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [LoginAdmin]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[ManageBooking]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ManageBooking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Observer]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Observer]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Online Banking]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Online Banking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Parking]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Parking]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Register]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Register]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Reload]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Reload]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[ReloadWallet]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [ReloadWallet]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[User]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [User]
;

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id('[Vehicle]') AND OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Vehicle]
;

CREATE TABLE [Admin]
(
	[id] varchar(50),
	[adminID] Integer NOT NULL,
	[manageBookingID] Integer,
	[loginAdminID] Integer
)
;

CREATE TABLE [Booking]
(
	[amount] int,
	[date] varchar(50),
	[facilityName] varchar(50),
	[paymentType] varchar(50),
	[purpose] varchar(50),
	[bookingID] Integer NOT NULL,
	[online BankingID] Integer
)
;

CREATE TABLE [BookingAdapter]
(
	[facilityName] int,
	[ManageBooking book] int,
	[bookingAdapterID] Integer NOT NULL
)
;

CREATE TABLE [BookingList]
(
	[bookingListID] Integer NOT NULL
)
;

CREATE TABLE [Login]
(
	[email] varchar(50),
	[password] varchar(50),
	[loginID] Integer NOT NULL
)
;

CREATE TABLE [LoginAdmin]
(
	[email] varchar(50),
	[password] varchar(50),
	[loginAdminID] Integer NOT NULL
)
;

CREATE TABLE [ManageBooking]
(
	[approval] varchar(50),
	[manageBookingID] Integer NOT NULL
)
;

CREATE TABLE [Observer]
(
	[observerID] Integer NOT NULL,
	[reloadWalletID] Integer
)
;

CREATE TABLE [Online Banking]
(
	[accNo] int,
	[name] varchar(50),
	[online BankingID] Integer NOT NULL
)
;

CREATE TABLE [Parking]
(
	[balance] varchar(50),
	[plateNo] varchar(50),
	[time] varchar(50),
	[zone] varchar(50),
	[parkingID] Integer NOT NULL
)
;

CREATE TABLE [Register]
(
	[email] varchar(50),
	[password] varchar(50),
	[registerID] Integer NOT NULL
)
;

CREATE TABLE [Reload]
(
	[amount] int,
	[bankName] varchar(50),
	[phoneNo] int,
	[reloadID] Integer NOT NULL,
	[online BankingID] Integer
)
;

CREATE TABLE [ReloadWallet]
(
	[reloadWalletID] Integer NOT NULL
)
;

CREATE TABLE [User]
(
	[address] varchar(50),
	[balance] int,
	[email] varchar(50),
	[icNo] varchar(50),
	[id] varchar(50),
	[name] varchar(50),
	[password] varchar(50),
	[phoneNo] int,
	[userID] Integer NOT NULL,
	[bookingID] Integer,
	[loginID] Integer,
	[parkingID] Integer,
	[registerID] Integer
)
;

CREATE TABLE [Vehicle]
(
	[color] varchar(50),
	[model] varchar(50),
	[plateNo] varchar(50),
	[vehicleID] Integer NOT NULL,
	[userID] Integer
)
;

ALTER TABLE [Admin] 
 ADD CONSTRAINT [PK_Admin]
	PRIMARY KEY CLUSTERED ([adminID])
;

ALTER TABLE [Booking] 
 ADD CONSTRAINT [PK_Booking]
	PRIMARY KEY CLUSTERED ([bookingID])
;

ALTER TABLE [BookingAdapter] 
 ADD CONSTRAINT [PK_BookingAdapter]
	PRIMARY KEY CLUSTERED ([bookingAdapterID])
;

ALTER TABLE [BookingList] 
 ADD CONSTRAINT [PK_BookingList]
	PRIMARY KEY CLUSTERED ([bookingListID])
;

ALTER TABLE [Login] 
 ADD CONSTRAINT [PK_Login]
	PRIMARY KEY CLUSTERED ([loginID])
;

ALTER TABLE [LoginAdmin] 
 ADD CONSTRAINT [PK_LoginAdmin]
	PRIMARY KEY CLUSTERED ([loginAdminID])
;

ALTER TABLE [ManageBooking] 
 ADD CONSTRAINT [PK_ManageBooking]
	PRIMARY KEY CLUSTERED ([manageBookingID])
;

ALTER TABLE [Observer] 
 ADD CONSTRAINT [PK_Observer]
	PRIMARY KEY CLUSTERED ([observerID])
;

ALTER TABLE [Online Banking] 
 ADD CONSTRAINT [PK_Online Banking]
	PRIMARY KEY CLUSTERED ([online BankingID])
;

ALTER TABLE [Parking] 
 ADD CONSTRAINT [PK_Parking]
	PRIMARY KEY CLUSTERED ([parkingID])
;

ALTER TABLE [Register] 
 ADD CONSTRAINT [PK_Register]
	PRIMARY KEY CLUSTERED ([registerID])
;

ALTER TABLE [Reload] 
 ADD CONSTRAINT [PK_Reload]
	PRIMARY KEY CLUSTERED ([reloadID])
;

ALTER TABLE [ReloadWallet] 
 ADD CONSTRAINT [PK_ReloadWallet]
	PRIMARY KEY CLUSTERED ([reloadWalletID])
;

ALTER TABLE [User] 
 ADD CONSTRAINT [PK_User]
	PRIMARY KEY CLUSTERED ([userID])
;

ALTER TABLE [Vehicle] 
 ADD CONSTRAINT [PK_Vehicle]
	PRIMARY KEY CLUSTERED ([vehicleID])
;

ALTER TABLE [Admin] ADD CONSTRAINT [FK_Admin_ManageBooking]
	FOREIGN KEY ([manageBookingID]) REFERENCES [ManageBooking] ([manageBookingID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Admin] ADD CONSTRAINT [FK_Admin_LoginAdmin]
	FOREIGN KEY ([loginAdminID]) REFERENCES [LoginAdmin] ([loginAdminID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Booking] ADD CONSTRAINT [FK_Booking_Online Banking]
	FOREIGN KEY ([online BankingID]) REFERENCES [Online Banking] ([online BankingID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Login] ADD CONSTRAINT [FK_Login_Register]
	FOREIGN KEY ([loginID]) REFERENCES [Register] ([registerID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [LoginAdmin] ADD CONSTRAINT [FK_LoginAdmin_Register]
	FOREIGN KEY ([loginAdminID]) REFERENCES [Register] ([registerID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Observer] ADD CONSTRAINT [FK_Observer_ReloadWallet]
	FOREIGN KEY ([reloadWalletID]) REFERENCES [ReloadWallet] ([reloadWalletID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Parking] ADD CONSTRAINT [FK_Parking_Vehicle]
	FOREIGN KEY ([parkingID]) REFERENCES [Vehicle] ([vehicleID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Reload] ADD CONSTRAINT [FK_Reload_Online Banking]
	FOREIGN KEY ([online BankingID]) REFERENCES [Online Banking] ([online BankingID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Reload] ADD CONSTRAINT [FK_Reload_User]
	FOREIGN KEY ([reloadID]) REFERENCES [User] ([userID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [User] ADD CONSTRAINT [FK_User_Booking]
	FOREIGN KEY ([bookingID]) REFERENCES [Booking] ([bookingID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [User] ADD CONSTRAINT [FK_User_Login]
	FOREIGN KEY ([loginID]) REFERENCES [Login] ([loginID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [User] ADD CONSTRAINT [FK_User_Parking]
	FOREIGN KEY ([parkingID]) REFERENCES [Parking] ([parkingID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [User] ADD CONSTRAINT [FK_User_Register]
	FOREIGN KEY ([registerID]) REFERENCES [Register] ([registerID]) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE [Vehicle] ADD CONSTRAINT [FK_Vehicle_User]
	FOREIGN KEY ([userID]) REFERENCES [User] ([userID]) ON DELETE No Action ON UPDATE No Action
;
