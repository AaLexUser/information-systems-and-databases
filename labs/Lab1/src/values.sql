INSERT INTO people values (DEFAULT, 'Floyd', 'MALE');
INSERT INTO people values (DEFAULT, 'Anna', 'FEMALE');
INSERT INTO people values (DEFAULT, 'Halvorsen', 'MALE');
INSERT INTO people values (DEFAULT, 'Kate', 'FEMALE');

INSERT INTO apartments values (DEFAULT, 'Kronverksky Pr. 49');
INSERT INTO apartments values (DEFAULT, 'Lomonosova Street, 9');
INSERT INTO apartments values (DEFAULT, 'Tchaykovskogo St, 11/2');
INSERT INTO apartments values (DEFAULT, 'Grivtsova Lane, 14');
INSERT INTO apartments values (DEFAULT, 'Birzhevaya Line, 14');

INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Floyd'),
                                          (SELECT apartmentid FROM apartments WHERE location='Kronverksky Pr. 49')
                                          );
INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Anna'),
                                          (SELECT apartmentid FROM apartments WHERE location='Kronverksky Pr. 49')
                                          );

INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Anna'),
                                          (SELECT apartmentid FROM apartments WHERE location='Lomonosova Street, 9')
                                          );

INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Halvorsen'),
                                          (SELECT apartmentid FROM apartments WHERE location='Grivtsova Lane, 14')
                                          );

INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Halvorsen'),
                                          (SELECT apartmentid FROM apartments WHERE location='Kronverksky Pr. 49')
                                          );

INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Halvorsen'),
                                          (SELECT apartmentid FROM apartments WHERE location='Tchaykovskogo St, 11/2')
                                          );

INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Kate'),
                                          (SELECT apartmentid FROM apartments WHERE location='Birzhevaya Line, 14')
                                          );

INSERT INTO personliveinapartment values (
                                          (SELECT personid FROM people WHERE name='Kate'),
                                          (SELECT apartmentid FROM apartments WHERE location='Kronverksky Pr. 49')
                                          );

INSERT INTO roomtypes values (DEFAULT, 'living room');
INSERT INTO roomtypes values (DEFAULT, 'bedroom');
INSERT INTO roomtypes values (DEFAULT, 'kitchen');
INSERT INTO roomtypes values (DEFAULT, 'office');

INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Kronverksky Pr. 49'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='office'),
                          4.5,
                          4.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Kronverksky Pr. 49'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='living room'),
                          40.5,
                          34.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Lomonosova Street, 9'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='office'),
                          31.5,
                          230.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Lomonosova Street, 9'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='living room'),
                          31.5,
                          230.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Lomonosova Street, 9'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='bedroom'),
                          400.5,
                          340.5
                          );

INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Lomonosova Street, 9'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='office'),
                          323.5,
                          235.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Tchaykovskogo St, 11/2'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='office'),
                          41.5,
                          44.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Tchaykovskogo St, 11/2'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='living room'),
                          410.5,
                          33.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Grivtsova Lane, 14'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='office'),
                          311.5,
                          23.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Grivtsova Lane, 14'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='living room'),
                          1.5,
                          23.5
                          );
INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Birzhevaya Line, 14'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='bedroom'),
                          255.5,
                          250.5
                          );

INSERT INTO rooms values (
                          DEFAULT,
                          (SELECT apartmentid FROM apartments WHERE location='Birzhevaya Line, 14'),
                          (SELECT roomtypeid FROM roomtypes WHERE name='office'),
                          323.5,
                          250.5
                          );

INSERT INTO sizes values (DEFAULT, 'small', 100, 100);
INSERT INTO sizes values (DEFAULT, 'middle', 200, 200);
INSERT INTO sizes values (DEFAULT, 'big', 300, 300);

INSERT INTO photos values (
                           DEFAULT,
                           (SELECT roomid FROM rooms where
                                                         roomtypeid=(SELECT roomtypeid FROM roomtypes WHERE name='office')
                                                         AND apartmentid = (SELECT apartmentid FROM apartments WHERE location='Kronverksky Pr. 49')
                                                     AND lenght = 4.5),
                           (SELECT sizeid FROM sizes where name='big')
                          );
