INSERT INTO Users (Name, Phone_Number, Address, Hashed_Password, User_Type) VALUES
('Parva Raval', 9876543210, 'Ahmedabad, Gujarat', 'hashedpass123', 'Attendee'),
('Om Santoki', 9123456789, 'Mumbai, Maharashtra', 'securepass456', 'Organizer'),
('Pratham Lakhani', 9988776655, 'Pune, Maharashtra', 'karanpass789', 'Admin'),
('Ved Mungra', 9871234560, 'Bangalore, Karnataka', 'snehasecure321', 'Attendee'),
('Pranav Mandani', 9090909090, 'Chennai, Tamil Nadu', 'harshpass999', 'Organizer'),
('Pokharamal Jat', 9812345678, 'Delhi', 'neha123hashed', 'Admin'),
('Viraj Singh', 9012345678, 'Lucknow, Uttar Pradesh', 'virajpass555', 'Attendee'),
('Pooja Rane', 9786543210, 'Nagpur, Maharashtra', 'poojapass111', 'Organizer'),
('Manan Trivedi', 9321654987, 'Jaipur, Rajasthan', 'mananhash888', 'Attendee'),
('Isha Bansal', 9001234567, 'Indore, Madhya Pradesh', 'ishapass321', 'Admin');

INSERT INTO Attendee (User_ID) 
VALUES (1), (4), (7), (9);

INSERT INTO Organizer (User_ID, Tax_ID, Company_Name, Head_Name, Head_Phone_Number) VALUES
(2, 'TAXIN12345A', 'Om Events Pvt. Ltd.', 'Om Santoki', '9988776655'),
(5, 'GSTIN56789Z', 'Mandani Entertainments', 'Pranav Mandani', '9876543212'),
(8, 'TIN98765X', 'Rane Cultural Hub', 'Pooja Rane', '9765432101');

INSERT INTO Admins (User_ID, Access_Levels) VALUES
(3, 'Full'),
(6, 'Moderate'),
(10, 'Full');

INSERT INTO User_Email (User_ID, Email) VALUES
(1, 'parva.raval@gmail.com'),
(1, 'parva123@daiict.ac.in'),
(2, 'omsantoki@gmail.com'),
(3, 'pratham.lakhani@admin.org'),
(4, 'vedmungra98@gmail.com'),
(5, 'pranav.mandani@org.in'),
(5, 'mandani.pranav@gmail.com'),
(6, 'pokhara.jat@delhi.gov'),
(7, 'viraj.singh123@gmail.com'),
(8, 'pooja.rane@events.com'),
(9, 'manan.trivedi@jaipur.in'),
(10, 'isha.bansal@admin.org');

INSERT INTO Artist (Artist_ID, Name, Phone_Number) VALUES
(1, 'Arijit Singh', 9876543211),
(2, 'Shreya Ghoshal', 9876543212),
(3, 'Neha Kakkar', 9876543213),
(4, 'Armaan Malik', 9876543214),
(5, 'Sonu Nigam', 9876543215),
(6, 'Badshah', 9876543216),
(7, 'Sunidhi Chauhan', 9876543217),
(8, 'KK', 9876543218),
(9, 'Jubin Nautiyal', 9876543219),
(10, 'Monali Thakur', 9876543220);

INSERT INTO Artist_Booking (Artist_ID, Organizer_ID, Booking_Date, Booking_Status) VALUES
(1, 1, '2025-04-01', 'Confirmed'),
(2, 2, '2025-04-03', 'Pending'),
(3, 1, '2025-04-05', 'Cancelled'),
(4, 3, '2025-04-07', 'Confirmed'),
(5, 2, '2025-04-10', 'Confirmed'),
(6, 3, '2025-04-11', 'Pending'),
(7, 1, '2025-04-13', 'Cancelled'),
(8, 2, '2025-04-15', 'Confirmed'),
(9, 3, '2025-04-17', 'Confirmed'),
(10, 1, '2025-04-19', 'Pending');

INSERT INTO Artist_Email (Artist_ID, Email) VALUES
(1, 'arijit.singh@example.com'),
(1, 'arijit.music@example.org'),
(2, 'neha.kakkar@example.com'),
(3, 'badshah.rap@example.com'),
(4, 'shreya.ghoshal@example.com'),
(4, 'shreya.voice@example.org'),
(5, 'kk.legend@example.com'),
(6, 'jubin.nautiyal@example.com'),
(7, 'atif.aslam@example.com'),
(8, 'sunidhi.chauhan@example.com');

