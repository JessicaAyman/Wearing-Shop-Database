
-- 1. Category:
INSERT INTO categories (category_id, category_name, descryption) VALUES (1,'T-Shirts','Cotton t-shirts'), 
(2,'Shirts','Formal and casual shirts'), 
(3,'Jeans','All jeans types'), 
(4,'Jackets','Winter jackets'), 
(5,'Hoodies','Hooded sweatshirts'), 
(6,'Sweaters','Warm sweaters'), 
(7,'Shorts','Summer shorts'), 
(8,'Skirts','Women skirts'), 
(9,'Dresses','Women dresses'), 
(10,'Suits','Formal suits'), 
(11,'Sportswear','Sports clothes'), 
(12,'Underwear','Men and women underwear'), 
(13,'Sleepwear','Pyjamas'), 
(14,'Shoes','All shoes'), 
(15,'Sneakers','Sport sneakers'), 
(16,'Sandals','Summer sandals'), 
(17,'Boots','Winter boots'), 
(18,'Accessories','Fashion accessories'), 
(19,'Hats','Caps and hats'), 
(20,'Scarves','Scarves and shawls'), 
(21,'Belts','Leather belts'), (22,'Bags','Hand bags'), 
(23,'Backpacks','Backpacks'), (24,'Wallets','Wallets'), 
(25,'Socks','Socks'), (26,'Ties','Formal ties'), 
(27,'Gloves','Winter gloves'), (28,'Coats','Long coats'), 
(29,'Blazers','Blazers'), (30,'Activewear','Gym clothes'), 
(31,'Kids Wear','Kids clothes'), (32,'Baby Wear','Baby clothes'), 
(33,'Swimwear','Swim suits'), (34,'Traditional','Traditional clothes'), 
(35,'Night Dresses','Night dresses'), (36,'Office Wear','Office clothes'), 
(37,'Casual Wear','Casual style'), (38,'Formal Wear','Formal style'), 
(39,'Wedding','Wedding clothes'), (40,'Party Wear','Party outfits'), 
(41,'Vintage','Vintage style'), (42,'Luxury','Luxury wear'), 
(43,'Eco','Eco friendly'), (44,'Denim','Denim wear'), 
(45,'Leather','Leather products'), (46,'Oversize','Oversize style'), 
(47,'Slim Fit','Slim fit clothes'), (48,'Plus Size','Plus size'), 
(49,'Unisex','Unisex clothes'), (50,'Limited','Limited edition');

--2. products

