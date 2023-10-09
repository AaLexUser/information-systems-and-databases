CREATE or replace FUNCTION addNewOrder(
trainerId int)
RETURNS void AS $$
INSERT INTO orders values (DEFAULT, trainerId,
1,
DEFAULT, DEFAULT);
$$ LANGUAGE SQL;

CREATE or replace FUNCTION addToOrder(
orderId int, itemId int, itemCount int)
RETURNS void AS $$
insert into "orderItems" values (orderId, itemId, itemCount);
select decreaser(itemId, itemCount);
$$ LANGUAGE SQL;

CREATE or replace FUNCTION decreaser(
itemId int, itemCount int)
RETURNS void AS $$
update instock set quantity=quantity-itemCount where instock.entityid=itemId;
$$ LANGUAGE SQL;



SELECT * FROM orders ORDER BY id DESC LIMIT 2;
select * from instock;
select addToOrder(31, 1, 1);