INSERT INTO pokemonTypes values (DEFAULT,'NORMAL'); -- 1
INSERT INTO pokemonTypes values (DEFAULT,'FIRE'); -- 2
INSERT INTO pokemonTypes values (DEFAULT,'WATER'); -- 3
INSERT INTO pokemonTypes values (DEFAULT,'ELECTRIC'); -- 4
INSERT INTO pokemonTypes values (DEFAULT,'GRASS'); -- 5
INSERT INTO pokemonTypes values (DEFAULT,'ICE'); -- 6
INSERT INTO pokemonTypes values (DEFAULT,'FIGHTING'); -- 7
INSERT INTO pokemonTypes values (DEFAULT,'POISON'); -- 8
INSERT INTO pokemonTypes values (DEFAULT,'GROUND'); -- 9
INSERT INTO pokemonTypes values (DEFAULT,'FLYING'); -- 10
INSERT INTO pokemonTypes values (DEFAULT,'PSYCHIC'); -- 11
INSERT INTO pokemonTypes values (DEFAULT,'BUG'); -- 12
INSERT INTO pokemonTypes values (DEFAULT,'ROCK'); -- 13
INSERT INTO pokemonTypes values (DEFAULT,'GHOST'); -- 14
INSERT INTO pokemonTypes values (DEFAULT,'DRAGON'); -- 15
INSERT INTO pokemonTypes values (DEFAULT,'DARK'); -- 16
INSERT INTO pokemonTypes values (DEFAULT,'STEEL'); -- 17
INSERT INTO pokemonTypes values (DEFAULT,'FAIRY'); -- 18

select * from pokemonTypes;


