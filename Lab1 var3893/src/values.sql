INSERT INTO people values (DEFAULT, 'Floyd', 1, 'MALE'); -- 1
INSERT INTO people values (DEFAULT, 'Anna', 2, 'FEMALE'); -- 2
INSERT INTO people values (DEFAULT, 'Halvorsen', 3, 'MALE'); -- 3
INSERT INTO people values (DEFAULT, 'Sirenis',4, 'FEMALE'); -- 4
INSERT INTO people values (DEFAULT, 'Alexander', 1, 'MALE'); -- 5
INSERT INTO people values (DEFAULT, 'Amelia', 2, 'FEMALE'); -- 6
INSERT INTO people values (DEFAULT, 'Adam', 3, 'MALE'); -- 7
INSERT INTO people values (DEFAULT, 'Alexey', 2, 'MALE'); -- 8

INSERT INTO houseTypes values (DEFAULT, 'apartments') ON CONFLICT DO NOTHING;
INSERT INTO houseTypes values (DEFAULT, 'detached house') ON CONFLICT DO NOTHING;
INSERT INTO houseTypes values (DEFAULT, 'cottage') ON CONFLICT DO NOTHING;
INSERT INTO houseTypes values (DEFAULT, 'townhouse') ON CONFLICT DO NOTHING;

INSERT INTO houses values (DEFAULT, 'St. Petersburg Kronverksky Pr. 49', (SELECT housetypes.id FROM houseTypes WHERE name='apartments'));
INSERT INTO houses values (DEFAULT, 'St. Petersburg Lomonosova Street, 9', (SELECT housetypes.id FROM houseTypes WHERE name='detached house'));
INSERT INTO houses values (DEFAULT, 'Moscow Tchaykovskogo St, 11/2', (SELECT housetypes.id FROM houseTypes WHERE name='cottage'));
INSERT INTO houses values (DEFAULT, 'Moscow Grivtsova Lane, 14', (SELECT housetypes.id FROM houseTypes WHERE name='townhouse'));
INSERT INTO houses values (DEFAULT, 'Murmansk Birzhevaya Line, 14', (SELECT housetypes.id FROM houseTypes WHERE name='apartments'));


DO $$
    DECLARE NUM_OF_PEOPLE INT = 8;
    DECLARE NUM_OF_PLANS INT = 0;
    DECLARE NUM_OF_STEPS INT = 0;
