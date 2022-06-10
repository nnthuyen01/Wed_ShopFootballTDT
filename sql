create database ltweb;
use ltweb;
create table Category
(
	CategoryId INT NOT NULL PRIMARY KEY AUTO_INCREMENT, -- tự động tạo dãy số từ 1 và tăng lên 1 đơn vị
	CategoryName VARCHAR (64) NOT NULL
);

create table Brand
(
	BrandId int not null primary key auto_increment,
    BrandName varchar(64) not null
);

create table Product
(
	ProductId int not null primary key auto_increment,
    ProductName nvarchar(255) not null,
    BrandId int not null,
    CategoryId int not null,
    Model_year int not null,
    Price decimal(10,2) not null,
    ImageUrl nvarchar(256) not null,
    foreign key (CategoryId) references Category (CategoryId) on delete cascade on update cascade,
    foreign key (BrandId) references Brand (BrandId) on delete cascade on update cascade
);
select * from product 
order by ProductID desc limit 1;
insert into Category(CategoryName) values
(N'Premier League'), (N'Bundesliga'), (N'Serie A'), (N'La Liga'), (N'Ligue 1'), (N'Eredivisie');

insert into Brand (BrandName) values
(N'Nike'), (N'Adidas'), (N'Puma'), (N'Kappa'), (N'Castore'), (N'Craft'), (N'EA7 '), (N'Hummel'),
(N'Jako'), (N'Joma'), (N'Jordan'), (N'Kelme'), (N'Le Coq Sportif'), (N'Zeus'), (N'Acerbis'),
(N'Legea'), (N'Macron'), (N'Masita'), (N'Meyba'), (N'New Balance'),
(N'Patrick'), (N'Robey Sports'), (N'Stanno'), (N'Uhlsport'), (N'Umbro');
-- insert into Product (ProductName, BrandId, CategoryId, Model_year, Price, ImageUrl) values (N'Áo sân khách Manchester United 2021-2022', 2, 1, 2021, 150000, N'ManchesterUnitedA.jpg');
insert into Product (ProductName, BrandId, CategoryId, Model_year, Price, ImageUrl) values
(N'Áo sân nhà Manchester United 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/15/9BTZJCapH7f0iIb.jpg'),
(N'Áo sân khách Manchester United 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/03/eJtOc2HXxQsEOUh-small.jpg'),
(N'Áo thứ ba Manchester United 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/12/r3NnY7CEn2Xh7KH-small.jpg'),
(N'Áo thủ môn Manchester United 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/15/VP1GgaEdaBaOPpT-small.jpg'),
(N'Áo sân nhà Arsenal 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/16/EhIwSxfHFELtP1S-small.jpg'),
(N'Áo sân khách Arsenal 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/14/XAPfbOyZ4IGQ9Up-small.jpg'),
(N'Áo thứ ba Arsenal 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/11/4mA7hsVCCGphvVI-small.jpg'),
(N'Áo thủ môn Arsenal 2021-2022', 2, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/16/WHF7E37aB9ZpmJU-small.jpg'),
(N'Áo sân nhà Aston Villa 2021-2022', 4, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/14/ogov9XIrJfiShx8-small.jpg'),
(N'Áo sân khách Aston Villa 2021-2022', 4, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/30/fK4TC3PbK68Abll-small.jpg'),
(N'Áo thứ ba Aston Villa 2021-2022', 4, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/26/Nfw7UAA2H5Rioa8-small.jpg'),
(N'Áo thủ môn Aston Villa 2021-2022', 4, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/14/HmdcvbVXVafOsMW-small.jpg'),
(N'Áo sân nhà Chelsea 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/13/LgBNrCV2cBdfCzm-small.jpg'),
(N'Áo sân khách Chelsea 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/29/BAFZ3n6ZiqhCSak-small.jpg'),
(N'Áo thứ ba Chelsea 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/26/DJR13wtuYa3stHN-small.jpg'),
(N'Áo thủ môn Chelsea 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/13/gbHT3JEHUnfidFv-small.jpg'),
(N'Áo sân nhà Liverpool 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/23/ImNhHdE8L2zLjY6-small.jpg'),
(N'Áo sân khách Liverpool 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/08/kFZrAeedhtVDXEN-small.jpg'),
(N'Áo thứ ba Liverpool 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/13/CCYiqK6Do26uKLP-small.jpg'),
(N'Áo thủ môn Liverpool 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/20/64FCI31KaMeNxXI-small.jpg'),
(N'Áo sân nhà Manchester City 2021-2022', 3, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/07/aNN2oZwqu4ml8NY-small.jpg'),
(N'Áo sân khách Manchester City 2021-2022', 3, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/29/kDUQMK3BJvODfk8-small.jpg'),
(N'Áo thứ ba Manchester City 2021-2022', 3, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/18/tFpsbYPbyBqzQYJ-small.jpg'),
(N'Áo thủ môn Manchester City 2021-2022', 3, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/14/Gr4n8LNpgjsLxFB-small.jpg'),
(N'Áo sân nhà Tottenham 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/24/3TdYZcp0n83ryCJ-small.jpg'),
(N'Áo sân khách Tottenham 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/22/66onPjj60QA4ZmQ-small.jpg'),
(N'Áo thứ ba Tottenham 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/16/d40N78D59POB55W-small.jpg'),
(N'Áo thủ môn Tottenham 2021-2022', 1, 1, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/24/7hsdFXCt69jrM3k-small.jpg'),
(N'Áo sân nhà Bayern Munchen 2021-2022', 2, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/24/zJYn0OdqXOmj4FH-small.jpg'),
(N'Áo sân khách Bayern Munchen 2021-2022', 2, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/20/zS1k23yTJoGsE7Y-small.jpg'),
(N'Áo thứ ba Bayern Munchen 2021-2022', 2, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/17/u6OlTCXZUlpvwki-small.jpg'),
(N'Áo thủ môn Bayern Munchen 2021-2022', 2, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/20/TpgjsSziEEBnJvv-small.jpg'),
(N'Áo sân nhà Borussia Dortmund 2021-2022', 3, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/22/1W7yJDkC7cFhhP5-small.jpg'),
(N'Áo sân khách Borussia Dortmund 2021-2022', 3, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/23/XrAQhexW6ORIgkl-small.jpg'),
(N'Áo thứ ba Borussia Dortmund 2021-2022', 3, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/27/oABWBfu9oEUQKdP-small.jpg'),
(N'Áo thủ môn Borussia Dortmund 2021-2022', 3, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/22/FRTeOSpOFPJj9Vs-small.jpg'),
(N'Áo sân nhà Bayer Leverkusen 2021-2022', 9, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/15/FzzuHHwSNmCwsnn-small.jpg'),
(N'Áo sân khách Bayer Leverkusen 2021-2022', 9, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/31/9XkRqG1JqxRhGmf-small.jpg'),
(N'Áo thứ ba Bayer Leverkusen 2021-2022', 9, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/11/Qt3itLYMXnjclE2-small.jpg'),
(N'Áo thủ môn Bayer Leverkusen 2021-2022', 9, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/13/djGGBOlJwox8mPG-small.jpg'),
(N'Áo sân nhà Rb Leipzig 2021-2022', 1, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/13/dLnYcWH9aBW6oOc-small.jpg'),
(N'Áo sân khách Rb Leipzig 2021-2022', 1, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/23/59h7Ryt7dZzLrKi-small.jpg'),
(N'Áo thứ ba Rb Leipzig 2021-2022', 1, 2, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/14/WigLWNKbtlcyok1-small.jpg'),
(N'Áo sân nhà AC Milan 2021-2022', 3, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/11/VjZivc5Pm2olvum-small.jpg'),
(N'Áo sân khách AC Milan 2021-2022', 3, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/21/8jaONMeMDsF5Xt2-small.jpg'),
(N'Áo thứ ba AC Milan 2021-2022', 3, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/18/mVEKMHE8dcjxLKR-small.jpg'),
(N'Áo thủ môn AC Milan 2021-2022', 3, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/11/9OfuUJhBjOeQDMm-small.jpg'),
(N'Áo sân nhà Inter Milan 2021-2022', 1, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/21/GBcz0q01pGSGOcd-small.jpg'),
(N'Áo sân khách Inter Milan 2021-2022', 1, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/26/nns2Fq0EMLTT6ff-small.jpg'),
(N'Áo thứ ba Inter Milan 2021-2022', 1, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/14/HOMeepkpRR9ODpB-small.jpg'),
(N'Áo sân nhà Juventus 2021-2022', 2, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/18/XQBqcwk2sqGohUT-small.jpg'),
(N'Áo sân khách Juventus 2021-2022', 2, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/22/gOzmZIa4lhFcilh-small.jpg'),
(N'Áo thứ ba Juventus 2021-2022', 2, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/19/oerU4PGZ7eQ2DNG-small.jpg'),
(N'Áo thủ môn Juventus 2021-2022', 2, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/18/hrreQWiqf6DG8Qn-small.jpg'),
(N'Áo sân nhà AS Roma 2021-2022', 20, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/14/5R3Mdb8euHL6SY2-small.jpg'),
(N'Áo sân khách AS Roma 2021-2022', 20, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/18/9ZavfmJGSjFcmbd-small.jpg'),
(N'Áo thứ ba AS Roma 2021-2022', 20, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/11/17/uSm9IzJv4Fx5L8j-small.jpg'),
(N'Áo thủ môn AS Roma 2021-2022', 20, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/10/20/qYjA80uzm7tqkNH-small.jpg'),
(N'Áo sân nhà Napoli 2021-2022', 7, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/18/cQZofw8E87QqjHF-small.jpg'),
(N'Áo sân khách Napoli 2021-2022', 7, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/18/pYnzNNZpJMjClGn-small.jpg'),
(N'Áo thứ ba Napoli 2021-2022', 7, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/18/q0QbHYSJMNn1xzv-small.jpg'),
(N'Áo thủ môn Napoli 2021-2022', 7, 3, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/18/TiAzgiBwgCJBLMj-small.jpg'),
(N'Áo sân nhà Real Madrid 2021-2022', 2, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/06/01/ZQx8HaHg0rnBCiv-small.jpg'),
(N'Áo sân khách Real Madrid 2021-2022', 2, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/05/j34pWyCnK9lCcoH-small.jpg'),
(N'Áo thứ ba Real Madrid 2021-2022', 2, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/15/8dOO8pixhF18MD4-small.jpg'),
(N'Áo thủ môn Real Madrid 2021-2022', 2, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/06/01/YaGAbydVLbAyfgv-small.jpg'),
(N'Áo sân nhà Barcelona 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/06/15/6KLCT1WNhqT0hQF-small.jpg'),
(N'Áo sân khách Barcelona 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/15/LdPG5pTokJb14Uk-small.jpg'),
(N'Áo thứ ba Barcelona 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/16/KE7FFbTKg8H9l3Z-small.jpg'),
(N'Áo thủ môn Barcelona 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/24/86mHZJmgJhe1VK6-small.jpg'),
(N'Áo sân nhà Atlético Madrid 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/05/KPaQJW4h6IngpmO-small.jpg'),
(N'Áo sân khách Atlético Madrid 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/05/WSYoOHWhE0ZubgP-small.jpg'),
(N'Áo thứ ba Atlético Madrid 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/16/FWWj6NiTzCJO50R-small.jpg'),
(N'Áo thủ môn Atlético Madrid 2021-2022', 1, 4, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/05/CVFnoVDLLz2yvaR-small.jpg'),
(N'Áo sân nhà Paris Saint Germain 2021-2022', 11, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/14/ao0rnw2woopWB2P-small.jpg'),
(N'Áo sân khách Paris Saint Germain 2021-2022', 11, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/11/wxVNBthQ0TfSneD-small.jpg'),
(N'Áo thứ ba Paris Saint Germain 2021-2022', 11, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/09/13/Yum8SGM5OlT9do6-small.jpg'),
(N'Áo thủ môn Paris Saint Germain 2021-2022', 11, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/10/v2HNWQQ4sNDgIes-small.jpg'),
(N'Áo sân nhà Olympique Lyonnais 2021-2022', 2, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/21/LlIJ80dD2N9Uiun-small.jpg'),
(N'Áo sân khách Olympique Lyonnais 2021-2022', 2, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/21/20GwnbVjSW2M2DM-small.jpg'),
(N'Áo thứ ba Olympique Lyonnais 2021-2022', 2, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/16/KqMqRLp7jkLKRUm-small.jpg'),
(N'Áo sân nhà Olympique Marseille 2021-2022', 3, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/14/vLlmLM8b7eUMylK-small.jpg'),
(N'Áo sân khách Olympique Marseille 2021-2022', 3, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/13/hh2WfwPifZowDZg-small.jpg'),
(N'Áo thứ ba Olympique Marseille 2021-2022', 3, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/18/7KfdIoPWYemEO4w-small.jpg'),
(N'Áo thủ môn Olympique Marseille 2021-2022', 3, 5, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/13/dhkMHEgIc1sbOF9-small.jpg'),
(N'Áo sân nhà Ajax 2021-2022', 2, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/14/qPPFfMLLXBhMkQc-small.jpg'),
(N'Áo sân khách Ajax 2021-2022', 2, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/05/09/U08Xbprv02x0stg-small.jpg'),
(N'Áo thứ ba Ajax 2021-2022', 2, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/20/ETCt9eApPQuy62A-small.jpg'),
(N'Áo sân nhà Feyenoord 2021-2022', 2, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/06/25/7yRah4QfXEC2lZk-small.jpg'),
(N'Áo sân khách Feyenoord 2021-2022', 2, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/07/Pgo36lquLjCcx5C-small.jpg'),
(N'Áo thứ ba Feyenoord 2021-2022', 2, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/03/23/nwdOOjcZtgKgpEd-small.jpg'),
(N'Áo thủ môn Feyenoord 2021-2022', 2, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/07/W7gbHBQm3U0F90W-small.jpg'),
(N'Áo sân nhà Heerenveen 2021-2022', 9, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/07/28/1Y5yOzfTM9Euins-small.jpg'),
(N'Áo sân khách Heerenveen 2021-2022', 9, 6, 2021, 150000, N'https://cdn.footballkitarchive.com/2021/08/07/KJdtseQ0aM0mkyZ-small.jpg');

CREATE TABLE Account(
	AccountId INT NOT NULL PRIMARY KEY auto_increment,
	Username VARCHAR(32) NOT NULL UNIQUE,
	Password VARBINARY(64) NOT NULL,
	Email VARCHAR(128) NOT NULL,
	Phone VARCHAR(16),
	CreatedDate DATETIME NOT NULL DEFAULT current_timestamp
);

INSERT INTO Account(Username, Password, Email, Phone) VALUES
(N'thanh', '123',N'thanh@gmail.com', N'01245364857'),
(N'thuyen', '123',N'thuyen@gmail.com', N'01245364857'),
(N'dung', '123',N'dung@gmail.com', N'01245364857');
