/*Create your own store!
Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in.
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store.
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.*/

CREATE TABLE office_supply (id INTEGER PRIMARY KEY, type TEXT, color TEXT, quantity INTEGER, price INTEGER);

INSERT INTO office_supply VALUES(1, "Stapler", "Red", 45, 10);
INSERT INTO office_supply VALUES(2, "Stapler", "Black", 32, 10);
INSERT INTO office_supply VALUES(3, "100 Pack of Staples", "Silver", 50, 3);
INSERT INTO office_supply VALUES(4, "100 Pack of Printer Paper", "White", 40, 5);
INSERT INTO office_supply VALUES(5, "100 Pack of Printer Paper", "Pink", 20, 7);
INSERT INTO office_supply VALUES(6, "Pencil", "Yellow", 100, 1);
INSERT INTO office_supply VALUES(7, "Pencil", "Red", 84, 1);
INSERT INTO office_supply VALUES(8, "Pen", "Black", 100, 2);
INSERT INTO office_supply VALUES(9, "Pen", "Blue", 45, 2);
INSERT INTO office_supply VALUES(10, "Pen", "Red", 64, 2);
INSERT INTO office_supply VALUES(11, "Eraser", "Pink", 50, 4);
INSERT INTO office_supply VALUES(12, "Ruler", "Clear", 15, 6);
INSERT INTO office_supply VALUES(13, "Binder", "Blue", 30, 11);
INSERT INTO office_supply VALUES(14, "Binder", "White", 55, 10);
INSERT INTO office_supply VALUES(15, "Desk", "Brown", 10, 250);

/*to order by most expensive:*/
SELECT * FROM office_supply
	ORDER BY price DESC;

/*cost if you buy one of each item:*/
SELECT SUM(price) FROM office_supply;

/*number of items in the store:*/
SELECT SUM(quantity) FROM office_supply;

/*find cheapest items:*/
SELECT * FROM office_supply
	WHERE price < 5;

/*find the total cost of each item's entire stock*/
SELECT type, (price * quantity) AS total_cost FROM office_supply;


