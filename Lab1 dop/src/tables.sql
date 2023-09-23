CREATE TABLE IF NOT EXISTS Countries(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL,
    code            smallint        NOT NULL
);

CREATE TABLE IF NOT EXISTS Cities(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL,
    countryID       integer         REFERENCES Countries(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);

CREATE TABLE IF NOT EXISTS Universities(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL,
    website         varchar(255)    NOT NULL,
    email           varchar(255),
    phone           integer,
    countryID       integer         REFERENCES Countries(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    cityID          integer         REFERENCES Cities(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);

