/*проверка наличия такого числа товаров*/
CREATE or replace FUNCTION checkLimit(
itemId int, itemCount int )
RETURNS bool AS $$
    begin
    return ((select instock.quantity from instock where instock.entityid=itemId) >= itemCount);
    end;
$$ LANGUAGE plpgsql;

/*узнать тип*/
CREATE or replace FUNCTION whatTypeIs(
pokId int)
RETURNS setof pokemontotypes AS $$
(select * from pokemontotypes where pokemontotypes.pokemonid=pokId);
$$ LANGUAGE SQL;

/*узнать статус заказа*/
CREATE or replace FUNCTION knowOrderStatus(
orderId int)
RETURNS int AS $$
(select statusid from orders where orders.id=orderId);
$$ LANGUAGE SQL;