INSERT INTO photos values (
                           DEFAULT,
                           (SELECT roomid FROM rooms where
                                                         roomtypeid=(SELECT roomtypeid FROM roomtypes WHERE name='bedroom')
                                                         AND apartmentid = (SELECT apartmentid FROM apartments WHERE location='Lomonosova Street, 9')
                                                     AND lenght = 323.5),
                           (SELECT sizeid FROM sizes where name='small')
                          );
INSERT INTO photos values (
                           DEFAULT,
                           (SELECT roomid FROM rooms where
                                                         roomtypeid=(SELECT roomtypeid FROM roomtypes WHERE name='office')
                                                         AND apartmentid = (SELECT apartmentid FROM apartments WHERE location='Birzhevaya Line, 14')
                                                     AND lenght = 255.5),
                           (SELECT sizeid FROM sizes where name='small')
                          );
INSERT INTO photos values (
                           DEFAULT,
                           1,
                           1
                          );
INSERT INTO photos values (
                           DEFAULT,
                           2,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                            3,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                           4,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                           5,
                           1
                          );
INSERT INTO photos values (
                           DEFAULT,
                            6,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                            7,
                           3
                          );
INSERT INTO photos values (
                           DEFAULT,
                           8,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                           9,
                           1
                          );
INSERT INTO photos values (
                           DEFAULT,
                           10,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                            11,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                           12,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                           11,
                           1
                          );
INSERT INTO photos values (
                           DEFAULT,
                            12,
                           2
                          );
INSERT INTO photos values (
                           DEFAULT,
                            4,
                           3
                          );
INSERT INTO photos values (
                           DEFAULT,
                           5,
                           2
                          );

INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Floyd'),
                                1,
                                'YES'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Kate'),
                                2,
                                  'YES'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Halvorsen'),
                                3,
                                  'NO'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Floyd'),
                                4,
                                'YES'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Kate'),
                                12,
                                  'YES'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Halvorsen'),
                                13,
                                  'NO'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Anna'),
                                14,
                                'YES'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Kate'),
                                5,
                                  'YES'
                                 );
INSERT INTO persononphoto values (
                                  (SELECT personid FROM people WHERE name='Halvorsen'),
                                7,
                                  'NO'
                                 );

INSERT INTO majors values (DEFAULT, 'politician');
INSERT INTO majors values (DEFAULT, 'astronaut');

INSERT INTO jobs values (
                         DEFAULT,
                         (SELECT majorid FROM majors WHERE name='astronaut'),
                         'Specialist in repair of onboard systems of the spacecraft',
                         'SpaceX',
                         1000000
                        );
INSERT INTO jobs values (
                         DEFAULT,
                         (SELECT majorid FROM majors WHERE name='astronaut'),
                         'Specialist in washing floors in a spaceship',
                         'SpaceX',
                         1200000
                        );
INSERT INTO jobs values (
                         DEFAULT,
                         (SELECT majorid FROM majors WHERE name='politician'),
                         'King of the USA',
                         'USA',
                         2000000000
                        );
INSERT INTO jobs values (
                         DEFAULT,
                         (SELECT majorid FROM majors WHERE name='politician'),
                         'President of the United Kingdom',
                         'UK',
                         100
                        );

INSERT INTO personjobs values (
                               (SELECT personid FROM people WHERE name='Floyd'),
                               (SELECT jobid FROM jobs WHERE name = 'Specialist in repair of onboard systems of the spacecraft')
                              );
INSERT INTO personjobs values (
                               (SELECT personid FROM people WHERE name='Halvorsen'),
                               (SELECT jobid FROM jobs WHERE name = 'Specialist in washing floors in a spaceship')
                              );
INSERT INTO personjobs values (
                               (SELECT personid FROM people WHERE name='Anna'),
                               (SELECT jobid FROM jobs WHERE name = 'President of the USA')
                              );
INSERT INTO personjobs values (
                               (SELECT personid FROM people WHERE name='Kate'),
                               (SELECT jobid FROM jobs WHERE name = 'King of the United Kingdom')
                              );