INSERT INTO products (prod_id, prod_name, price, description, gender, matrial, season, category_id) VALUES 
(1,'Basic T-Shirt',250,'Cotton T-Shirt','male','cotton','summer',1), (2,'White Shirt',400,'Classic shirt','male','cotton','all',2), 
(3,'Blue Jeans',600,'Denim jeans','male','denim','all',3), (4,'Winter Jacket',1200,'Warm jacket','male','polyester','winter',4), 
(5,'Gray Hoodie',700,'Soft hoodie','unisex','cotton','winter',5), (6,'Wool Sweater',650,'Wool sweater','female','wool','winter',6), 
(7,'Summer Shorts',300,'Light shorts','male','cotton','summer',7), (8,'Black Skirt',450,'Elegant skirt','female','polyester','summer',8), 
(9,'Red Dress',900,'Evening dress','female','silk','summer',9), (10,'Classic Suit',2500,'Formal suit','male','wool','all',10), 
(11,'Sport Set',800,'Training set','unisex','polyester','all',11), (12,'Cotton Boxers',200,'Comfort underwear','male','cotton','all',12), 
(13,'Pyjama Set',500,'Sleepwear','female','cotton','all',13), (14,'Leather Shoes',1100,'Formal shoes','male','leather','all',14), 
(15,'Running Sneakers',950,'Running shoes','unisex','synthetic','all',15), (16,'Beach Sandals',180,'Beach sandals','unisex','rubber','summer',16), 
(17,'Winter Boots',1300,'Snow boots','female','leather','winter',17), (18,'Leather Belt',220,'Men belt','male','leather','all',21), 
(19,'Hand Bag',1500,'Women bag','female','leather','all',22), (20,'Backpack',900,'Travel backpack','unisex','fabric','all',23), 
(21,'Leather Wallet',350,'Wallet','male','leather','all',24), (22,'Sport Socks',80,'Cotton socks','unisex','cotton','all',25), 
(23,'Formal Tie',150,'Office tie','male','silk','all',26), (24,'Winter Gloves',200,'Warm gloves','unisex','wool','winter',27), 
(25,'Long Coat',1800,'Classic coat','female','wool','winter',28), (26,'Office Blazer',1400,'Blazer','male','wool','all',29), 
(27,'Gym T-Shirt',350,'Gym wear','male','polyester','all',30), (28,'Kids Jacket',700,'Kids wear','unisex','polyester','winter',31),
(29,'Baby Suit',450,'Baby clothes','unisex','cotton','all',32), (30,'Swim Shorts',300,'Swimming shorts','male','nylon','summer',33), 
(31,'Traditional Galabeya',800,'Traditional wear','male','cotton','all',34), (32,'Night Dress',600,'Night wear','female','cotton','all',35),
(33,'Office Pants',550,'Office pants','male','cotton','all',36), (34,'Casual T-Shirt',280,'Casual wear','unisex','cotton','summer',37), 
(35,'Formal Shirt',450,'Formal shirt','male','cotton','all',38), (36,'Wedding Suit',3500,'Wedding suit','male','wool','all',39), 
(37,'Party Dress',1200,'Party dress','female','silk','summer',40), (38,'Vintage Jacket',1600,'Vintage style','male','leather','winter',41), 
(39,'Luxury Coat',5000,'Luxury coat','female','fur','winter',42), (40,'Eco Shirt',500,'Eco material','unisex','organic cotton','all',43), 
(41,'Denim Jacket',1300,'Denim jacket','unisex','denim','winter',44), (42,'Leather Jacket',3000,'Leather jacket','male','leather','winter',45), 
(43,'Oversize Hoodie',850,'Oversize style','unisex','cotton','winter',46), (44,'Slim Fit Shirt',480,'Slim fit','male','cotton','all',47), 
(45,'Plus Size Dress',950,'Plus size','female','polyester','summer',48), (46,'Unisex Jacket',1400,'Unisex','unisex','polyester','winter',49), 
(47,'Limited Hoodie',1100,'Limited edition','unisex','cotton','winter',50), (48,'Casual Pants',420,'Daily wear','male','cotton','all',37), 
(49,'Sport Jacket',1600,'Sport style','male','polyester','winter',11), (50,'Classic Coat',2000,'Classic coat','male','wool','winter',28);


-- 3. product_options 

INSERT INTO product_options (option_id, size, color, stock, prod_id) VALUES 
(1,'S','Black',20,1),(2,'M','Black',30,1),(3,'L','Black',15,1), (4,'M','White',25,2),
(5,'L','White',20,2), (6,'32','Blue',40,3),(7,'34','Blue',35,3), (8,'M','Brown',10,4),(9,'L','Brown',8,4), 
(10,'M','Gray',22,5),(11,'L','Gray',18,5), (12,'M','Red',12,6),(13,'L','Red',9,6), (14,'M','Blue',30,7),
(15,'L','Blue',20,7), (16,'M','Black',14,8),(17,'L','Black',11,8), (18,'M','Red',10,9),(19,'L','Red',6,9), 
(20,'50','Black',5,10), (21,'M','Blue',25,11),(22,'L','Blue',20,11), (23,'M','White',40,12),(24,'L','White',35,12), 
(25,'M','Pink',18,13),(26,'L','Pink',12,13), (27,'42','Black',14,14),(28,'43','Black',10,14), (29,'42','White',20,15),
(30,'43','White',18,15), (31,'40','Brown',25,16),(32,'41','Brown',20,16), (33,'38','Black',10,17),(34,'39','Black',8,17), 
(35,'Free','Black',50,18),(36,'Free','Brown',40,19), (37,'Free','Black',30,20),(38,'Free','Brown',20,21), (39,'Free','White',60,22),
(40,'Free','Black',45,23), (41,'Free','Gray',30,24),(42,'M','Beige',12,25), (43,'L','Beige',10,25),(44,'M','Navy',15,26), (45,'L','Navy',12,26),
(46,'M','Black',20,27), (47,'L','Black',15,27),(48,'M','Red',18,28), (49,'L','Red',14,28),(50,'M','White',25,29);

-- 4) users 

