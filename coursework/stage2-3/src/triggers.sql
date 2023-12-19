

CREATE OR REPLACE FUNCTION updateTotalPrice() RETURNS TRIGGER AS $$
BEGIN
    UPDATE "orders" SET totalprice = (SELECT SUM(instock.price * orderitems.quantity) FROM orderitems
                                                JOIN instock on instock.entityid = orderitems.itemid
                                                WHERE orderitems.orderid = NEW.orderid
                                                GROUP BY orderitems.orderid)
                                                WHERE "orders".id = NEW.orderid;
    RETURN NEW;
END
$$
    LANGUAGE plpgsql;


CREATE trigger totalPriceTrigger
after INSERT on orderitems
FOR EACH ROW EXECUTE PROCEDURE updateTotalPrice();


CREATE OR REPLACE FUNCTION updateTotalItemQuantity() RETURNS TRIGGER AS $$
BEGIN
    IF ( (SELECT COUNT(*) FROM orderitems WHERE orderitems.itemid = NEW.itemid and orderitems.orderid = NEW.orderid) >= 1 )
        THEN
        UPDATE orderitems SET quantity = quantity + NEW.quantity WHERE itemid = NEW.itemid and orderitems.orderid = NEW.orderid;
        RETURN NULL;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION resetInstoke() RETURNS TRIGGER AS $$
declare mviews record;
BEGIN
    IF (new.statusid = 2)
        THEN
        for mviews in
        select quantity, itemid
        from orderitems where orderitems.orderid=new.id
        order by 1
        loop
        perform increaser(mviews.itemid, mviews.quantity);
        end loop;
        update orderitems set quantity=0 where orderitems.orderid=new.id;
    END IF;

    RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER resetInstokeTrigger
BEFORE update ON orders
FOR EACH ROW EXECUTE PROCEDURE resetInstoke();


