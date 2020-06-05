USE CarSaleDatabase
GO

INSERT INTO Province VALUES ('Tehran'),
                            ('Golestan'),
                            ('Isfahan'),
                            ('Khorasan'),
                            ('Fars'),
                            ('Khozestan'),
                            ('Hamedan'),
                            ('Mazandaran'),
                            ('Gilan'),
                            ('Alborz'),
                            ('Qom'),
                            ('Qazvin'),
                            ('Hormozgan')

SELECT * FROM Province

INSERT INTO City VALUES ('Tehran',1000),
                        ('Gorgan',1001),
                        ('Isfahan',1002),
                        ('Shahin shahr',1002),
                        ('Mobarakeh',1002),
                        ('Mashhad',1003),
                        ('Shiraz',1004),
                        ('Ahvaz',1005),
                        ('Bandar Mahshahr',1005),
                        ('Hamedan',1006),
                        ('Sari',1007),
                        ('Amol',1007),
                        ('Noor',1007),
                        ('Rasht',1008),
                        ('Fooman',1008),
                        ('Karaj',1009),
                        ('Qom',1010),
                        ('Qazvin',1011),
                        ('Bandar Abbas',1012)

SELECT * FROM City                        

INSERT INTO Branch VALUES ('Auto Gallery Nasiri',1000),
                          ('Auto Gallery Saghali',1000),
                          ('Auto Gallery Mirzaei',1000),
                          ('Auto Gallery Kazemi',1000),
                          ('Auto Gallery Abdi',1001),
                          ('Auto Gallery Moghaddasi',1002),
                          ('Auto Gallery Rezaei',1002),
                          ('Auto Gallery Lazemi',1003),
                          ('Auto Gallery Nosrati',1004),
                          ('Auto Gallery Teimori',1005),
                          ('Auto Gallery Yari',1005),
                          ('Auto Gallery Hashemi',1006),
                          ('Auto Gallery Biglari',1007),
                          ('Auto Gallery Hajebi',1007),
                          ('Auto Gallery Tavakoli',1008),
                          ('Auto Gallery Lashkari',1009),
                          ('Auto Gallery Kalbadi',1010),
                          ('Auto Gallery Mohajer',1011),
                          ('Auto Gallery Basiri',1012),
                          ('Auto Gallery Hasanpour',1013),
                          ('Auto Gallery Ghasemi',1014),
                          ('Auto Gallery Ahmadi',1015),
                          ('Auto Gallery Hadi',1015),
                          ('Auto Gallery Parsa',1016),
                          ('Auto Gallery Naeimi',1017),
                          ('Auto Gallery Monsefi',1018)

SELECT * FROM Branch        