INSERT INTO Artist_Fees (Artist_ID, Fees) VALUES
(1, 750000.00),
(1, 1000000.00),
(2, 600000.00),
(3, 850000.00),
(4, 950000.00),
(5, 700000.00),
(6, 550000.00),
(7, 800000.00),
(8, 720000.00),
(8, 820000.00);

INSERT INTO Artist_Speciality (Artist_ID, Speciality) VALUES
(1, 'Bollywood Singing'),
(1, 'Classical Singing'),
(2, 'Stand-up Comedy'),
(3, 'Folk Dance'),
(3, 'Hip-Hop Dance'),
(4, 'DJ Mixing'),
(5, 'Instrumental - Flute'),
(6, 'Mimicry'),
(7, 'Beatboxing'),
(8, 'Ghazal Singing');

INSERT INTO City (Name) VALUES
('Ahmedabad'),
('Mumbai'),
('Bangalore'),
('Chennai'),
('Delhi'),
('Kolkata'),
('Hyderabad'),
('Pune'),
('Jaipur'),
('Surat'),
('Indore'),
('Lucknow'),
('Nagpur'),
('Bhopal'),
('Patna'),
('Thane'),
('Vadodara'),
('Rajkot'),
('Amritsar'),
('Noida');

INSERT INTO Event (Event_ID, Title, Venue, Date_and_Time, Ticket_Price, Capacity, City_ID) VALUES
(1, 'Rhythm Nights', 'Nehru Stadium, Ahmedabad', '2025-05-10 19:00:00', 499.00, 5000, 1),
(2, 'Bollywood Bash', 'Jio World Garden, Mumbai', '2025-06-15 20:00:00', 799.00, 8000, 2),
(3, 'Rock & Dhol', 'Phoenix Arena, Bangalore', '2025-04-25 18:30:00', 599.00, 3000, 3),
(4, 'Sufi Souls', 'Kalaivanar Arangam, Chennai', '2025-07-05 19:00:00', 399.00, 2500, 4),
(5, 'Fusion Fiesta', 'India Gate Lawns, Delhi', '2025-08-20 20:30:00', 699.00, 10000, 5),
(6, 'Jazz Junction', 'Eco Park, Kolkata', '2025-05-30 18:00:00', 450.00, 1500, 6),
(7, 'Electro Bloom', 'HITEX, Hyderabad', '2025-06-10 21:00:00', 899.00, 4000, 7),
(8, 'Classical Evenings', 'Bal Gandharva, Pune', '2025-04-20 17:00:00', 299.00, 1200, 8),
(9, 'Indie Unplugged', 'Albert Hall, Jaipur', '2025-07-15 19:00:00', 499.00, 3500, 9),
(10, 'Garba Gala', 'Indoor Stadium, Surat', '2025-10-01 20:00:00', 299.00, 6000, 10),
(11, 'Synapse', 'DAIICT Campus, Gandhinagar', '2025-02-20 10:00:00', 0.00, 8000, 11),
(12, 'iFest', 'BITS Pilani Campus, Goa', '2025-03-05 09:00:00', 200.00, 4000, 13),
(13, 'Concours', 'IIM-Ahmedabad Campus', '2025-01-10 11:00:00', 150.00, 3000, 1),
(14, 'Food & Music Fair', 'Sabarmati Riverfront, Ahmedabad', '2025-12-01 16:00:00', 100.00, 5000, 1),
(15, 'Comedy Carnival', 'Shanmukhananda Hall, Mumbai', '2025-09-25 20:00:00', 550.00, 3500, 2);

INSERT INTO Performance (Artist_ID, Event_ID) VALUES
(1, 1),  -- Arjun Varma at Rhythm Nights
(2, 2),  -- Meera Shah at Bollywood Bash
(3, 3),  -- DJ Blaze at Rock & Dhol
(4, 4),  -- Kavya Naik at Sufi Souls
(5, 5),  -- RaftaarX at Fusion Fiesta
(6, 6),  -- Yash Saxena at Jazz Junction
(7, 7),  -- Prisha Mehta at Electro Bloom
(8, 8),  -- Tanmay Bhatt at Classical Evenings
(9, 9),  -- Aarav Tripathi at Indie Unplugged
(10, 10), -- Rhea Kapoor at Garba Gala

-- Multiple artists at the same event
(1, 11),  -- Arjun Varma at Synapse
(3, 11),  -- DJ Blaze at Synapse
(6, 11),  -- Yash Saxena at Synapse
(4, 12),  -- Kavya Naik at iFest
(9, 12),  -- Aarav Tripathi at iFest
(2, 13),  -- Meera Shah at Concours
(5, 13),  -- RaftaarX at Concours