INSERT INTO users (user_id,f_name,l_name,email,password,street,city,state,role) VALUES 
(1,'Ahmed','Ali','ahmed1@mail.com',HASHBYTES('SHA2_256','123'),'Street 1','Cairo','EG','admin'), 
(2,'Mohamed','Hassan','mohamed2@mail.com',HASHBYTES('SHA2_256','123'),'Street 2','Giza','EG','cutomer'), 
(3,'Sara','Ibrahim','sara3@mail.com',HASHBYTES('SHA2_256','123'),'Street 3','Alex','EG','cutomer'), 
(4,'Youssef','Mostafa','youssef4@mail.com',HASHBYTES('SHA2_256','123'),'Street 4','Cairo','EG','cutomer'),
(5,'Mona','Adel','mona5@mail.com',HASHBYTES('SHA2_256','123'),'Street 5','Tanta','EG','cutomer'), 
(6,'Omar','Sayed','omar6@mail.com',HASHBYTES('SHA2_256','123'),'Street 6','Mansoura','EG','cutomer'), 
(7,'Nour','Kamal','nour7@mail.com',HASHBYTES('SHA2_256','123'),'Street 7','Cairo','EG','cutomer'), 
(8,'Hany','Fouad','hany8@mail.com',HASHBYTES('SHA2_256','123'),'Street 8','Giza','EG','cutomer'),
(9,'Salma','Ragab','salma9@mail.com',HASHBYTES('SHA2_256','123'),'Street 9','Alex','EG','cutomer'),
(10,'Khaled','Mahmoud','khaled10@mail.com',HASHBYTES('SHA2_256','123'),'Street 10','Cairo','EG','cutomer'),
(11,'Aya','Nabil','aya11@mail.com',HASHBYTES('SHA2_256','123'),'Street 11','Cairo','EG','cutomer'), 
(12,'Mostafa','Saad','mostafa12@mail.com',HASHBYTES('SHA2_256','123'),'Street 12','Giza','EG','cutomer'),
(13,'Huda','Samir','huda13@mail.com',HASHBYTES('SHA2_256','123'),'Street 13','Fayoum','EG','cutomer'), 
(14,'Mahmoud','Lotfy','mahmoud14@mail.com',HASHBYTES('SHA2_256','123'),'Street 14','Cairo','EG','cutomer'),
(15,'Rana','Hesham','rana15@mail.com',HASHBYTES('SHA2_256','123'),'Street 15','Alex','EG','cutomer'), 
(16,'Islam','Ashraf','islam16@mail.com',HASHBYTES('SHA2_256','123'),'Street 16','Cairo','EG','cutomer'), 
(17,'Farah','Yasin','farah17@mail.com',HASHBYTES('SHA2_256','123'),'Street 17','Giza','EG','cutomer'), 
(18,'Amr','Gamal','amr18@mail.com',HASHBYTES('SHA2_256','123'),'Street 18','Ismailia','EG','cutomer'), 
(19,'Menna','Osama','menna19@mail.com',HASHBYTES('SHA2_256','123'),'Street 19','Cairo','EG','cutomer'), 
(20,'Sherif','Adham','sherif20@mail.com',HASHBYTES('SHA2_256','123'),'Street 20','Giza','EG','cutomer'), 
(21,'Nada','Ayman','nada21@mail.com',HASHBYTES('SHA2_256','123'),'Street 21','Alex','EG','cutomer'), 
(22,'Tarek','Zaki','tarek22@mail.com',HASHBYTES('SHA2_256','123'),'Street 22','Cairo','EG','cutomer'), 
(23,'Eman','Fathy','eman23@mail.com',HASHBYTES('SHA2_256','123'),'Street 23','Minya','EG','cutomer'),
(24,'Walid','Hatem','walid24@mail.com',HASHBYTES('SHA2_256','123'),'Street 24','Cairo','EG','cutomer'), 
(25,'Dina','Sameh','dina25@mail.com',HASHBYTES('SHA2_256','123'),'Street 25','Giza','EG','cutomer'),
(26,'Alaa','Reda','alaa26@mail.com',HASHBYTES('SHA2_256','123'),'Street 26','Cairo','EG','cutomer'),
(27,'Mariam','Tamer','mariam27@mail.com',HASHBYTES('SHA2_256','123'),'Street 27','Alex','EG','cutomer'),
(28,'Hossam','Karem','hossam28@mail.com',HASHBYTES('SHA2_256','123'),'Street 28','Cairo','EG','cutomer'),
(29,'Reem','Adel','reem29@mail.com',HASHBYTES('SHA2_256','123'),'Street 29','Giza','EG','cutomer'), 
(30,'Bassem','Atef','bassem30@mail.com',HASHBYTES('SHA2_256','123'),'Street 30','Cairo','EG','cutomer'),
(31,'Yara','Magdy','yara31@mail.com',HASHBYTES('SHA2_256','123'),'Street 31','Alex','EG','cutomer'),
(32,'Hazem','Fathi','hazem32@mail.com',HASHBYTES('SHA2_256','123'),'Street 32','Cairo','EG','cutomer'), 
(33,'Rania','Khalil','rania33@mail.com',HASHBYTES('SHA2_256','123'),'Street 33','Giza','EG','cutomer'), 
(34,'Ayman','Sami','ayman34@mail.com',HASHBYTES('SHA2_256','123'),'Street 34','Cairo','EG','cutomer'), 
(35,'Laila','Hamdy','laila35@mail.com',HASHBYTES('SHA2_256','123'),'Street 35','Alex','EG','cutomer'),
(36,'Karim','Nasser','karim36@mail.com',HASHBYTES('SHA2_256','123'),'Street 36','Cairo','EG','cutomer'),
(37,'Mai','Lotfy','mai37@mail.com',HASHBYTES('SHA2_256','123'),'Street 37','Giza','EG','cutomer'), 
(38,'Fady','Boulos','fady38@mail.com',HASHBYTES('SHA2_256','123'),'Street 38','Cairo','EG','cutomer'), 
(39,'Shimaa','Salah','shimaa39@mail.com',HASHBYTES('SHA2_256','123'),'Street 39','Alex','EG','cutomer'),
(40,'Sameh','Ezz','sameh40@mail.com',HASHBYTES('SHA2_256','123'),'Street 40','Cairo','EG','cutomer'), 
(41,'Heba','Aref','heba41@mail.com',HASHBYTES('SHA2_256','123'),'Street 41','Giza','EG','cutomer'), 
(42,'Adel','Morsy','adel42@mail.com',HASHBYTES('SHA2_256','123'),'Street 42','Cairo','EG','cutomer'), 
(43,'Esraa','Kamel','esraa43@mail.com',HASHBYTES('SHA2_256','123'),'Street 43','Alex','EG','cutomer'), 
(44,'Maged','Soliman','maged44@mail.com',HASHBYTES('SHA2_256','123'),'Street 44','Cairo','EG','cutomer'),
(45,'Noha','Hassan','noha45@mail.com',HASHBYTES('SHA2_256','123'),'Street 45','Giza','EG','cutomer'), 
(46,'Sami','Abdelrahman','sami46@mail.com',HASHBYTES('SHA2_256','123'),'Street 46','Cairo','EG','cutomer'),
(47,'Riham','Fouad','riham47@mail.com',HASHBYTES('SHA2_256','123'),'Street 47','Alex','EG','cutomer'), 
(48,'Ashraf','Helmy','ashraf48@mail.com',HASHBYTES('SHA2_256','123'),'Street 48','Cairo','EG','cutomer'),
(49,'Maha','Eid','maha49@mail.com',HASHBYTES('SHA2_256','123'),'Street 49','Giza','EG','cutomer'), 
(50,'Admin','Root','admin50@mail.com',HASHBYTES('SHA2_256','admin'),'Street 50','Cairo','EG','admin');