INSERT INTO Customer VALUES(21801800, 'Kurt', 'Cobain', '09122020200', 'Male', 'Aberdeen-Washington-United States', '1967-04-05', NULL, GETDATE()),
                           (21801801, 'Thom', 'Yorke', '09121010100', 'Male', 'Wellingborough, United Kingdom', '1968-10-07', NULL, GETDATE()),
                           (21801802, 'Jonny', 'Greenwood', '09121010101', 'Male', 'Wellingborough, United Kingdom', '1971-11-05', NULL, GETDATE()),
                           (21801803, 'Colin', 'Greenwood', '09121010102', 'Male', 'Wellingborough, United Kingdom', '1971-06-26', NULL, GETDATE()),
                           (21801804, 'Ed', 'O brien', '09121010103', 'Male', 'Wellingborough, United Kingdom', NULL, NULL, GETDATE()),
                           (21801805, 'Philip', 'Selway', '09121010104', 'Male', 'Wellingborough, United Kingdom', NULL, NULL, GETDATE()),
                           (21801806, 'David', 'Gilmour', '09121010105', 'Male', 'Cambridge, United Kingdom', NULL, NULL, GETDATE()),
                           (21801807, 'Roger', 'Waters', '09121010106', 'Male', 'Great Bookham, United Kingdom', NULL, NULL, GETDATE()),
                           (21801808, 'Syd', 'Barret', '09121010107', 'Male', 'Cambridge, United Kingdom', NULL, NULL, GETDATE()),
                           (21801809, 'Richard', 'Wright', '09121010108', 'Male', 'HatchEnd, United Kingdom', NULL, NULL, GETDATE()),
                           (21801810, 'Nick', 'Mason', '09121010109', 'Male', 'Edgbaston, Birmingham, United Kingdom', NULL, NULL, GETDATE()),
                           (21801811, 'Bob', 'Klose', '09121010110', 'Male', 'Cambridge, United Kingdom', NULL, NULL, GETDATE()),
                           (21801812, 'Dave', 'Grohl', '09121010111', 'Male', 'Warren, Ohio, United States', NULL, NULL, GETDATE()),
                           (21801813, 'James', 'Hetfield', '09121010112', 'Male', 'Downey, California, United States', NULL, NULL, GETDATE()),
                           (21801814, 'Lars', 'Olrich', '09121010113', 'Male', 'Gentofte Municipality, Denmark', NULL, NULL, GETDATE()),
                           (21801815, 'Robert', 'Trujillo', '09121010114', 'Male', 'Santa Monica, California, United States', NULL, NULL, GETDATE()),
                           (21801816, 'Kirk', 'Hammett', '09121010115', 'Male', 'San Francisco, California, United States', NULL, NULL, GETDATE()),
                           (21801817, 'John', 'Lennon', '09121010116', 'Male', 'Liverpool, United Kingdom', NULL, NULL, GETDATE()),
                           (21801818, 'Paul', 'McCartney', '09121010117', 'Male', 'Walton, Liverpool, United Kingdom', NULL, NULL, GETDATE()),
                           (21801819, 'George', 'Harrison', '09121010118', 'Male', '12 Arnold Grove', NULL, NULL, GETDATE()),
                           (21801820, 'Freddie', 'Mercury', '09121010119', 'Male', 'Stone Town, Tanzania', NULL, NULL, GETDATE()),                            
                           (21801821, 'Brian', 'May', '09121010120', 'Male', 'Hampton, United Kingdom', NULL, NULL, GETDATE()),
                           (21801822, 'Roger', 'Taylor', '09121010121', 'Male', 'Kings Lynn, United Kingdom', NULL, NULL, GETDATE()),
                           (21801823, 'Nina', 'Simone', '09121010122', 'Female', 'Tryon, North Carolina, United States', NULL, NULL, GETDATE()),
                           (21801824, 'Pasty', 'Cline', '09121010123', 'Female', 'Winchester, Virginia, United States', NULL, NULL, GETDATE()),
                           (21801825, 'Johnny', 'Cash', '09121010124', 'Male', 'Kingsland, Arkansas, United States', NULL, NULL, GETDATE()),
                           (21801826, 'Leonard', 'Cohen', '09121010125', 'Male', 'Westmount, Canada', NULL, NULL, GETDATE()),
                           (21801827, 'David', 'Bowie', '09121010126', 'Male', 'Brixton, London, United Kingdom', NULL, NULL, GETDATE()),
                           (21801828, 'Bob', 'Dylan', '09121010127', 'Male', 'Duluth, Minnesota, United States', NULL, NULL, GETDATE()),
                           (21801829, 'Elvis', 'Presley', '09121010128', 'Male', 'Tupelo, Mississippi, United States', NULL, NULL, GETDATE()),
                           (21801830, 'Jimi', 'Hendrix', '09121010129', 'Male', 'Seattle, Washington, United States', NULL, NULL, GETDATE())

SELECT * FROM Customer

INSERT INTO Supplier VALUES(21801831, 'Cornelius', 'Vanderbilt', '09121010130', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801832, 'Andrew', 'Carnegie', '09121010131', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801833, 'John', 'Pierpont', '09121010132', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801834, 'John', 'Rockefeller', '09121010133', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801835, 'Larry', 'Page', '09121010134', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801836, 'Stephen', 'King', '09121010135', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801837, 'Michael', 'Jackson', '09121010136', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801838, 'George', 'Lucas', '09121010137', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801839, 'Steven', 'Spielberg', '09121010138', 'Male', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801840, 'Oprah', 'Winfrey ', '09121010139', 'Female', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801841, 'Billie', 'King', '09121010140', 'Female', 1000, NULL, NULL, NULL, GETDATE()),
                           (21801842, 'Serena', 'Williams', '09121010141', 'Female', 1000, NULL, NULL, NULL, GETDATE())
SELECT * FROM Supplier


