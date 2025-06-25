CREATE SCHEMA EventManagement;
SET search_path TO EventManagement;

CREATE TABLE Users (
    User_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone_Number BIGINT UNIQUE,
    Address TEXT,
    Hashed_Password VARCHAR(255),
    User_Type VARCHAR(20) CHECK (User_Type IN ('Admin', 'Attendee', 'Organizer')) DEFAULT NULL
);

CREATE TABLE Attendee (
    Attendee_ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES Users(User_ID) ON DELETE CASCADE
);

CREATE TABLE Organizer (
    Organizer_ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES Users(User_ID) ON DELETE CASCADE,
    Tax_ID VARCHAR(50) UNIQUE,
    Company_Name VARCHAR(255),
    Head_Name VARCHAR(100),
    Head_Phone_Number VARCHAR(15)
);

CREATE TABLE Admins (
    Admin_ID SERIAL PRIMARY KEY,
    User_ID INT UNIQUE REFERENCES Users(User_ID) ON DELETE CASCADE,
    Access_Levels TEXT
);

CREATE TABLE User_Email (
    User_ID INT,
    Email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (User_ID, Email),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ON DELETE CASCADE
);

CREATE TABLE Artist (
    Artist_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone_Number BIGINT NOT NULL
)

CREATE TABLE Aritst_Booking(
    Artist_ID INT,
    Organizer_ID INT,
    Booking_Date DATE,
    Booking_Status VARCHAR(20) CHECK (Booking_Status IN ('Confirmed', 'Pending', 'Cancelled')),
    PRIMARY KEY (Artist_ID, Organizer_ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID) ON DELETE CASCADE,
    FOREIGN KEY (Organizer_ID) REFERENCES Organizer(Organizer_ID) ON DELETE SET NULL
);

CREATE TABLE Artist_Email (
    Artist_ID INT,
    Email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY (Artist_ID, Email),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID) ON DELETE CASCADE
);

CREATE TABLE Artist_Fees (
    Artist_ID INT,
    Fees NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (Artist_ID, Fees),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID) ON DELETE CASCADE
);

CREATE TABLE Artist_Speciality (
    Artist_ID INT,
    Speciality VARCHAR(100) NOT NULL,
    PRIMARY KEY (Artist_ID, Speciality),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID) ON DELETE CASCADE
);

CREATE TABLE City (
    City_ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Event (
    Event_ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Venue TEXT NOT NULL,
    Date_and_Time TIMESTAMP NOT NULL,
    Ticket_Price NUMERIC(10,2),
    Capacity INT,
    City_ID INT,
    FOREIGN KEY (City_ID) REFERENCES City(City_ID) ON DELETE SET NULL
);

CREATE TABLE Performance (
    Artist_ID INT,
    Event_ID INT,
    PRIMARY KEY (Artist_ID, Event_ID),
    FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID) ON DELETE CASCADE,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE
);

CREATE TABLE Organizer_Creates_Event (
    Organizer_ID INT,
    Event_ID INT,
    PRIMARY KEY (Organizer_ID, Event_ID),
    FOREIGN KEY (Organizer_ID) REFERENCES Organizer(Organizer_ID) ON DELETE CASCADE,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE
);

CREATE TABLE Category (
    Category_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100) UNIQUE NOT NULL,
    Parent_Category_ID INT,
    FOREIGN KEY (Parent_Category_ID) REFERENCES Category(Category_ID) ON DELETE CASCADE
);

CREATE TABLE Event_Category (
    Event_ID INT,
    Category_ID INT,
    PRIMARY KEY (Event_ID, Category_ID),
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE,
    FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID) ON DELETE CASCADE
);

CREATE TABLE Delivery (
    Delivery_ID SERIAL PRIMARY KEY,
    Address TEXT NOT NULL,
    Date DATE NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Delivered', 'Pending', 'Cancelled')),
    Tracking_Number VARCHAR(50) UNIQUE,
    Admin_ID INT,
    FOREIGN KEY (Admin_ID) REFERENCES Admins(Admin_ID) ON DELETE SET NULL
);

CREATE TABLE Wishlist (
    Attendee_ID INT,
    Event_ID INT,
    Wishlist_Name VARCHAR(100),
    PRIMARY KEY (Attendee_ID, Event_ID),
    FOREIGN KEY (Attendee_ID) REFERENCES Attendee(Attendee_ID) ON DELETE CASCADE,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE
);

CREATE TABLE Tickets (
    Order_ID SERIAL PRIMARY KEY,
    Status VARCHAR(20) CHECK (Status IN ('Confirmed', 'Pending', 'Cancelled')),
    Delivery_Mode VARCHAR(20) NOT NULL CHECK (Delivery_Mode IN ('Email', 'Physical')),
    Transaction_ID VARCHAR(50) UNIQUE NOT NULL,
    Payment_Mode VARCHAR(20) NOT NULL CHECK (Payment_Mode IN ('Credit Card', 'Debit Card', 'UPI', 'Cash')),
    Payment_Portal VARCHAR(100) NOT NULL,
    Delivery_ID INT,
    Event_ID INT NOT NULL,
    Attendee_ID INT NOT NULL,
    FOREIGN KEY (Delivery_ID) REFERENCES Delivery(Delivery_ID) ON DELETE SET NULL,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE,
    FOREIGN KEY (Attendee_ID) REFERENCES Attendee(Attendee_ID) ON DELETE CASCADE
);

CREATE TABLE Report (
    Event_ID INT PRIMARY KEY,
    Average_Rating DECIMAL(3,2) CHECK (Average_Rating BETWEEN 0 AND 10),
    Cancellation BOOLEAN,
    Attendees_Count INT,
    Revenue DECIMAL(12,2),
    Admin_ID INT NOT NULL,
    FOREIGN KEY (Admin_ID) REFERENCES Admins(Admin_ID) ON DELETE CASCADE,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE
);

CREATE TABLE Rating (
    Rating_ID SERIAL PRIMARY KEY,
    Event_ID INT NOT NULL,
    Attendee_ID INT NOT NULL,
    Review TEXT,
    Score DECIMAL(2,1) CHECK (Score BETWEEN 0 AND 10),
    Time_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID) ON DELETE CASCADE,
    FOREIGN KEY (Attendee_ID) REFERENCES Attendee(Attendee_ID) ON DELETE CASCADE
);