--5. phone

INSERT INTO phones (user_id, phone) VALUES (1,'01000000001'), (2,'01000000002'), (3,'01000000003'), (4,'01000000004'), 
(5,'01000000005'), (6,'01000000006'), (7,'01000000007'), (8,'01000000008'), (9,'01000000009'), (10,'01000000010'), 
(11,'01000000011'), (12,'01000000012'), (13,'01000000013'), (14,'01000000014'), (15,'01000000015'), (16,'01000000016'), 
(17,'01000000017'), (18,'01000000018'), (19,'01000000019'), (20,'01000000020'), (21,'01000000021'), (22,'01000000022'), 
(23,'01000000023'), (24,'01000000024'), (25,'01000000025'), (26,'01000000026'), (27,'01000000027'), (28,'01000000028'), 
(29,'01000000029'), (30,'01000000030'), (31,'01000000031'), (32,'01000000032'), (33,'01000000033'), (34,'01000000034'),
(35,'01000000035'), (36,'01000000036'), (37,'01000000037'), (38,'01000000038'), (39,'01000000039'), (40,'01000000040'), 
(41,'01000000041'), (42,'01000000042'), (43,'01000000043'), (44,'01000000044'), (45,'01000000045'), (46,'01000000046'), 
(47,'01000000047'), (48,'01000000048'), (49,'01000000049'), (50,'01000000050');


--6. promotions 