INSERT INTO Company VALUES('Toyota','Japan'),
                          ('Volkswagen Group','Germany'),
                          ('Hyundai','South korea'),
                          ('General Motors','United States'),
                          ('Ford','United States'),
                          ('Nissan','Japan'),
                          ('Fiat','Italy'),
                          ('Renault','France'),
                          ('BMW','Germany'),
                          ('Audi','Germany'),
                          ('Mercedes Benz','Germany'),
                          ('Porsche','Germany'),
                          ('Jaguar','United Kingdom'),
                          ('Land Rover','United Kingdom'),
                          ('Rolls Royce','United Kingdom'),
                          ('McLaren','United Kingdom'),
                          ('Bentley','United Kingdom'),
                          ('Aston Martin','United Kingdom'),
                          ('Citroen','France'),
                          ('Peugeot','France'),
                          ('Ferrari','Italy'),
                          ('Cadillac','United States'),
                          ('Chevrolet','United States'),
                          ('Jeep','United States'),
                          ('Tesla','United States'),
                          ('IKCO','Iran')

SELECT * FROM Company

INSERT INTO TypeOfCar VALUES('Micro'),
                            ('Sedan'),
                            ('Cuv'),
                            ('Suv'),
                            ('Hatchback'),
                            ('Van'),
                            ('MiniVan'),
                            ('Coupe'),
                            ('SuperCar'),
                            ('RoadSter'),
                            ('Pickup')
SELECT * FROM TypeOfCar

INSERT INTO Color VALUES ('Black'),
                         ('White'),
                         ('Blue'),
                         ('Red'),
                         ('Orange'),
                         ('Yellow'),
                         ('Green'),
                         ('Brown'),
                         ('Gray'),
                         ('Silver'),
                         ('Azure'),
                         ('Gold'),
                         ('Purple'),
                         ('Tan')
SELECT * FROM Color

INSERT INTO Vehicle VALUES ('52WVC103800', 1004, 'Mondeo Fusion', 1000, 0, 1001, 2018, 'Gasoline', NULL),                           
                           ('52WVC103801', 1004, 'Ranger Raptor', 1000, 0, 1010, 2019, 'Gasoline', NULL),
                           ('52WVC103802', 1004, 'Ranger', 1001, 950, 1010, 2013, 'Gasoline', NULL),
                           ('52WVC103803', 1004, 'Mustang Mach-E', 1002, 400, 1007, 2020, 'Gasoline', NULL),
                           ('52WVC103804', 1004, 'GT', 1003, 0, 1008, 2017, 'Gasoline', NULL),
                           ('52WVC103805', 1004, 'E-Series', 1004, 1000, 1005, 2016, 'Gasoline', NULL),
                           ('52WVC103806', 1024, '3', 1005, 700, 1001, 2018, 'Hybride', NULL),
                           ('52WVC103807', 1024, 'S', 1006, 0, 1004, 2018, 'Hybride', NULL),
                           ('52WVC103808', 1024, 'X', 1007, 0, 1003, 2020, 'Hybride', NULL),
                           ('52WVC103809', 1024, 'Y', 1008, 0, 1003, 2019, 'Hybride', NULL),
                           ('52WVC103810', 1008, '228 i', 1008, 15635, 1001, 2016, 'Gasoline', NULL),
                           ('52WVC103811', 1008, '328 i', 1009, 72674, 1001, 2014, 'Gasoline', NULL),
                           ('52WVC103812', 1008, '328 i', 1010, 70712, 1001, 2011, 'Gasoline', NULL),
                           ('52WVC103813', 1008, 'X5', 1011, 27815, 1003, 2017, 'Gasoline', NULL),
                           ('52WVC103814', 1010, 'Sprinter High Roof', 1012, 4700, 1005, 2017, 'Gasoline', NULL),
                           ('52WVC103815', 1010, 'GL 450', 1013, 105539, 1002, 2007, 'Gasoline', NULL),
                           ('52WVC103816', 1010, 'GLE 400', 1000, 47435, 1001, 2019, 'Gasoline', NULL),
                           ('52WVC103817', 1010, 'AMG GLC 43', 1001, 4072, 1002, 2019, 'Gasoline', NULL),
                           ('52WVC103818', 1010, 'CLA 250', 1002, 35960, 1001, 2017, 'Gasoline', NULL),
                           ('52WVC103819', 1005, 'Titan', 1003, 5550, 1010, 2019, 'Gasoline', NULL),
                           ('52WVC103820', 1005, 'Rogue', 1004, 1220, 1003, 2019, 'Hybride', NULL),
                           ('52WVC103821', 1005, 'Armada', 1005, 550, 1003, 2019, 'Gasoline', NULL),
                           ('52WVC103822', 1005, 'Maxima', 1006, 5440, 1001, 2020, 'Gasoline', NULL),
                           ('52WVC103823', 1005, 'NV Cargo NV3500 HD', 1007, 5440, 1005, 2020, 'Gasoline', NULL),
                           ('52WVC103824', 1000, 'Sienna', 1008, 500, 1006, 2019, 'Gasoline', NULL),
                           ('52WVC103825', 1000, 'Tacoma', 1009, 12000, 1010, 2019, 'Gasoline', NULL),
                           ('52WVC103826', 1000, 'Land Cruiser', 1010, 5600, 1003, 2019, 'Gasoline', NULL),
                           ('52WVC103827', 1000, 'Supra', 1011, 5450, 1008, 2020, 'Gasoline', NULL),
                           ('52WVC103828', 1012, 'E-PACE', 1012, 8640, 1003, 2019, 'Gasoline', NULL),
                           ('52WVC103829', 1012, 'XE SV', 1013, 350, 1008, 2019, 'Gasoline', NULL),
                           ('52WVC103830', 1012, 'XE SV', 1000, 3530, 1008, 2020, 'Gasoline', NULL),
                           ('52WVC103831', 1015, '570S', 1001, 1000, 1008, 2019, 'Gasoline', NULL),
                           ('52WVC103832', 1015, '570S', 1002, 4560, 1008, 2020, 'Gasoline', NULL),
                           ('52WVC103833', 1012, '720S', 1003, 1500, 1008, 2019, 'Gasoline', NULL),
                           ('52WVC103834', 1022, 'Bolt EV', 1004, 1070, 1000, 2019, 'Hybride', NULL),
                           ('52WVC103835', 1022, 'Suburban', 1005, 540, 1002, 2015, 'Gasoline', NULL),
                           ('52WVC103836', 1022, 'Express 2500', 1006, 4890, 1006, 2017, 'Gasoline', NULL),
                           ('52WVC103837', 1006, '500', 1007, 7888, 1000, 2014, 'Hybride', NULL),
                           ('52WVC103838', 1006, '500', 1007, 4560, 1000, 2017, 'Hybride', NULL),
                           ('52WVC103839', 1006, '500', 1007, 1012, 1000, 2019, 'Hybride', NULL),
                           ('52WVC103840', 1006, '500X', 1007, 4560, 1006, 2013, 'Hybride', NULL)
