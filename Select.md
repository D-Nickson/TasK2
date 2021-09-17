
 Create request:
- product search request by name (also search by part of the name);

SELECT * FROM `Products` WHERE `productName`='hammer'


SELECT * FROM `Products` WHERE `productName` LIKE '%drill%';



- product search request by price, from and to;

SELECT * FROM `Products` WHERE `price` = 110.67;

SELECT * FROM `Products` WHERE `price` BETWEEN 43.2 AND 500;




- orders search request by date, from and to;

SELECT * FROM `Orders` WHERE `dateOrder`='2021-09-15 13:09:18'

SELECT * FROM `Orders` WHERE `dateOrder` BETWEEN '2021-09-16' AND '2021-09-18'





- user search request by email;
SELECT * FROM `Users` WHERE `email` ='morgan@mail.com'
- users search request by selection email;
SELECT * FROM `Users` WHERE `email` in ('morgan@mail.com', 'nick@mail.com')

- request to get a list of users from the products they have added (left join).



SELECT users.idUser, Users.firstName, Users.email, Products.productName FROM Products LEFT JOIN Users ON Users.idUser=Products.User
