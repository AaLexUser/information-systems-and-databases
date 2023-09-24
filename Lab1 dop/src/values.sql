INSERT INTO countries values (DEFAULT,'Russia',7);
INSERT INTO countries values (DEFAULT, 'United States', 1);
INSERT INTO countries values (DEFAULT, 'China', 86);

INSERT INTO cities values (DEFAULT, 'Saint Petersburg', 1);

INSERT INTO universities values (
                                 DEFAULT,
                                 'Национальный исследовательский университет ИТМО',
                                 'https://itmo.ru/',
                                 'abit@itmo.ru',
                                 '+7(812)480-04-80',
                                 1,
                                 1
                                );
INSERT INTO people values (
                           DEFAULT,
                           'Павел',
                           'Кустарев',
                           'Валерьевич',
                           'MALE',
                            '+7(123)4567890',
                           'kustarev1@ifmo.com',
                           '1989-01-01',
                           '1970-07-20'
                          );
INSERT INTO people values (
                           DEFAULT,
                           'Анатолий',
                           'Карпов',
                           'Валерьевич',
                           'MALE',
                            '+7(193)4567890',
                           'antoshka@ifmo.com',
                           '2020-01-01',
                           '2000-07-20'
                          );

INSERT INTO departments values (
                                DEFAULT,
                                1,
                                'факультет программной инженерии и компьютерной техники',
                                (SELECT id FROM people WHERE firstname = 'Павел'
                                                         AND lastname = 'Кустарев'
                                                         AND middlename = 'Валерьевич'
                                                       AND birthdate = '1970-07-20')
                               );
INSERT INTO educationlevels values (DEFAULT, 'Бакалавриат', 4);
INSERT INTO educationalprogrammes values (
                                          DEFAULT,
                                          'Системное и прикладное программное обеспечение',
                                          1,
                                          1
                                         );
INSERT INTO groups values (
                           DEFAULT,
                           1,
                           3110,
                           1
                          );

INSERT INTO students values (DEFAULT, 1, 2, 1);

INSERT INTO citizenships values (1, 1);
INSERT INTO citizenships values (1, 2);

UPDATE citizenships SET countryid = 3 WHERE personid = 2;

DELETE FROM countries WHERE code = 1;