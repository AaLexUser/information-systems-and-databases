INSERT INTO people values (DEFAULT, 'Floyd', 400, 'MALE');
INSERT INTO people values (DEFAULT, 'Anna', 500, 'FEMALE');
INSERT INTO people values (DEFAULT, 'Halvorsen', 300, 'MALE');
INSERT INTO people values (DEFAULT, 'Sirenis',600, 'FEMALE');

INSERT INTO houseTypes values (DEFAULT, 'apartments') ON CONFLICT DO NOTHING;
INSERT INTO houseTypes values (DEFAULT, 'detached house') ON CONFLICT DO NOTHING;
INSERT INTO houseTypes values (DEFAULT, 'cottage') ON CONFLICT DO NOTHING;
INSERT INTO houseTypes values (DEFAULT, 'townhouse') ON CONFLICT DO NOTHING;

INSERT INTO houses values (DEFAULT, 'Kronverksky Pr. 49', (SELECT housetypes.id FROM houseTypes WHERE name='apartments'));
INSERT INTO houses values (DEFAULT, 'Lomonosova Street, 9', (SELECT housetypes.id FROM houseTypes WHERE name='detached house'));
INSERT INTO houses values (DEFAULT, 'Tchaykovskogo St, 11/2', (SELECT housetypes.id FROM houseTypes WHERE name='cottage'));
INSERT INTO houses values (DEFAULT, 'Grivtsova Lane, 14', (SELECT housetypes.id FROM houseTypes WHERE name='townhouse'));
INSERT INTO houses values (DEFAULT, 'Birzhevaya Line, 14', (SELECT housetypes.id FROM houseTypes WHERE name='apartments'));

INSERT INTO personliveinhouse values (
                                      (SELECT id FROM people WHERE name='Floyd'),
                                      (SELECT id FROM houses WHERE location='Kronverksky Pr. 49')
                                      );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Anna'),
                                        (SELECT id FROM houses WHERE location='Kronverksky Pr. 49')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Halvorsen'),
                                        (SELECT id FROM houses WHERE location='Kronverksky Pr. 49')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Sirenis'),
                                        (SELECT id FROM houses WHERE location='Kronverksky Pr. 49')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Halvorsen'),
                                        (SELECT id FROM houses WHERE location='Lomonosova Street, 9')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Anna'),
                                        (SELECT id FROM houses WHERE location='Lomonosova Street, 9')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Sirenis'),
                                        (SELECT id FROM houses WHERE location='Lomonosova Street, 9')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Halvorsen'),
                                        (SELECT id FROM houses WHERE location='Tchaykovskogo St, 11/2')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Anna'),
                                        (SELECT id FROM houses WHERE location='Tchaykovskogo St, 11/2')
                                        );

INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Anna'),
                                        (SELECT id FROM houses WHERE location='Grivtsova Lane, 14')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Sirenis'),
                                        (SELECT id FROM houses WHERE location='Grivtsova Lane, 14')
                                        );
INSERT INTO personliveinhouse values (
                                        (SELECT id FROM people WHERE name='Halvorsen'),
                                        (SELECT id FROM houses WHERE location='Birzhevaya Line, 14')
                                        );


INSERT INTO relationshiptypes values (DEFAULT, 'friend');
INSERT INTO relationshiptypes values (DEFAULT, 'enemy');
INSERT INTO relationshiptypes values (DEFAULT, 'relative');
INSERT INTO relationshiptypes values (DEFAULT, 'colleague');

INSERT INTO relationships values (
                                 (SELECT id FROM people WHERE name='Floyd'),
                                 (SELECT id FROM people WHERE name='Anna'),
                                 (SELECT id FROM relationshiptypes WHERE name='friend'),
                                 '2019-01-01'
                                 );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Floyd'),
                                    (SELECT id FROM people WHERE name='Halvorsen'),
                                    (SELECT id FROM relationshiptypes WHERE name='enemy'),
                                    '2020-03-12'
                                    );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Floyd'),
                                    (SELECT id FROM people WHERE name='Sirenis'),
                                    (SELECT id FROM relationshiptypes WHERE name='relative'),
                                    '2022-12-01'
                                    );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Anna'),
                                    (SELECT id FROM people WHERE name='Halvorsen'),
                                    (SELECT id FROM relationshiptypes WHERE name='colleague'),
                                    '2020-04-11'
                                    );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Anna'),
                                    (SELECT id FROM people WHERE name='Sirenis'),
                                    (SELECT id FROM relationshiptypes WHERE name='friend'),
                                    '2020-04-11'
                                    );
INSERT INTO relationships values (
                                 (SELECT id FROM people WHERE name='Anna'),
                                        (SELECT id FROM people WHERE name='Floyd'),
                                        (SELECT id FROM relationshiptypes WHERE name='friend'),
                                        '2021-07-02'
                                        );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Halvorsen'),
                                    (SELECT id FROM people WHERE name='Sirenis'),
                                    (SELECT id FROM relationshiptypes WHERE name='enemy'),
                                    '2022-08-23'
                                    );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Halvorsen'),
                                    (SELECT id FROM people WHERE name='Anna'),
                                    (SELECT id FROM relationshiptypes WHERE name='colleague'),
                                    '2022-05-24'
                                    );
INSERT INTO relationships values (
                                 (SELECT id FROM people WHERE name='Halvorsen'),
                                        (SELECT id FROM people WHERE name='Floyd'),
                                        (SELECT id FROM relationshiptypes WHERE name='enemy'),
                                        '2022-03-13'
                                        );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Sirenis'),
                                    (SELECT id FROM people WHERE name='Anna'),
                                    (SELECT id FROM relationshiptypes WHERE name='friend'),
                                    '2022-04-14'
                                    );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Sirenis'),
                                    (SELECT id FROM people WHERE name='Halvorsen'),
                                    (SELECT id FROM relationshiptypes WHERE name='enemy'),
                                    '2022-04-14'
                                    );
