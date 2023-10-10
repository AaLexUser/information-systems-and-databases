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

/*добавить харки тренера*/
CREATE or replace FUNCTION addTrainerStyle(
HisPhysicalsWeeper integer, HisSpecialSweeper integer,
hisWall integer, hisPhysicalTank integer, hisSpecialTank integer )
RETURNS integer AS $$
    begin
        INSERT INTO gamestylesdist values (default, HisPhysicalsWeeper,
        HisSpecialSweeper, hisWall, hisPhysicalTank, hisSpecialTank);
        return (select gamestylesdist.id from gamestylesdist order by gamestylesdist.id desc limit 1);
    end;
$$ LANGUAGE plpgsql;
