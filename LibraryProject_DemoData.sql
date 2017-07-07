/* 
	Demo data for Library Management System project 
	database as used in the video tutorial by Wes Doyle.
	See the full tutorial here: https://youtu.be/7rcCfCdiB9A
*/

INSERT INTO 
LibraryBranches(ImageUrl, [Address], [Name], Telephone, OpenDate, [Description]) 
VALUES 
('/images/branches/1.png', '88 Lakeshore Dr', 'Lake Shore Branch', '555-1234', '1975-05-13', 'The oldest library branch in Lakeview, the Lake Shore Branch was opened in 1975. Patrons of all ages enjoy the wide selection of literature available at Lake Shore library. The coffee shop is open during library hours of operation.'),
('/images/branches/2.png', '123 Skyline Dr', 'Mountain View Branch', '555-1235', '1998-06-01', 'The Mountain View branch contains the largest collection of technical and language learning books in the region. This branch is within walking distance to the University campus'),
('/images/branches/3.png', '540 Inventors Circle', 'Pleasant Hill Branch', '555-1236', '2017-09-20', 'The newest Lakeview Library System branch, Pleasant Hill has high-speed wireless access for all patrons and hosts Chess Club every Monday and Wednesday evening at 6 PM.');
SELECT * FROM LibraryBranches

INSERT INTO LibraryCards(Created, Fees) VALUES 
('2017-06-20', 12.00),
('2017-06-20', 0.00),
('2017-06-21', 0.50),
('2017-06-21', 0.00),
('2017-06-21', 3.50),
('2017-06-23', 1.50),
('2017-06-23', 0.00),
('2017-06-23', 8.00);
SELECT * FROM LibraryCards

INSERT INTO 
Patrons([Address], DateOfBirth, FirstName, HomeLibraryBranchId, LastName, LibraryCardId, TelephoneNumber) VALUES
('165 Peace St', '1986-07-10', 'Jane', 1, 'Patterson', 1, '555-1234'),
('324 Shadow Ln', '1984-03-12', 'Margaret', 2, 'Smith', 2, '555-7785'),
('18 Stone Cir', '1956-02-10', 'Tomas', 2, 'Galloway', 3, '555-3467'),
('246 Jennifer St', '1997-01-17', 'Mary', 3, 'Li', 4, '555-1223'),
('1465 Williamson St', '1952-09-16', 'Dan', 3, 'Carter', 5, '555-8884'),
('785 Park Ave', '1994-03-24', 'Aruna', 3, 'Adhiban', 6, '555-9988'),
('5654 Main St', '2001-11-23', 'Raj', 1, 'Prasad', 7, '555-7894'),
('1352 Bicycle Ct', '1981-10-16', 'Tatyana', 3, 'Ponomaryova', 8, '555-4568');
SELECT * FROM Patrons

INSERT INTO Statuses 
([Name], [Description]) VALUES
('Checked Out', 'A library asset that has been checked out'),
('Available', 'A library asset that is available for loan'),
('Lost', 'A library asset that has been lost'),
('On Hold', 'A library asset that has been placed On Hold for loan')
SELECT * FROM Statuses

INSERT INTO LibraryAssets
(Discriminator, Cost, LocationId, StatusId, Author, DeweyIndex, ISBN, Title, [Year], Director, ImageUrl, NumberOfCopies) VALUES
('Book', 18.00, 2, 2, 'Jane Austen', '823.123', '9781519202987', 'Emma', 1815, NULL, '/images/emma.png', 1),
('Book', 18.00, 3, 2, 'Charlotte Brontë', '822.133', '9781519133977', 'Jane Eyre', 1847, NULL, '/images/janeeyre.png', 1),
('Book', 12.99, 2, 2, 'Herman Melville', '821.153', '9780746062760', 'Moby Dick', 1851, NULL, '/images/mobydick.png', 1),
('Book', 24.00, 2, 2, 'James Joyce', '822.556', '9788854139343', 'Ulysses', 1922, NULL, '/images/ulysses.png', 3),
('Book', 11.00, 3, 2, 'Plato', '820.119', '9780758320209', 'Republic', -380, NULL, '/images/republic.png', 2),
('Book', 18.00, 3, 2, 'Bram Stoker', '821.526', '9781623750282', 'Dracula', 1897, NULL, '/images/dracula.png', 4),
('Book', 12.99, 2, 2, 'Don Delillo', '822.436', '9780670803736', 'White Noise', 1985, NULL, '/images/default.png', 1),
('Book', 16.00, 2, 2, 'James Baldwin', '821.325', '9780552084574', 'Another Country', 1962, NULL, '/images/default.png', 2),
('Book', 11.00, 1, 2, 'Virginia Woolf', '822.888', '9781904919582', 'The Waves', 1931, NULL, '/images/thewaves.png', 1),
('Book', 11.99, 1, 2, 'Alice Walker',	'820.298', '9780151191543', 'The Color Purple', 1982, NULL, '/images/default.png', 2),
('Book', 12.50, 1, 2, 'Gabriel García Márquez', '821.544', '9789631420494', 'One Hundred Years of Solitude', 1967, NULL, '/images/default.png', 1),
('Book', 22.00, 1, 2, 'Alice Monroe', '821.444', '9788702163452', 'Friend of My Youth', 1990, NULL, '/images/default.png', 1),
('Book', 13.50, 1, 2, 'Virginia Woolf', '820.111', '9780795310522', 'To the Lighthouse', 1927, NULL, '/images/tothelighthouse.png', 5),
('Book', 15.99, 3, 2, 'Virginia Woolf', '821.254', '9785457626126', 'Mrs Dalloway', 1925, NULL, '/images/mrsdalloway.png', 1),
('Video', 24.00, 1, 2, NULL, NULL, NULL, 'Blue Velvet',	1986, 'David Lynch', '/images/default.png', 1),
('Video', 24.00, 1, 2, NULL, NULL, NULL, 'Trois Coleurs: Rouge', 1994, 'Krzysztof Kieslowski', '/images/default.png', 1),
('Video', 30.00, 1, 2, NULL, NULL, NULL, 'Citizen Kane',	1941, 'Orson Welles', '/images/default.png', 1),
('Video', 28.00, 2, 2, NULL, NULL, NULL, 'Spirited Away',	2002, 'Hayao Miyazaki', '/images/default.png', 1),
('Video', 23.00, 2, 2, NULL, NULL, NULL, 'The Departed',	2006, 'Martin Scorsese', '/images/default.png', 1),
('Video', 17.99, 2, 2, NULL, NULL, NULL, 'Taxi Driver', 1976, 'Martin Scorsese', '/images/default.png', 1),
('Video', 18.00, 3, 2, NULL, NULL, NULL, 'Casablanca',	1943, 'Michael Curtiz', '/images/default.png', 1);
SELECT * FROM LibraryAssets

INSERT INTO BranchHours (BranchId, CloseTime, [DayOfWeek], OpenTime) VALUES 
(1, 14, 1, 7),
(1, 18, 2, 7),
(1, 18, 3, 7),
(1, 18, 4, 7),
(1, 18, 5, 7),
(1, 18, 6, 7),
(1, 14, 7, 7),

(2, 20, 1, 6),
(2, 20, 2, 6),
(2, 20, 3, 6),
(2, 20, 4, 6),
(2, 20, 5, 6),
(2, 20, 6, 6),
(2, 20, 7, 6),

(3, 22, 1, 5),
(3, 18, 2, 5),
(3, 18, 3, 5),
(3, 18, 4, 5),
(3, 18, 5, 5),
(3, 22, 6, 5),
(3, 22, 7, 5)