BEGIN
    FOR i IN 2..NUM_OF_PEOPLE LOOP
        INSERT INTO personliveinhouse VALUES (i, 1);
    END LOOP;
    FOR i IN 1..NUM_OF_PEOPLE LOOP
        IF i NOT IN (2, 3, 4) THEN
            INSERT INTO personliveinhouse VALUES (i, 2);
        END IF;
    END LOOP;
    FOR i IN 1..NUM_OF_PEOPLE LOOP
        IF i NOT IN (4, 6, 7) THEN
            INSERT INTO personliveinhouse VALUES (i, 3);
        END IF;
    END LOOP;
    FOR i IN 1..NUM_OF_PEOPLE LOOP
        IF i NOT IN (8, 2, 1) THEN
            INSERT INTO personliveinhouse VALUES (i, 4);
        END IF;
    END LOOP;
    FOR i IN 1..NUM_OF_PEOPLE LOOP
        IF i NOT IN (1, 2, 3) THEN
            INSERT INTO personliveinhouse VALUES (i, 5);
        END IF;
    END LOOP;

    INSERT INTO relationshiptypes values (DEFAULT, 'friend');
    INSERT INTO relationshiptypes values (DEFAULT, 'enemy');

    FOR i IN 1..NUM_OF_PEOPLE LOOP
        FOR j IN 1..NUM_OF_PEOPLE LOOP
            IF i != j AND i NOT IN (2, 4, 1, 3) AND j NOT IN (2, 4, 1, 3) THEN
                INSERT INTO relationships values (
                                                    i,
                                                    j,
                                                    1,
                                                    '2019-01-01'
                                                );

            ELSIF (i != j) AND (i IN (2, 4, 1, 3) OR j IN (2, 4, 1, 3)) THEN
                INSERT INTO relationships values (
                                                    i,
                                                    j,
                                                    2,
                                                    '2020-03-12'
                                                );
            END IF;
        END LOOP;
    END LOOP;

    INSERT INTO difficulties values (DEFAULT, 'easy', 100);
    INSERT INTO difficulties values (DEFAULT, 'medium', 200);
    INSERT INTO difficulties values (DEFAULT, 'hard', 300);

    INSERT INTO statuses values (DEFAULT, 'active');
    INSERT INTO statuses values (DEFAULT, 'done');
    INSERT INTO statuses values (DEFAULT, 'failed');

    FOR i IN 1..NUM_OF_PEOPLE LOOP
        INSERT INTO plans values (
                                    DEFAULT,
                                    i,
                                    1
                                 );
        NUM_OF_PLANS := NUM_OF_PLANS + 1;
    END LOOP;



    FOR i IN 1..NUM_OF_PEOPLE LOOP
        IF i NOT IN (2, 4, 1, 3) THEN
            INSERT INTO plans values (
                                        DEFAULT,
                                        i,
                                        2
                                     );
            NUM_OF_PLANS := NUM_OF_PLANS + 1;
        END IF;
    END LOOP;


    FOR i IN 1..NUM_OF_PEOPLE LOOP
        IF i NOT IN (5, 6, 2, 8) THEN
            INSERT INTO plans values (
                                        DEFAULT,
                                        i,
                                        3
                                     );
            NUM_OF_PLANS := NUM_OF_PLANS + 1;
        END IF;
    END LOOP;

    NUM_OF_STEPS := 12;

    FOR i IN 1..NUM_OF_PLANS LOOP
        FOR j IN 1..NUM_OF_STEPS LOOP
            IF i NOT IN (2, 4, 1, 3, 5, 6, 7, 8) THEN
                INSERT INTO steps values (
                                            DEFAULT,
                                            i,
                                            1,
                                            'Do something special'
                                         );
            ELSIF i IN (2, 4) THEN
                INSERT INTO steps values (
                                            DEFAULT,
                                            i,
                                            2,
                                            'Do it'
                                         );
            ELSIF i IN (7) THEN
                INSERT INTO steps values (
                                            DEFAULT,
                                            i,
                                            3,
                                            'Do it'
                                         );
            ELSE
                INSERT INTO steps values (
                                            DEFAULT,
                                            i,
                                            3,
                                            'Do something amazing'
                                         );
            END IF;
        END LOOP;
    END LOOP;


    INSERT INTO goal values (
                             DEFAULT,
                             'Become a millionaire from billionaire'
                            );
    INSERT INTO goal values (
                             DEFAULT,
                             'Graduate from university'
                            );
    INSERT INTO goal values (
                             DEFAULT,
                             'Conquer the world'
                            );
    INSERT INTO goal values (
                             DEFAULT,
                             'Submit the laboratory work'
                            );
    INSERT INTO goal values (
                             DEFAULT,
                             'Go to sleep'
                            );

    FOR i IN 1..NUM_OF_PLANS LOOP
        IF i NOT IN (2, 4, 1, 3, 5, 6, 7, 8) THEN
            INSERT INTO goalinplan values (
                                           i,
                                            (SELECT id FROM goal WHERE name='Become a millionaire from billionaire')
                                           );
        ELSIF i IN (2, 4) THEN
            INSERT INTO goalinplan values (
                                           i,
                                            (SELECT id FROM goal WHERE name='Graduate from university')
                                           );
        ELSE
            INSERT INTO goalinplan values (
                                           i,
                                            (SELECT id FROM goal WHERE name='Conquer the world')
                                           );
        END IF;
    END LOOP;

    FOR i IN 1..NUM_OF_PEOPLE LOOP
        FOR j IN 1..NUM_OF_PLANS LOOP
            IF (SELECT relationtypeid FROM relationships WHERE
                                                             personid1 = i
                                                         AND personid2 = (SELECT ownerid FROM plans WHERE id = j)) = 1 THEN
                INSERT INTO support values (
                                            i,
                                            j,
                                            100
                                           );
            ELSE
                INSERT INTO support values (
                                            i,
                                            j,
                                            -100
                                           );
            END IF;
        END LOOP;
    END LOOP;
END $$