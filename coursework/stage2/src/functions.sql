/*добавить заказ*/
CREATE FUNCTION checkLimit(
itemId int, itemCount int )
RETURNS bool AS $$
(select sum(instock.quantity) from instock where instock.entityid=itemId >= itemCount);
$$ LANGUAGE SQL;