select * from Vehicle

INSERT INTO Buy VALUES (1000, 1003, GETDATE(),10000),
                       (1000, 1010, GETDATE(),10000),
                       (1000, 1011, GETDATE(),10000),
                       (1001, 1012, GETDATE(),10000),
                       (1001, 1013, GETDATE(),10000),
                       (1001, 1014, GETDATE(),10000),
                       (1002, 1015, GETDATE(),20000),
                       (1003, 1016, GETDATE(),20000),
                       (1004, 1017, GETDATE(),20000),
                       (1005, 1018, GETDATE(),20000),
                       (1006, 1019, GETDATE(),25000),
                       (1006, 1019, GETDATE(),25000),
                       (1007, 1020, GETDATE(),25000),
                       (1008, 1021, GETDATE(),25000),
                       (1009, 1022, GETDATE(),25000),
                       (1010, 1023, GETDATE(),25000),
                       (1011, 1024, GETDATE(),25000),
                       (1011, 1025, GETDATE(),25000),
                       (1002, 1026, GETDATE(),25000),
                       (1002, 1027, GETDATE(),25000),
                       (1003, 1028, GETDATE(),30000),
                       (1004, 1029, GETDATE(),30000),
                       (1005, 1030, GETDATE(),30000),
                       (1006, 1031, GETDATE(),30000),
                       (1007, 1032, GETDATE(),30000),
                       (1008, 1033, GETDATE(),40000),
                       (1008, 1034, GETDATE(),40000),
                       (1010, 1036, GETDATE(),40000),
                       (1009, 1035, GETDATE(),40000),
                       (1011, 1037, GETDATE(),35000),
                       (1011, 1038, GETDATE(),35000),
                       (1000, 1039, GETDATE(),35000),
                       (1001, 1040, GETDATE(),35000),
                       (1002, 1041, GETDATE(),37500),
                       (1003, 1042, GETDATE(),37500),
                       (1004, 1043, GETDATE(),37500),
                       (1005, 1044, GETDATE(),37500),
                       (1006, 1045, GETDATE(),37500),
                       (1007, 1046, GETDATE(),38700),
                       (1008, 1047, GETDATE(),38700),
                       (1009, 1048, GETDATE(),38700),
                       (1009, 1049, GETDATE(),38700)








SELECT *
FROM Buy
select *
from Vehicle
SELECT *
FROM Supplier







SELECT *
FROM Sale