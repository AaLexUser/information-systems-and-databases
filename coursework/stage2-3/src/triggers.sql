

CREATE OR REPLACE FUNCTION updateTotalPrice() RETURNS TRIGGER AS $$
BEGIN
    UPDATE "orders" SET totalprice = (SELECT SUM(instock.price * "orderItems".quantity) FROM "orderItems"
                                                JOIN instock on instock.entityid = "orderItems".itemid
                                                WHERE "orderItems".orderid = NEW.orderid
                                                GROUP BY "orderItems".orderid)
                                                WHERE "orders".id = NEW.orderid;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;


CREATE trigger totalPriceTrigger
after INSERT on "orderItems"
FOR EACH ROW EXECUTE PROCEDURE updateTotalPrice();


CREATE OR REPLACE FUNCTION updateTotalItemQuantity() RETURNS TRIGGER AS $$
BEGIN
    IF ( (SELECT COUNT(*) FROM "orderItems" WHERE "orderItems".itemid = NEW.itemid and "orderItems".orderid = NEW.orderid) >= 1 )
        THEN
        UPDATE "orderItems" SET quantity = quantity + NEW.quantity WHERE itemid = NEW.itemid and "orderItems".orderid = NEW.orderid;
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
        from "orderItems" where "orderItems".orderid=new.id
        order by 1
        loop
        perform increaser(mviews.itemid, mviews.quantity);
        end loop;
        update "orderItems" set quantity=0 where "orderItems".orderid=new.id;
    END IF;

    RETURN NEW;
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER resetInstokeTrigger
BEFORE update ON orders
FOR EACH ROW EXECUTE PROCEDURE resetInstoke();