INSERT INTO promotions (promo_id,promo_name,type,discount_valu,start_date,end_date,conditions) VALUES 
(1,'Summer Sale','percentage',10,'2025-06-01','2025-06-30','All summer items'), (2,'Winter Sale','percentage',20,'2025-12-01','2025-12-31','Winter items only'), 
(3,'Ramadan Offer','percentage',15,'2025-03-01','2025-03-30','Ramadan collection'), (4,'Black Friday','percentage',30,'2025-11-25','2025-11-30','All products'),
(5,'New Year Sale','percentage',25,'2025-01-01','2025-01-07','New year deals'), (6,'Eid Sale','percentage',20,'2025-04-01','2025-04-07','Eid clothes'), 
(7,'Flash Sale','percentage',5,'2025-02-10','2025-02-12','Limited time'), (8,'Clearance','percentage',40,'2025-08-01','2025-08-15','Old stock'), 
(9,'Weekend Deal','percentage',10,'2025-05-01','2025-05-03','Weekend only'), (10,'Student Discount','percentage',10,'2025-09-01','2025-09-30','Students only'), 
(11,'VIP Offer','percentage',20,'2025-10-01','2025-10-31','VIP customers'), (12,'Online Exclusive','percentage',15,'2025-06-10','2025-06-20','Online orders'), 
(13,'First Order','percentage',10,'2025-01-01','2025-12-31','New users'), (14,'Buy More Save More','percentage',12,'2025-07-01','2025-07-31','Multiple items'), 
(15,'Winter Clearance','percentage',35,'2025-02-01','2025-02-15','Winter stock'), (16,'Summer Weekend','percentage',8,'2025-07-05','2025-07-07','Weekend sale'), 
(17,'Fashion Week','percentage',18,'2025-09-10','2025-09-17','Fashion week'), (18,'Payday Sale','percentage',10,'2025-05-25','2025-05-28','End of month'), 
(19,'Mega Sale','percentage',50,'2025-11-01','2025-11-03','Huge discounts'), (20,'Accessories Sale','percentage',15,'2025-06-01','2025-06-15','Accessories only'), 
(21,'Shoes Discount','percentage',20,'2025-04-10','2025-04-20','Shoes category'), (22,'Kids Wear Offer','percentage',25,'2025-08-01','2025-08-20','Kids clothes'), 
(23,'Office Wear Sale','percentage',10,'2025-03-10','2025-03-20','Office wear'), (24,'Night Wear Sale','percentage',15,'2025-05-10','2025-05-20','Night wear'), 
(25,'Denim Days','percentage',20,'2025-06-20','2025-06-30','Denim products'), (26,'Leather Sale','percentage',18,'2025-10-10','2025-10-20','Leather items'),
(27,'Eco Friendly','percentage',12,'2025-04-15','2025-04-30','Eco products'), (28,'Luxury Week','percentage',10,'2025-12-05','2025-12-12','Luxury items'),
(29,'Limited Edition','percentage',22,'2025-09-01','2025-09-10','Limited stock'), (30,'Flash Weekend','percentage',7,'2025-02-20','2025-02-22','Weekend flash'), 
(31,'Mid Year Sale','percentage',30,'2025-07-15','2025-07-31','Mid year'), (32,'Back To School','percentage',20,'2025-08-15','2025-08-31','School wear'), 
(33,'Casual Wear','percentage',10,'2025-03-01','2025-03-15','Casual style'), (34,'Formal Wear','percentage',12,'2025-04-01','2025-04-15','Formal clothes'), 
(35,'Party Time','percentage',18,'2025-06-05','2025-06-12','Party wear'), (36,'Wedding Season','percentage',15,'2025-10-01','2025-10-15','Wedding clothes'), 
(37,'Sports Sale','percentage',20,'2025-05-05','2025-05-20','Sportswear'), (38,'Gym Lovers','percentage',12,'2025-01-15','2025-01-31','Gym clothes'),
(39,'Travel Sale','percentage',10,'2025-06-25','2025-07-05','Travel bags'), (40,'Season End','percentage',35,'2025-09-20','2025-09-30','Season end'),
(41,'Black Week','percentage',28,'2025-11-20','2025-11-27','Black week'), (42,'New Collection','percentage',8,'2025-02-01','2025-02-28','New arrivals'), 
(43,'Daily Deal','percentage',5,'2025-03-05','2025-03-06','One day only'), (44,'Hot Deals','percentage',18,'2025-07-01','2025-07-10','Hot prices'),
(45,'Mega Weekend','percentage',22,'2025-08-05','2025-08-07','Weekend only'), (46,'End Of Year','percentage',40,'2025-12-20','2025-12-31','Year end'),
(47,'Special Offer','percentage',14,'2025-05-15','2025-05-25','Special items'), (48,'Online Friday','percentage',16,'2025-11-05','2025-11-06','Online only'), 
(49,'Surprise Sale','percentage',9,'2025-04-05','2025-04-07','Surprise deal'), (50,'Final Sale','percentage',45,'2025-12-01','2025-12-10','Final stock');

