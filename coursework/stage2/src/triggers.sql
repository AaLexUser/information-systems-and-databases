CREATE OR REPLACE FUNCTION updateTotalPrice() RETURNS TRIGGER AS $$
BEGIN
    UPDATE "orders" SET totalprice = (SELECT SUM(instock.price * "orderItems".quantity) FROM "orderItems"
                                                JOIN instock on instock.entityid = "orderItems".itemid
                                                WHERE "orderItems".orderid = NEW.orderid
                                                AND instock.entityid = NEW.itemid
                                                GROUP BY "orderItems".orderid)
                                                WHERE "orders".id = NEW.orderid;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER totalPriceTrigger
AFTER INSERT ON "orderItems"
FOR EACH ROW EXECUTE PROCEDURE updateTotalPrice();

CREATE OR REPLACE TRIGGER totalItemQuantityTrigger
BEFORE INSERT ON "orderItems"
FOR EACH ROW EXECUTE PROCEDURE updateTotalItemQuantity();

CREATE OR REPLACE FUNCTION updateTotalItemQuantity() RETURNS TRIGGER AS $$
BEGIN
    IF ( (SELECT COUNT(*) FROM "orderItems" WHERE "orderItems".itemid = NEW.itemid) > 1 )
        THEN
        UPDATE "orderItems" SET quantity = quantity + NEW.quantity WHERE itemid = NEW.itemid;
        RETURN NULL;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER totalItemQuantityTrigger
BEFORE INSERT ON "orderItems"
FOR EACH ROW EXECUTE PROCEDURE updateTotalItemQuantity();