INSERT INTO basestats values (DEFAULT, 45, 49, 49, 65, 65, 45);
INSERT INTO pokemonwiki values (DEFAULT,'Bulbasaur', 1, 'Seed Pokémon', 0.7, 6.9, 1, 'https://static.wikia.nocookie.net/pokemon/images/2/21/001Bulbasaur.png/revision/latest/scale-to-width-down/1000?cb=20150703181300&path-prefix=ru');
INSERT INTO pokemontotypes values (1,5);
INSERT INTO pokemontotypes values (1,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (1, 1, 1);

INSERT INTO basestats values (DEFAULT, 60, 62, 63, 80, 80, 60);
INSERT INTO pokemonwiki values (DEFAULT,'Ivysaur', 2, 'Seed Pokémon', 1.0, 13.0, 2, 'https://static.wikia.nocookie.net/pokemon/images/7/73/002Ivysaur.png/revision/latest?cb=20150703180624&path-prefix=ru');
INSERT INTO pokemontotypes values (2,5);
INSERT INTO pokemontotypes values (2,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (2, 2, 16);

INSERT INTO basestats values (DEFAULT, 80, 82, 83, 100, 100, 80);
INSERT INTO pokemonwiki values (DEFAULT,'Venusaur', 3, 'Seed Pokémon', 2.0, 100.0, 3, 'https://static.wikia.nocookie.net/pokemon/images/a/ae/003Venusaur.png/revision/latest/scale-to-width-down/1000?cb=20150703175822&path-prefix=ru');
INSERT INTO pokemontotypes values (3,5);
INSERT INTO pokemontotypes values (3,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (3, 3, 32);

INSERT INTO basestats values (DEFAULT, 39, 52, 43, 60, 50, 65);
INSERT INTO pokemonwiki values (DEFAULT,'Charmander', 4, 'Lizard Pokémon', 0.6, 8.5, 4, 'https://static.wikia.nocookie.net/pokemon/images/7/73/004Charmander.png/revision/latest?cb=20181020162512&path-prefix=ru');
INSERT INTO pokemontotypes values (4,2);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (4, 4, 1);

INSERT INTO basestats values (DEFAULT, 58, 64, 58, 80, 65, 80);
INSERT INTO pokemonwiki values (DEFAULT,'Charmeleon', 5, 'Flame Pokémon', 1.1, 19.0, 5, 'https://static.wikia.nocookie.net/pokemon/images/4/4a/005Charmeleon.png/revision/latest/scale-to-width-down/1000?cb=20150703173321&path-prefix=ru');
INSERT INTO pokemontotypes values (5,2);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (5, 5, 16);

INSERT INTO basestats values (DEFAULT, 78, 84, 78, 109, 85, 100);
INSERT INTO pokemonwiki values (DEFAULT,'Charizard', 6, 'Flame Pokémon', 1.7, 90.5, 6, 'https://static.wikia.nocookie.net/pokemon/images/7/7e/006Charizard.png/revision/latest/scale-to-width-down/1000?cb=20150703171316&path-prefix=ru');
INSERT INTO pokemontotypes values (6,2);
INSERT INTO pokemontotypes values (6,10);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (6, 6, 36);

INSERT INTO basestats values (DEFAULT, 44, 48, 65, 50, 64, 43);
INSERT INTO pokemonwiki values (DEFAULT,'Squirtle', 7, 'Tiny Turtle Pokémon', 0.5, 9.0, 7, 'https://static.wikia.nocookie.net/pokemon/images/3/39/007Squirtle.png/revision/latest/scale-to-width-down/1000?cb=20150703171252&path-prefix=ru');
INSERT INTO pokemontotypes values (7,3);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (7, 7, 1);

INSERT INTO basestats values (DEFAULT, 59, 63, 80, 65, 80, 58);
INSERT INTO pokemonwiki values (DEFAULT,'Wartortle', 8, 'Turtle Pokémon', 1.0, 22.5, 8, 'https://static.wikia.nocookie.net/pokemon/images/0/0c/008Wartortle.png/revision/latest/scale-to-width-down/1000?cb=20150703171259&path-prefix=ru');
INSERT INTO pokemontotypes values (8,3);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (8, 8, 16);

INSERT INTO basestats values (DEFAULT, 79, 83, 100, 85, 105, 78);
INSERT INTO pokemonwiki values (DEFAULT,'Blastoise', 9, 'Shellfish Pokémon', 1.6, 85.5, 9, 'https://static.wikia.nocookie.net/pokemon/images/0/02/009Blastoise.png/revision/latest/scale-to-width-down/1000?cb=20200731133731');
INSERT INTO pokemontotypes values (9,3);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (9, 9, 36);

INSERT INTO basestats values (DEFAULT, 45, 30, 35, 20, 20, 45);
INSERT INTO pokemonwiki values (DEFAULT,'Caterpie', 10, 'Worm Pokémon', 0.3, 2.9, 10, 'https://static.wikia.nocookie.net/pokemon/images/5/5d/010Caterpie.png/revision/latest?cb=20201109201919');
INSERT INTO pokemontotypes values (10,12);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (10, 10, 1);

INSERT INTO basestats values (DEFAULT, 50, 20, 55, 25, 25, 30);
INSERT INTO pokemonwiki values (DEFAULT,'Metapod', 11, 'Cocoon Pokémon', 0.7, 9.9, 11, 'https://static.wikia.nocookie.net/pokemon/images/c/cd/011Metapod.png/revision/latest?cb=20140328191749');
INSERT INTO pokemontotypes values (11,12);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (11, 11, 7);

INSERT INTO basestats values (DEFAULT, 60, 45, 50, 90, 80, 70);
INSERT INTO pokemonwiki values (DEFAULT,'Butterfree', 12, 'Butterfly Pokémon', 1.1, 32.0, 12, 'https://static.wikia.nocookie.net/pokemon/images/d/d1/012Butterfree.png/revision/latest?cb=20160227081550&path-prefix=ru');
INSERT INTO pokemontotypes values (12,12);
INSERT INTO pokemontotypes values (12,10);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (12, 12, 10);

INSERT INTO basestats values (DEFAULT, 40, 35, 30, 20, 20, 50);
INSERT INTO pokemonwiki values (DEFAULT,'Weedle', 13, 'Hairy Bug Pokémon', 0.3, 3.2, 13, 'https://static.wikia.nocookie.net/pokemon/images/d/df/013Weedle.png/revision/latest?cb=20140328191838');
INSERT INTO pokemontotypes values (13,12);
INSERT INTO pokemontotypes values (13,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (13, 13, 1);

INSERT INTO basestats values (DEFAULT, 45, 25, 50, 25, 25, 35);
INSERT INTO pokemonwiki values (DEFAULT,'Kakuna', 14, 'Cocoon Pokémon', 0.6, 10.0, 14, 'https://static.wikia.nocookie.net/pokemon/images/f/f0/014Kakuna.png/revision/latest?cb=20140328191918');
INSERT INTO pokemontotypes values (14,12);
INSERT INTO pokemontotypes values (14,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (14, 14, 7);

INSERT INTO basestats values (DEFAULT, 65, 90, 40, 45, 80, 75);
INSERT INTO pokemonwiki values (DEFAULT,'Beedrill', 15, 'Poison Bee Pokémon', 1.0, 29.5, 15, 'https://static.wikia.nocookie.net/pokemon/images/6/61/015Beedrill.png/revision/latest?cb=20140328191940');
INSERT INTO pokemontotypes values (15,12);
INSERT INTO pokemontotypes values (15,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (15, 15, 10);

INSERT INTO basestats values (DEFAULT, 40, 45, 40, 35, 35, 56);
INSERT INTO pokemonwiki values (DEFAULT,'Pidgey', 16, 'Tiny Bird Pokémon', 0.3, 1.8, 16, 'https://static.wikia.nocookie.net/pokemon/images/5/55/016Pidgey.png/revision/latest?cb=20140328192030');
INSERT INTO pokemontotypes values (16,10);
INSERT INTO pokemontotypes values (16,1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (16, 16, 1);

INSERT INTO basestats values (DEFAULT, 63, 60, 55, 50, 50, 71);
INSERT INTO pokemonwiki values (DEFAULT,'Pidgeotto', 17, 'Bird Pokémon', 1.1, 30.0, 17, 'https://static.wikia.nocookie.net/pokemon/images/7/7a/017Pidgeotto.png/revision/latest?cb=20140328192046');
INSERT INTO pokemontotypes values (17,10);
INSERT INTO pokemontotypes values (17,1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (17, 17, 18);

INSERT INTO basestats values (DEFAULT, 83, 80, 75, 70, 70, 101);
INSERT INTO pokemonwiki values (DEFAULT,'Pidgeot', 18, 'Bird Pokémon', 1.5, 39.5, 18, 'https://static.wikia.nocookie.net/pokemon/images/d/d8/018Pidgeot.jpg/revision/latest?cb=20151226090640&path-prefix=ru');
INSERT INTO pokemontotypes values (18,10);
INSERT INTO pokemontotypes values (18,1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (18, 18, 36);

INSERT INTO basestats values (DEFAULT, 30, 56, 35, 25, 35, 72);
INSERT INTO pokemonwiki values (DEFAULT,'Rattata', 19, 'Mouse Pokémon', 0.3, 3.5, 19, 'https://static.wikia.nocookie.net/pokemon/images/4/46/019Rattata.png/revision/latest?cb=20140328192134');
INSERT INTO pokemontotypes values (19,1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (19, 19, 1);

INSERT INTO basestats values (DEFAULT, 55, 81, 60, 50, 70, 97);
INSERT INTO pokemonwiki values (DEFAULT,'Raticate', 20, 'Mouse Pokémon', 0.7, 18.5, 20, 'https://static.wikia.nocookie.net/pokemon/images/0/0e/020Raticate.jpg/revision/latest?cb=20150912080850&path-prefix=ru');
INSERT INTO pokemontotypes values (20,1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (20, 20, 20);

INSERT INTO basestats values (DEFAULT, 40, 60, 30, 31, 31, 70);
INSERT INTO pokemonwiki values (DEFAULT,'Spearow', 21, 'Tiny Bird Pokémon', 0.3, 2.0, 21, 'https://static.wikia.nocookie.net/pokemon/images/8/8b/021Spearow.png/revision/latest?cb=20140328192232');
INSERT INTO pokemontotypes values (21,10);
INSERT INTO pokemontotypes values (21,1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (21, 21, 1);

INSERT INTO basestats values (DEFAULT, 65, 90, 65, 61, 61, 100);
INSERT INTO pokemonwiki values (DEFAULT,'Fearow', 22, 'Beak Pokémon', 1.2, 38.0, 22, 'https://static.wikia.nocookie.net/pokemon/images/a/a0/022Fearow.png/revision/latest?cb=20140328192324');
INSERT INTO pokemontotypes values (22,10);
INSERT INTO pokemontotypes values (22,1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (22, 22, 20);

INSERT INTO basestats values (DEFAULT, 35, 60, 44, 40, 54, 55);
INSERT INTO pokemonwiki values (DEFAULT,'Ekans', 23, 'Snake Pokémon', 2.0, 6.9, 23, 'https://static.wikia.nocookie.net/pokemon/images/f/fa/023Ekans.png/revision/latest?cb=20200524225931&path-prefix=ru');
INSERT INTO pokemontotypes values (23,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (23, 23, 1);

INSERT INTO basestats values (DEFAULT, 60, 95, 69, 65, 79, 80);
INSERT INTO pokemonwiki values (DEFAULT,'Arbok', 24, 'Cobra Pokémon', 3.5, 65.0, 24, 'https://static.wikia.nocookie.net/pokemon/images/c/cd/024Arbok.png/revision/latest?cb=20140328200611');
INSERT INTO pokemontotypes values (24,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (24, 24, 22);

INSERT INTO basestats values (DEFAULT, 35, 60, 44, 40, 54, 55);
INSERT INTO pokemonwiki values (DEFAULT,'Pikachu', 25, 'Mouse Pokémon', 0.4, 6.0, 25, 'https://static.wikia.nocookie.net/pokemon/images/0/0d/025Pikachu.png/revision/latest/scale-to-width-down/1000?cb=20181020165701&path-prefix=ru');
INSERT INTO pokemontotypes values (25,4);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (25, 25, 1);

INSERT INTO basestats values (DEFAULT, 60, 90, 55, 90, 80, 110);
INSERT INTO pokemonwiki values (DEFAULT,'Raichu', 26, 'Mouse Pokémon', 0.8, 30.0, 26, 'https://static.wikia.nocookie.net/pokemon/images/8/88/026Raichu.png/revision/latest/scale-to-width-down/1000?cb=20181021062637&path-prefix=ru');
INSERT INTO pokemontotypes values (26,4);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (26, 26, 20);

INSERT INTO basestats values (DEFAULT, 50, 75, 85, 20, 30, 40);
INSERT INTO pokemonwiki values (DEFAULT,'Sandshrew', 27, 'Mouse Pokémon', 0.6, 12.0, 27, 'https://static.wikia.nocookie.net/pokemon/images/e/e5/027Sandshrew.jpg/revision/latest?cb=20161020180744&path-prefix=ru');
INSERT INTO pokemontotypes values (27,9);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (27, 27, 1);

INSERT INTO basestats values (DEFAULT, 75, 100, 110, 45, 55, 65);
INSERT INTO pokemonwiki values (DEFAULT,'Sandslash', 28, 'Mouse Pokémon', 1.0, 29.5, 28, 'https://static.wikia.nocookie.net/pokemon/images/4/42/Sandslash.jpg/revision/latest?cb=20171202121129&path-prefix=ru');
INSERT INTO pokemontotypes values (28,9);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (28, 28, 22);

INSERT INTO basestats values (DEFAULT, 55, 47, 52, 40, 40, 41);
INSERT INTO pokemonwiki values (DEFAULT,'Nidoran', 29, 'Field Monster', 0.4, 7.0, 29, 'https://static.wikia.nocookie.net/pokemon/images/8/80/029Nidoran%E2%99%80.png/revision/latest?cb=20140328192708');
INSERT INTO pokemontotypes values (29,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (29, 29, 1);

INSERT INTO basestats values (DEFAULT, 70, 62, 67, 55, 55, 56);
INSERT INTO pokemonwiki values (DEFAULT,'Nidoriina', 30, 'Field Monster', 0.8, 20, 30, 'https://static.wikia.nocookie.net/pokemon/images/c/cd/030Nidorina.png/revision/latest?cb=20140328192725');
INSERT INTO pokemontotypes values (30,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (30, 30, 1);

INSERT INTO basestats values (DEFAULT, 90, 92, 87, 75, 85, 76);
INSERT INTO pokemonwiki values (DEFAULT,'Nidoqueen', 31, 'Field Monster', 1.3, 60, 31, 'https://img.pokemondb.net/artwork/large/nidoqueen.jpg');
INSERT INTO pokemontotypes values (31,8);
INSERT INTO pokemontotypes values (31,9);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (31, 31, 1);

INSERT INTO basestats values (DEFAULT, 61, 75, 57, 55, 55, 65);
INSERT INTO pokemonwiki values (DEFAULT,'Nidorino', 32, 'Field Monster', 0.9, 19.5, 32, 'https://img.pokemondb.net/artwork/large/nidorino.jpg');
INSERT INTO pokemontotypes values (32,8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (32, 32, 1);

INSERT INTO basestats values (DEFAULT, 81, 102, 77, 85, 75, 85);
INSERT INTO pokemonwiki values (DEFAULT,'Nidoking', 33, 'Field Monster', 1.4, 62, 33, 'https://img.pokemondb.net/artwork/large/nidoking.jpg');
INSERT INTO pokemontotypes values (33,8);
INSERT INTO pokemontotypes values (33,9);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (33, 33, 1);


INSERT INTO basestats values (DEFAULT, 70, 45, 48, 60, 65, 35);
INSERT INTO pokemonwiki values (DEFAULT,'Clefairy', 34, 'Fairy Creature', 0.6, 7.5, 34, 'https://img.pokemondb.net/artwork/large/clefairy.jpg');
INSERT INTO pokemontotypes values (34,18);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (34, 34, 1);


INSERT INTO basestats values (DEFAULT, 95, 70, 73, 95, 90, 60);
INSERT INTO pokemonwiki values (DEFAULT,'Clefable', 35, 'Fairy Creature', 1.3, 40, 35, 'https://img.pokemondb.net/artwork/large/clefable.jpg');
INSERT INTO pokemontotypes values (35,18);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (35, 35, 1);

INSERT INTO basestats values (DEFAULT, 38, 41, 40, 50, 65, 65);
INSERT INTO pokemonwiki values (DEFAULT,'Vulpix', 36, 'Fox Creature', 1.3, 40, 36, 'https://img.pokemondb.net/artwork/large/vulpix.jpg');
INSERT INTO pokemontotypes values (36, 2);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (36, 36, 1);


INSERT INTO basestats values (DEFAULT, 73, 76, 75, 81, 100, 100);
INSERT INTO pokemonwiki values (DEFAULT,'Ninetales', 37, 'Fox Creature', 1.1, 19.9, 37, 'https://img.pokemondb.net/artwork/large/ninetales.jpg');
INSERT INTO pokemontotypes values (37, 2);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (37, 37, 1);


INSERT INTO basestats values (DEFAULT, 115, 45, 20, 45, 25, 20);
INSERT INTO pokemonwiki values (DEFAULT,'Jigglypuff', 38, 'Fairy Creature', 0.5, 5.5, 38, 'https://img.pokemondb.net/artwork/large/jigglypuff.jpg');
INSERT INTO pokemontotypes values (38, 18);
INSERT INTO pokemontotypes values (38, 1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (38, 38, 1);

INSERT INTO basestats values (DEFAULT, 140, 70, 45, 75, 50, 45);
INSERT INTO pokemonwiki values (DEFAULT,'Wigglytuff', 39, 'Fairy Creature', 1, 12.0, 39, 'https://img.pokemondb.net/artwork/large/wigglytuff.jpg');
INSERT INTO pokemontotypes values (39, 18);
INSERT INTO pokemontotypes values (39, 1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (39, 39, 1);

INSERT INTO basestats values (DEFAULT, 40, 45, 35, 30, 40, 55);
INSERT INTO pokemonwiki values (DEFAULT,'Zubat', 40, 'Night bat', 0.6, 7.5, 40, 'https://img.pokemondb.net/artwork/large/zubat.jpg');
INSERT INTO pokemontotypes values (40, 10);
INSERT INTO pokemontotypes values (40, 8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (40, 40, 1);


INSERT INTO basestats values (DEFAULT, 75, 80, 70, 65, 75, 90);
INSERT INTO pokemonwiki values (DEFAULT,'Golbat', 41, 'Night bat', 1.6, 55, 41, 'https://img.pokemondb.net/artwork/large/golbat.jpg');
INSERT INTO pokemontotypes values (41, 10);
INSERT INTO pokemontotypes values (41, 8);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (41, 41, 1);

INSERT INTO basestats values (DEFAULT, 55, 55, 50, 45, 65, 55);
INSERT INTO pokemonwiki values (DEFAULT,'Eevee', 42, 'Evolution', 0.3, 6.5, 42, 'https://img.pokemondb.net/artwork/large/eevee.jpg');
INSERT INTO pokemontotypes values (42, 1);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (42, 42, 1);


INSERT INTO basestats values (DEFAULT, 65, 110, 130, 60, 65, 95);
INSERT INTO pokemonwiki values (DEFAULT,'Leafeon', 43, 'Verdant', 1, 25.5, 43, 'https://img.pokemondb.net/artwork/large/leafeon.jpg');
INSERT INTO pokemontotypes values (43, 5);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (43, 43, 1);


INSERT INTO basestats values (DEFAULT, 130, 65, 60, 110, 95, 65);
INSERT INTO pokemonwiki values (DEFAULT,'Vaporeon', 44, 'Bubble Jet', 1, 29, 44, 'https://img.pokemondb.net/artwork/large/vaporeon.jpg');
INSERT INTO pokemontotypes values (44, 3);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (44, 44, 1);

INSERT INTO basestats values (DEFAULT, 65, 60, 110, 130, 95, 65);
INSERT INTO pokemonwiki values (DEFAULT,'Glaceon', 45, 'Fresh Snow', 0.8, 25.9, 45, 'https://img.pokemondb.net/artwork/large/glaceon.jpg');
INSERT INTO pokemontotypes values (45, 6);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (45, 45, 1);


INSERT INTO basestats values (DEFAULT, 30, 65, 100, 45, 25, 40);
INSERT INTO pokemonwiki values (DEFAULT,'Shellder', 46, 'Bivalve', 0.3, 4, 46, 'https://img.pokemondb.net/artwork/large/shellder.jpg');
INSERT INTO pokemontotypes values (46, 3);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (46, 46, 1);

INSERT INTO basestats values (DEFAULT, 50, 95, 180, 85, 45, 70);
INSERT INTO pokemonwiki values (DEFAULT,'Cloyster', 47, 'Bivalve', 1.5, 132.5, 47, 'https://img.pokemondb.net/artwork/large/cloyster.jpg');
INSERT INTO pokemontotypes values (47, 3);
INSERT INTO pokemontotypes values (47, 6);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (47, 47, 1);

INSERT INTO basestats values (DEFAULT, 40, 30, 30, 40, 50, 30);
INSERT INTO pokemonwiki values (DEFAULT,'Lotad', 48, 'Bivalve', 0.5, 2.6, 48, 'https://img.pokemondb.net/artwork/large/lotad.jpg');
INSERT INTO pokemontotypes values (48, 3);
INSERT INTO pokemontotypes values (48, 5);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (48, 48, 1);

INSERT INTO basestats values (DEFAULT, 60, 50, 50, 60, 70, 50);
INSERT INTO pokemonwiki values (DEFAULT,'Lombre', 49, 'Bivalve', 1.2, 32.5, 49, 'https://img.pokemondb.net/artwork/large/lombre.jpg');
INSERT INTO pokemontotypes values (49, 3);
INSERT INTO pokemontotypes values (49, 5);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (49, 49, 1);


INSERT INTO basestats values (DEFAULT, 80, 70, 70, 90, 100, 70);
INSERT INTO pokemonwiki values (DEFAULT,'Ludicolo', 49, 'Bivalve', 1.5, 55.0, 49, 'https://img.pokemondb.net/artwork/large/ludicolo.jpg');
INSERT INTO pokemontotypes values (50, 3);
INSERT INTO pokemontotypes values (50, 5);
INSERT INTO entities values (DEFAULT, 'POKEMON');
INSERT INTO pokemon values (50, 50, 1);


INSERT INTO entities values (DEFAULT, 'STONE');
INSERT INTO stonewiki values (51, 'Moon Stone');
INSERT INTO evolutionchains values (31, 32, 51);
INSERT INTO evolutionchains values (33, 34, 51);

INSERT INTO entities values (DEFAULT, 'STONE');
INSERT INTO stonewiki values (52, 'Ice Stone');
INSERT INTO evolutionchains values (42, 45, 52);

INSERT INTO entities values (DEFAULT, 'STONE');
INSERT INTO stonewiki values (53, 'Water Stone');
INSERT INTO evolutionchains values (42, 44, 53);
INSERT INTO evolutionchains values (46, 47, 53);

INSERT INTO entities values (DEFAULT, 'STONE');
INSERT INTO stonewiki values (54, 'Leaf Stone');
INSERT INTO evolutionchains values (42, 43, 54);

INSERT INTO instock values (DEFAULT, 1, 2, 100);
DO $$
BEGIN
    FOR i IN 2..30 LOOP
        INSERT INTO instock values (DEFAULT, i,  floor(random() * 101)::integer, (floor(random() * 101)::numeric + 100)::money);
    END LOOP;
END$$;

INSERT INTO gamestylesdist values (DEFAULT, 23, 63, 14, 0, 0);
INSERT INTO trainers values (DEFAULT,'Ash', 'MALE', 1, 1);
INSERT INTO trainersentities values (1, 1);
INSERT INTO trainersentities values (1, 2);

INSERT INTO gamestylesdist values (DEFAULT, 20, 63, 17, 0, 0);
INSERT INTO trainers values (DEFAULT, 'Aqua', 'MALE', 2, 2);
INSERT INTO trainersentities values (2, 3);
INSERT INTO trainersentities values (2, 4);

INSERT INTO orderStatuses values (DEFAULT, 'PROCESSING');
INSERT INTO orderStatuses values (DEFAULT, 'CANCELLED');
INSERT INTO orderStatuses values (DEFAULT, 'COMPLETED');

DO $$
BEGIN
    FOR i IN 1..30 LOOP
        INSERT INTO orders values (DEFAULT, floor(random() * 2 + 1)::integer, floor(random() * 3 + 1)::integer, DEFAULT, DEFAULT);
    END LOOP;
END$$;

DO $$
BEGIN
    FOR i IN 1..30 LOOP
        FOR j IN 1..floor(random() * 30 + 1)::integer LOOP
                INSERT INTO "orderItems" values (i, j, floor(random() * 5 + 1)::integer);
        END LOOP;
    END LOOP;
END$$;

INSERT INTO "orderItems" values (22, 28, 2);