--7.orders 

INSERT INTO orders (order_id, order_date, total_amount, status, user_id) VALUES 
(1,'2025-01-01',1500,'paid',2), (2,'2025-01-02',900,'pending',3), (3,'2025-01-03',2200,'shipped',4), 
(4,'2025-01-04',650,'confirmed',5), (5,'2025-01-05',1800,'paid',6), (6,'2025-01-06',400,'cancelled',7),
(7,'2025-01-07',1200,'delivered',8), (8,'2025-01-08',750,'paid',9), (9,'2025-01-09',980,'returned',10), 
(10,'2025-01-10',300,'pending',11), (11,'2025-01-11',1600,'confirmed',12), (12,'2025-01-12',2100,'paid',13), 
(13,'2025-01-13',500,'pending',14), (14,'2025-01-14',1350,'shipped',15), (15,'2025-01-15',2600,'paid',16), 
(16,'2025-01-16',700,'confirmed',17), (17,'2025-01-17',820,'delivered',18), (18,'2025-01-18',1450,'paid',19),
(19,'2025-01-19',2300,'shipped',20), (20,'2025-01-20',950,'pending',21), (21,'2025-01-21',1750,'paid',22), 
(22,'2025-01-22',400,'cancelled',23), (23,'2025-01-23',1250,'confirmed',24), (24,'2025-01-24',1900,'paid',25), 
(25,'2025-01-25',600,'pending',26), (26,'2025-01-26',2100,'shipped',27), (27,'2025-01-27',980,'delivered',28),
(28,'2025-01-28',3000,'paid',29), (29,'2025-01-29',850,'confirmed',30), (30,'2025-01-30',1400,'paid',31), 
(31,'2025-02-01',760,'pending',32), (32,'2025-02-02',1950,'shipped',33), (33,'2025-02-03',420,'cancelled',34),
(34,'2025-02-04',1650,'paid',35), (35,'2025-02-05',890,'confirmed',36), (36,'2025-02-06',2700,'paid',37), 
(37,'2025-02-07',1300,'delivered',38), (38,'2025-02-08',540,'pending',39), (39,'2025-02-09',1850,'shipped',40),
(40,'2025-02-10',990,'paid',41), (41,'2025-02-11',1100,'confirmed',42), (42,'2025-02-12',2500,'paid',43),
(43,'2025-02-13',670,'pending',44), (44,'2025-02-14',1450,'delivered',45), (45,'2025-02-15',2000,'paid',46), 
(46,'2025-02-16',880,'confirmed',47), (47,'2025-02-17',1550,'shipped',48), (48,'2025-02-18',430,'cancelled',49),
(49,'2025-02-19',1750,'paid',50), (50,'2025-02-20',920,'pending',2);

-- 8. order_items

INSERT INTO order_items (order_id, option_id, quantity, price) VALUES 
(1,1,2,250),(1,2,1,250),(2,4,2,400),(3,6,1,600),(4,8,1,650),(5,10,3,600),(6,12,1,400),(7,14,2,600),(8,16,1,750),(9,18,1,980), 
(10,20,1,300),(11,22,2,800),(12,24,3,700),(13,26,1,500),(14,28,2,675),(15,30,2,1300),(16,32,1,700),(17,34,2,820),(18,36,1,1450),(19,38,2,1150), 
(20,40,1,950),(21,42,2,1750),(22,44,1,400),(23,46,1,1250),(24,48,2,950),(25,50,1,600),(26,3,2,2100),(27,5,1,980),(28,7,3,3000),(29,9,1,850), 
(30,11,2,1400),(31,13,1,760),(32,15,3,1950),(33,17,1,420),(34,19,2,1650),(35,21,1,890),(36,23,2,2700),(37,25,2,1300),(38,27,1,540),(39,29,2,1850), 
(40,31,1,990),(41,33,2,1100),(42,35,3,2500),(43,37,1,670),(44,39,2,1450),(45,41,1,2000),(46,43,2,880),(47,45,1,1550),(48,47,3,430),(49,49,2,1750),(50,50,1,920);

-- 9) payments (50)