(1, 2),   -- Arjun Varma at Bollywood Bash
(3, 5),   -- DJ Blaze at Fusion Fiesta
(6, 14),  -- Yash Saxena at Food & Music Fair
(10, 15); -- Rhea Kapoor at Comedy Carnival


-- Organizer 1 manages a mix of concerts and campus events
INSERT INTO Organizer_Creates_Event (Organizer_ID, Event_ID) VALUES
(1, 1),     -- Rhythm Nights
(1, 4),     -- Sufi Souls
(1, 11),    -- Synapse
(1, 12),    -- iFest
(1, 13),    -- Concours

-- Organizer 2 handles bigger commercial shows
(2, 2),     -- Bollywood Bash
(2, 5),     -- Fusion Fiesta
(2, 7),     -- Electro Bloom
(2, 10),    -- Garba Gala
(2, 15),    -- Comedy Carnival

-- Organizer 3 manages cultural and diverse events
(3, 3),     -- Rock & Dhol
(3, 6),     -- Jazz Junction
(3, 8),     -- Classical Evenings
(3, 9),     -- Indie Unplugged
(3, 14);    -- Food & Music Fair

-- Parent Categories
INSERT INTO Category (Name, Parent_Category_ID) VALUES
('Music', NULL),
('Cultural', NULL),
('Technology', NULL),
('Comedy', NULL),
('Food & Lifestyle', NULL),
('Business', NULL),
('Art & Design', NULL),
('Gaming', NULL),
('Social Impact', NULL),
('Film & Theatre', NULL);

-- Subcategories
INSERT INTO Category (Name, Parent_Category_ID) VALUES
('Live Concert', 1),
('Fusion', 1),
('Folk', 1),
('College Fest', 2),
('Technical Fest', 3),
('Startup Pitch', 6),
('Photography', 7),
('Esports', 8),
('Activism & Talks', 9),
('Stage Drama', 10);

-- Linking Events to Categories

INSERT INTO Event_Category (Event_ID, Category_ID) VALUES
-- Rhythm Nights--->Live Concert
(1, 11),

-- Bollywood Bash-->Fusion
(2, 12),

-- Rock & Dhol-->Folk, Live Concert
(3, 13),
(3, 11),

-- Sufi Souls-->Folk
(4, 13),

-- Fusion Fiesta-->Fusion, Cultural
(5, 12),
(5, 2),

-- Jazz Junction-->Live Concert, Art & Design
(6, 11),
(6, 7),

-- Electro Bloom-->Esports, Live Concert
(7, 18),
(7, 11),

-- Classical Evenings-->Folk, Art & Design
(8, 13),
(8, 7),

-- Indie Unplugged-->Live Concert
(9, 11),

-- Garba Gala-->Folk, Cultural
(10, 13),
(10, 2),

-- Synapse-->College Fest, Technical Fest
(11, 14),
(11, 15),

-- iFest-->Technical Fest
(12, 15),

-- Concours-->Business, College Fest
(13, 6),
(13, 14),

-- Food & Music Fair-->Food & Lifestyle, Fusion
(14, 5),
(14, 12),

-- Comedy Carnival-->Comedy, Stage Drama
(15, 4),
(15, 20);

INSERT INTO Delivery (Address, Date, Status, Tracking_Number, Admin_ID) VALUES
('Block B, DAIICT Campus, Gandhinagar', '2025-04-01', 'Delivered', 'TRK1001', 1),
('203, Sunrise Tower, Mumbai', '2025-04-02', 'Pending', 'TRK1002', 2),
('Plot 12, Tech Park, Pune', '2025-04-03', 'Cancelled', 'TRK1003', 3),
('Apt 5B, Lake View Residency, Bangalore', '2025-04-04', 'Delivered', 'TRK1004', 1),
('35, MG Road, Delhi', '2025-04-05', 'Delivered', 'TRK1005', 2),
('2nd Floor, Galaxy Complex, Ahmedabad', '2025-04-06', 'Pending', 'TRK1006', 3),
('Flat 9C, Marina Heights, Chennai', '2025-04-07', 'Delivered', 'TRK1007', 1),
('101, Royal Plaza, Jaipur', '2025-04-08', 'Cancelled', 'TRK1008', 2),
('202, Emerald Enclave, Hyderabad', '2025-04-09', 'Pending', 'TRK1009', 3),
('Shreeji Apartment, Race Course Road, Vadodara', '2025-04-10', 'Delivered', 'TRK1010', 1);

