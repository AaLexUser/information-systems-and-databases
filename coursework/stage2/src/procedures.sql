CREATE or replace FUNCTION addNewOrder(
trainerId int)
RETURNS void AS $$
INSERT INTO orders values (DEFAULT, trainerId,
1,
DEFAULT, DEFAULT);
$$ LANGUAGE SQL;

CREATE or replace FUNCTION addNewEntity(newEntityType varchar(32))
RETURNS void AS $$
    insert into entities values (default, newEntityType);
$$ LANGUAGE SQL;

CREATE or replace FUNCTION addNewStone(name varchar(32))
RETURNS void AS $$
    select addNewEntity('STONE');
    insert into stonewiki values ((select id from entities order by entities.id DESC limit 1), name);
$$ LANGUAGE SQL;


select* from entities;

CREATE or replace FUNCTION addNewItenToStore(
wareId int, count int, price money)
RETURNS void AS $$
begin
    if((select count(*) from instock where instock.entityid=wareId)>0)
        then
            perform increaser(wareId, count);
        else
            insert into instock values (default, wareId, count, price);
    end if;
end;
$$ LANGUAGE plpgsql;


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