INSERT INTO payments (pay_id, pay_date, amount, method, order_id) VALUES 
(1,'2025-01-01',1500,'cash',1),(2,'2025-01-02',900,'credit',2),(3,'2025-01-03',2200,'vodafone_cash',3),
(4,'2025-01-04',650,'paypal',4),(5,'2025-01-05',1800,'cash',5), (6,'2025-01-06',400,'credit',6),(7,'2025-01-07',1200,'vodafone_cash',7),
(8,'2025-01-08',750,'paypal',8),(9,'2025-01-09',980,'cash',9),(10,'2025-01-10',300,'credit',10), (11,'2025-01-11',1600,'vodafone_cash',11),
(12,'2025-01-12',2100,'paypal',12),(13,'2025-01-13',500,'cash',13),(14,'2025-01-14',1350,'credit',14),(15,'2025-01-15',2600,'vodafone_cash',15), 
(16,'2025-01-16',700,'paypal',16),(17,'2025-01-17',820,'cash',17),(18,'2025-01-18',1450,'credit',18),(19,'2025-01-19',2300,'vodafone_cash',19),
(20,'2025-01-20',950,'paypal',20), (21,'2025-01-21',1750,'cash',21),(22,'2025-01-22',400,'credit',22),(23,'2025-01-23',1250,'vodafone_cash',23),
(24,'2025-01-24',1900,'paypal',24),(25,'2025-01-25',600,'cash',25), (26,'2025-01-26',2100,'credit',26),(27,'2025-01-27',980,'vodafone_cash',27),
(28,'2025-01-28',3000,'paypal',28),(29,'2025-01-29',850,'cash',29),(30,'2025-01-30',1400,'credit',30), (31,'2025-02-01',760,'vodafone_cash',31),
(32,'2025-02-02',1950,'paypal',32),(33,'2025-02-03',420,'cash',33),(34,'2025-02-04',1650,'credit',34),(35,'2025-02-05',890,'vodafone_cash',35), 
(36,'2025-02-06',2700,'paypal',36),(37,'2025-02-07',1300,'cash',37),(38,'2025-02-08',540,'credit',38),(39,'2025-02-09',1850,'vodafone_cash',39),
(40,'2025-02-10',990,'paypal',40), (41,'2025-02-11',1100,'cash',41),(42,'2025-02-12',2500,'credit',42),(43,'2025-02-13',670,'vodafone_cash',43),
(44,'2025-02-14',1450,'paypal',44),(45,'2025-02-15',2000,'cash',45), (46,'2025-02-16',880,'credit',46),(47,'2025-02-17',1550,'vodafone_cash',47),
(48,'2025-02-18',430,'paypal',48),(49,'2025-02-19',1750,'cash',49),(50,'2025-02-20',920,'credit',50);

-- 10. shipping 

