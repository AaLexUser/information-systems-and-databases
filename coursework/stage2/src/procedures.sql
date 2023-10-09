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

CREATE or replace FUNCTION increaser(
itemId int, itemCount int)
RETURNS void AS $$
update instock set quantity=quantity+itemCount where instock.entityid=itemId;
$$ LANGUAGE SQL;

CREATE or replace FUNCTION setOrderStatus(
orderID int, orderStatus int)
RETURNS void AS $$
update orders set statusid=orderStatus where orders.id=orderID;
$$ LANGUAGE SQL;

select setOrderStatus(33, 2);
select setOrderStatus(30, 1);

select * from "orderItems" where orderid=33;
SELECT * FROM orders ORDER BY id DESC LIMIT 2;
select * from instock;
select addToOrder(33, 4, 1);
select addNewOrder(2);

select addNewOrder(2);


select quantity, itemid
        from "orderItems" where "orderItems".orderid=31;

