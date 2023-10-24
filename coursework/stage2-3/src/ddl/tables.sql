CREATE TABLE IF NOT EXISTS entities(
    id              serial            PRIMARY KEY,
    wikiType        varchar(32)       NOT NULL CHECK ( wikiType in ('POKEMON', 'STONE') )
);

CREATE TABLE IF NOT EXISTS baseStats(
    id          serial      PRIMARY KEY,
    hp          integer     NOT NULL CHECK ( hp >= 0),
    attack      integer     NOT NULL CHECK ( attack >= 0),
    defense     integer     NOT NULL CHECK ( defense >= 0),
    spAttack    integer     NOT NULL CHECK ( spAttack >= 0),
    spDefense   integer    NOT NULL CHECK ( spDefense >= 0),
    speed       integer     NOT NULL CHECK ( speed >= 0)
);

CREATE TABLE IF NOT EXISTS pokemonWiki(
    id          serial            PRIMARY KEY,
    name        varchar(32)       NOT NULL CHECK ( name ~* '^[a-zé\s]+$'),
    nationalNum integer           NOT NULL CHECK ( nationalNum >= 1 and nationalNum <= 9999),
    species     varchar(32)       NOT NULL CHECK ( species ~* '^[a-zé\s]+$'),
    height      float             NOT NULL CHECK ( height >= 0 ),
    weight      float             NOT NULL CHECK ( weight >= 0 ),
    baseStatsID integer           NOT NULL REFERENCES baseStats(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pokemon(
    entityID       integer           PRIMARY KEY REFERENCES entities(id) ON DELETE CASCADE,
    pokemonWikiID  integer           NOT NULL REFERENCES pokemonWiki(id) ON DELETE CASCADE,
    level          integer           NOT NULL CHECK ( level >= 0)
);

CREATE TABLE IF NOT EXISTS pokemonTypes(
    id          serial            PRIMARY KEY,
    name        varchar(32)       NOT NULL UNIQUE CHECK ( name ~ '^[A-Z]+$')
);

CREATE TABLE IF NOT EXISTS pokemonToTypes(
    pokemonID       integer       REFERENCES pokemonWiki(id) ON DELETE CASCADE,
    pokemonTypesID  integer       REFERENCES pokemonTypes(id) ON DELETE CASCADE,
    PRIMARY KEY (pokemonID, pokemonTypesID)
);

CREATE TABLE IF NOT EXISTS stoneWiki(
    entityID       integer           PRIMARY KEY REFERENCES entities(id) ON DELETE CASCADE,
    name           varchar(32)       UNIQUE NOT NULL CHECK ( name ~* '^[a-zé\s]+$')
);

CREATE TABLE IF NOT EXISTS evolutionChains(
    EvolvingFromID  integer       REFERENCES pokemonWiki(id) ON DELETE CASCADE,
    EvolvingToID    integer       REFERENCES pokemonWiki(id) ON DELETE CASCADE,
    stoneID         integer       NOT NULL REFERENCES stoneWiki(entityID)  ON DELETE CASCADE,
    PRIMARY KEY (EvolvingFromID, EvolvingToID)
);



CREATE TABLE IF NOT EXISTS inStock(
    id       serial            PRIMARY KEY,
    entityID integer           NOT NULL UNIQUE REFERENCES entities(id) ON DELETE CASCADE,
    quantity integer           NOT NULL CHECK ( quantity >= 0),
    price    money             NOT NULL CHECK ( price >= CAST(0 AS money))
    
);

CREATE TABLE IF NOT EXISTS gameStylesDist(
    id                  serial            PRIMARY KEY,
    physicalSweeper     integer           NOT NULL CHECK ( physicalSweeper >= 0),
    specialSweeper      integer           NOT NULL CHECK ( specialSweeper >= 0),
    wall                integer           NOT NULL CHECK ( wall >= 0),
    physicalTank        integer           NOT NULL CHECK ( physicalTank >= 0),
    specialTank         integer           NOT NULL CHECK ( specialTank >= 0),
    CHECK(physicalSweeper + specialSweeper + wall + physicalTank + specialTank = 100)
);

CREATE TABLE IF NOT EXISTS trainers(
    id          serial            PRIMARY KEY,
    nickname    varchar(32)       NOT NULL UNIQUE ,
    gender      varchar(32)       NOT NULL CHECK ( gender in ('MALE', 'FEMALE') ),
    level       integer           NOT NULL CHECK ( level >= 0),
    gameStyleID integer           REFERENCES gameStylesDist(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS trainersEntities(
    trainerID   integer           REFERENCES trainers(id) ON DELETE CASCADE,
    entityID    integer           REFERENCES entities(id) ON DELETE CASCADE,
    PRIMARY KEY (trainerID, entityID)
);

CREATE TABLE IF NOT EXISTS orderStatuses(
    id       serial            PRIMARY KEY,
    name     varchar(32)       NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS orders(
    id          serial           PRIMARY KEY,
    trainerID   integer          NOT NULL REFERENCES trainers(id) ON DELETE CASCADE,
    statusID    integer          REFERENCES orderStatuses(id) ON DELETE SET NULL,
    totalPrice  money            NOT NULL CHECK ( totalPrice >= CAST(0 AS money)) DEFAULT CAST(0 AS money),
    orderDate   date             NOT NULL CHECK (orderDate <= CURRENT_DATE) DEFAULT CURRENT_DATE
);

CREATE TABLE IF NOT EXISTS "orderItems"(
    orderID     integer          NOT NULL REFERENCES orders(id) ON DELETE CASCADE,
    itemID      integer          NOT NULL REFERENCES inStock(id) ON DELETE CASCADE,
    quantity    integer          NOT NULL CHECK ( quantity >= 0),
    PRIMARY KEY (orderID, itemID)
);