INSERT INTO shipping (shiping_id, street, city, state, ship_date, delivery_date, order_id) VALUES 
(1,'Street 1','Cairo','EG','2025-01-02','2025-01-05',1),(2,'Street 2','Giza','EG','2025-01-03','2025-01-06',2),
(3,'Street 3','Alex','EG','2025-01-04','2025-01-07',3),(4,'Street 4','Cairo','EG','2025-01-05','2025-01-08',4),
(5,'Street 5','Tanta','EG','2025-01-06','2025-01-09',5), (6,'Street 6','Mansoura','EG','2025-01-07','2025-01-10',6),
(7,'Street 7','Cairo','EG','2025-01-08','2025-01-11',7),(8,'Street 8','Giza','EG','2025-01-09','2025-01-12',8),
(9,'Street 9','Alex','EG','2025-01-10','2025-01-13',9),(10,'Street 10','Cairo','EG','2025-01-11','2025-01-14',10), 
(11,'Street 11','Cairo','EG','2025-01-12','2025-01-15',11),(12,'Street 12','Giza','EG','2025-01-13','2025-01-16',12),
(13,'Street 13','Fayoum','EG','2025-01-14','2025-01-17',13),(14,'Street 14','Cairo','EG','2025-01-15','2025-01-18',14),
(15,'Street 15','Alex','EG','2025-01-16','2025-01-19',15), (16,'Street 16','Cairo','EG','2025-01-17','2025-01-20',16),
(17,'Street 17','Giza','EG','2025-01-18','2025-01-21',17),(18,'Street 18','Ismailia','EG','2025-01-19','2025-01-22',18),
(19,'Street 19','Cairo','EG','2025-01-20','2025-01-23',19),(20,'Street 20','Giza','EG','2025-01-21','2025-01-24',20), 
(21,'Street 21','Alex','EG','2025-01-22','2025-01-25',21),(22,'Street 22','Cairo','EG','2025-01-23','2025-01-26',22),
(23,'Street 23','Minya','EG','2025-01-24','2025-01-27',23),(24,'Street 24','Cairo','EG','2025-01-25','2025-01-28',24),
(25,'Street 25','Giza','EG','2025-01-26','2025-01-29',25), (26,'Street 26','Cairo','EG','2025-01-27','2025-01-30',26),
(27,'Street 27','Alex','EG','2025-01-28','2025-01-31',27),(28,'Street 28','Cairo','EG','2025-01-29','2025-02-01',28),
(29,'Street 29','Giza','EG','2025-01-30','2025-02-02',29),(30,'Street 30','Cairo','EG','2025-01-31','2025-02-03',30), 
(31,'Street 31','Alex','EG','2025-02-01','2025-02-04',31),(32,'Street 32','Cairo','EG','2025-02-02','2025-02-05',32),
(33,'Street 33','Giza','EG','2025-02-03','2025-02-06',33),(34,'Street 34','Cairo','EG','2025-02-04','2025-02-07',34),
(35,'Street 35','Alex','EG','2025-02-05','2025-02-08',35), (36,'Street 36','Cairo','EG','2025-02-06','2025-02-09',36),
(37,'Street 37','Giza','EG','2025-02-07','2025-02-10',37),(38,'Street 38','Cairo','EG','2025-02-08','2025-02-11',38),
(39,'Street 39','Alex','EG','2025-02-09','2025-02-12',39),(40,'Street 40','Cairo','EG','2025-02-10','2025-02-13',40), 
(41,'Street 41','Giza','EG','2025-02-11','2025-02-14',41),(42,'Street 42','Cairo','EG','2025-02-12','2025-02-15',42),
(43,'Street 43','Alex','EG','2025-02-13','2025-02-16',43),(44,'Street 44','Cairo','EG','2025-02-14','2025-02-17',44),
(45,'Street 45','Giza','EG','2025-02-15','2025-02-18',45), (46,'Street 46','Cairo','EG','2025-02-16','2025-02-19',46),
(47,'Street 47','Alex','EG','2025-02-17','2025-02-20',47),(48,'Street 48','Cairo','EG','2025-02-18','2025-02-21',48),
(49,'Street 49','Giza','EG','2025-02-19','2025-02-22',49),(50,'Street 50','Cairo','EG','2025-02-20','2025-02-23',50)

--11. order_promotion

INSERT INTO order_promotions (promo_id, order_id) VALUES 
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10), (11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),
(18,18),(19,19),(20,20), (21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30), (31,31),(32,32),
(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40), (41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);

-- 12. product_promotion 

INSERT INTO product_promotion (prod_id, promo_id) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10), 
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20), (21,21),(22,22),(23,23),(24,24),(25,25),
(26,26),(27,27),(28,28),(29,29),(30,30), (31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40), 
(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);

--13. prod_image 

INSERT INTO prod_image (prod_iamge, prod_id) VALUES 
('image1.jpg',1),('image2.jpg',2),('image3.jpg',3),('image4.jpg',4),('image5.jpg',5), ('image6.jpg',6),('image7.jpg',7),('image8.jpg',8),
('image9.jpg',9),('image10.jpg',10), ('image11.jpg',11),('image12.jpg',12),('image13.jpg',13),('image14.jpg',14),('image15.jpg',15), 
('image16.jpg',16),('image17.jpg',17),('image18.jpg',18),('image19.jpg',19),('image20.jpg',20), ('image21.jpg',21),('image22.jpg',22),
('image23.jpg',23),('image24.jpg',24),('image25.jpg',25), ('image26.jpg',26),('image27.jpg',27),('image28.jpg',28),('image29.jpg',29),
('image30.jpg',30), ('image31.jpg',31),('image32.jpg',32),('image33.jpg',33),('image34.jpg',34),('image35.jpg',35), ('image36.jpg',36),
('image37.jpg',37),('image38.jpg',38),('image39.jpg',39),('image40.jpg',40), ('image41.jpg',41),('image42.jpg',42),('image43.jpg',43),
('image44.jpg',44),('image45.jpg',45), ('image46.jpg',46),('image47.jpg',47),('image48.jpg',48),('image49.jpg',49),('image50.jpg',50);





update Promotions 
set start_date =DATEADD(year, 1, start_date)
, end_date=DATEADD(year, 1, end_date)
where promo_id>=25
;