INSERT INTO Wishlist (Attendee_ID, Event_ID, Wishlist_Name) VALUES
(1, 1, 'Parva’s Top Picks'),
(1, 4, 'Parva’s Top Picks'),
(1, 13, 'Parva’s Top Picks'),

(2, 2, 'Ved’s Grooves'),
(2, 6, 'Ved’s Grooves'),
(2, 15, 'Ved’s Grooves'),

(3, 3, 'Viraj’s Vibes'),
(3, 7, 'Viraj’s Vibes'),
(3, 9, 'Viraj’s Vibes'),

(4, 11, 'College Fest Favz'),
(4, 12, 'College Fest Favz'),
(4, 14, 'College Fest Favz'),

(1, 5, 'Mega Events'),
(2, 8, 'Mega Events'),
(3, 10, 'Mega Events');

INSERT INTO Tickets (Status, Delivery_Mode, Transaction_ID, Payment_Mode, Payment_Portal, Delivery_ID, Event_ID, Attendee_ID) VALUES
('Confirmed', 'Email', 'TXN1001', 'UPI', 'Paytm', 1, 1, 1),
('Pending', 'Physical', 'TXN1002', 'Credit Card', 'Razorpay', 2, 2, 2),
('Cancelled', 'Email', 'TXN1003', 'Debit Card', 'Google Pay', 3, 3, 3),
('Confirmed', 'Email', 'TXN1004', 'UPI', 'PhonePe', 4, 4, 4),
('Confirmed', 'Physical', 'TXN1005', 'Cash', 'Offline Counter', 5, 5, 1),
('Pending', 'Email', 'TXN1006', 'Credit Card', 'PayPal', 6, 6, 2),
('Cancelled', 'Email', 'TXN1007', 'UPI', 'Paytm', 7, 7, 3),
('Confirmed', 'Physical', 'TXN1008', 'Debit Card', 'Razorpay', 8, 8, 4),
('Confirmed', 'Email', 'TXN1009', 'UPI', 'PhonePe', 9, 9, 1),
('Pending', 'Email', 'TXN1010', 'Cash', 'Offline Counter', 10, 10, 2);

INSERT INTO Report (Event_ID, Average_Rating, Cancellation, Attendees_Count, Revenue, Admin_ID) VALUES
(1, 8.5, FALSE, 4600, 2295400.00, 1),
(2, 7.2, FALSE, 7000, 5593000.00, 2),
(3, 6.8, TRUE, 1800, 1078200.00, 3),
(4, 9.0, FALSE, 2300, 917700.00, 1),
(5, 8.9, FALSE, 9800, 6850200.00, 2),
(6, 7.4, FALSE, 1400, 630000.00, 3),
(7, 8.1, FALSE, 3900, 3506100.00, 1),
(8, 6.5, TRUE, 1000, 299000.00, 2),
(9, 7.8, FALSE, 3200, 1596800.00, 3),
(10, 9.3, FALSE, 5800, 1734200.00, 1),
(11, 9.7, FALSE, 8000, 0.00, 1),
(12, 7.9, FALSE, 3700, 740000.00, 2),
(13, 8.3, FALSE, 2800, 420000.00, 3),
(14, 6.9, FALSE, 4900, 490000.00, 2),
(15, 8.6, FALSE, 3200, 1760000.00, 1);

INSERT INTO Rating (Event_ID, Attendee_ID, Review, Score) VALUES
(1, 1, 'Epic night with fantastic performances!', 9.0),
(2, 2, 'Crowd was great, music a bit repetitive.', 7.5),
(3, 3, 'Cancelled show, felt disappointed.', 4.0),
(4, 4, 'Sufi evening was magical and peaceful.', 9.5),
(5, 1, 'Organized really well, awesome vibe.', 8.7),
(6, 2, 'Enjoyed the jazz but needed more seating.', 6.5),
(7, 3, 'Colorful, vibrant, and energetic EDM!', 8.4),
(8, 4, 'Not very engaging, average show.', 5.9),
(9, 1, 'Loved the indie bands, super fresh sound.', 8.8),
(10, 2, 'Great crowd and garba tracks!', 9.2),
(11, 3, 'Best college fest ever! 10/10!', 9.9),
(12, 4, 'Informative and fun sessions!', 7.8),
(13, 1, 'Well-executed with good guest speakers.', 8.2),
(14, 2, 'Loved the food, music could improve.', 6.9),
(15, 3, 'Stand-up was hilarious and engaging!', 8.6);