INSERT INTO relationships values (
                                    (SELECT id FROM people WHERE name='Sirenis'),
                                    (SELECT id FROM people WHERE name='Floyd'),
                                    (SELECT id FROM relationshiptypes WHERE name='relative'),
                                    '2022-04-14'
                                    );


INSERT INTO difficulties values (DEFAULT, 'easy', 100);
INSERT INTO difficulties values (DEFAULT, 'medium', 200);
INSERT INTO difficulties values (DEFAULT, 'hard', 300);

INSERT INTO statuses values (DEFAULT, 'active');
INSERT INTO statuses values (DEFAULT, 'done');
INSERT INTO statuses values (DEFAULT, 'failed');
INSERT INTO statuses values (DEFAULT, 'paused');

INSERT INTO plans values (
                          DEFAULT,
                          (SELECT id FROM people WHERE name='Floyd'),
                          (SELECT id FROM statuses WHERE name='active')
                         );
INSERT INTO plans values (
                          DEFAULT,
                          (SELECT id FROM people WHERE name='Anna'),
                          (SELECT id FROM statuses WHERE name='paused')
                         );
INSERT INTO plans values (
                          DEFAULT,
                          (SELECT id FROM people WHERE name='Halvorsen'),
                          (SELECT id FROM statuses WHERE name='done')
                         );
INSERT INTO plans values (
                          DEFAULT,
                          (SELECT id FROM people WHERE name='Sirenis'),
                          (SELECT id FROM statuses WHERE name='failed')
                         );
INSERT INTO plans values (
                          DEFAULT,
                          (SELECT id FROM people WHERE name='Floyd'),
                          (SELECT id FROM statuses WHERE name='failed')
                         );

INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='active')),
                          (SELECT id FROM difficulties WHERE name='easy'),
                          'Go to the store'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='active')),
                          (SELECT id FROM difficulties WHERE name='medium'),
                          'Buy a new phone'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='active')),
                          (SELECT id FROM difficulties WHERE name='hard'),
                          'Buy a new car'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Anna') AND statusid=(SELECT id FROM statuses WHERE name='paused')),
                          (SELECT id FROM difficulties WHERE name='easy'),
                          'Pass the exam'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Anna') AND statusid=(SELECT id FROM statuses WHERE name='paused')),
                          (SELECT id FROM difficulties WHERE name='hard'),
                          'Graduate from university'
                         );
INSERT INTO steps values (
                            DEFAULT,
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done')),
                            (SELECT id FROM difficulties WHERE name='easy'),
                            'Do the laboratory work'
                        );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done')),
                          (SELECT id FROM difficulties WHERE name='hard'),
                          'Submit the laboratory work'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done')),
                          (SELECT id FROM difficulties WHERE name='hard'),
                          'Answer the questions'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done')),
                          (SELECT id FROM difficulties WHERE name='hard'),
                          'Conquer the world'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Sirenis') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                          (SELECT id FROM difficulties WHERE name='easy'),
                          'Do the homework'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Sirenis') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                          (SELECT id FROM difficulties WHERE name='medium'),
                          'Brush teeth'
                         );
INSERT INTO steps values (
                          DEFAULT,
                          (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Sirenis') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                          (SELECT id FROM difficulties WHERE name='hard'),
                          'Go to bed'
                         );
INSERT INTO steps values (
                            DEFAULT,
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                            (SELECT id FROM difficulties WHERE name='easy'),
                            'Become a trillionaire'
                        );

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

INSERT INTO goalinplan values (
                               (SELECT id FROM goal WHERE name='Become a millionaire from billionaire'),
                               (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='active'))
                              );
INSERT INTO goalinplan values (
                               (SELECT id FROM goal WHERE name='Graduate from university'),
                               (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Anna') AND statusid=(SELECT id FROM statuses WHERE name='paused'))
                              );
INSERT INTO goalinplan values (
                               (SELECT id FROM goal WHERE name='Conquer the world'),
                               (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done'))
                              );
INSERT INTO goalinplan values (
                               (SELECT id FROM goal WHERE name='Submit the laboratory work'),
                               (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done'))
                              );
INSERT INTO goalinplan values (
                               (SELECT id FROM goal WHERE name='Go to sleep'),
                               (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Sirenis') AND statusid=(SELECT id FROM statuses WHERE name='failed'))
                              );
INSERT INTO goalinplan values (
                               (SELECT id FROM goal WHERE name='Conquer the world'),
                               (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='failed'))
                              );

INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Floyd'),
                            (SELECT plans.id FROM plans WHERE ownerid=(SELECT people.id FROM people WHERE name='Anna') AND statusid=(SELECT statuses.id FROM statuses WHERE name='paused')),
                            100
                           );
INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Floyd'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done')),
                            -300
                           );
INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Floyd'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Sirenis') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                            200
                           );
INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Anna'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Halvorsen') AND statusid=(SELECT id FROM statuses WHERE name='done')),
                            50
                           );
INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Anna'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Sirenis') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                            200
                           );
INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Anna'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                            100
                           );
INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Halvorsen'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Sirenis') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                            200
                           );
INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Halvorsen'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Floyd') AND statusid=(SELECT id FROM statuses WHERE name='failed')),
                            -100
                           );

INSERT INTO support values (
                            (SELECT id FROM people WHERE name='Sirenis'),
                            (SELECT id FROM plans WHERE ownerid=(SELECT id FROM people WHERE name='Anna') AND statusid=(SELECT id FROM statuses WHERE name='paused')),
                            100
                           );

