CREATE TABLE IF NOT EXISTS people (
    id              serial          PRIMARY KEY,
    name            varchar(32)     NOT NULL,
    willpower       integer         NOT NULL CHECK ( willpower > 0),
    gender          varchar(32)     NOT NULL CHECK(gender IN ('MALE', 'FEMALE'))
);

CREATE TABLE IF NOT EXISTS houseTypes (
    id      serial          PRIMARY KEY,
    name    varchar(32)     NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS houses (
    id              serial          PRIMARY KEY,
    location        varchar(128)    NOT NULL UNIQUE,
    houseTypeId     integer         REFERENCES houseTypes(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS personLiveInHouse(
    personId    integer     REFERENCES people(id) ON DELETE CASCADE,
    houseId     integer     REFERENCES houses(id) ON DELETE CASCADE,
    PRIMARY KEY (personID, houseId)
);

CREATE TABLE IF NOT EXISTS relationshipTypes (
    id      serial          PRIMARY KEY,
    name    varchar(32)     NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS relationships (
    personId1       integer     REFERENCES people(id) ON DELETE CASCADE,
    personId2       integer     REFERENCES people(id) ON DELETE CASCADE,
    relationTypeId  integer     REFERENCES relationshipTypes(id) ON DELETE CASCADE,
    lastEditedDate  date,
    PRIMARY KEY (personId1, personId2),
    CHECK ( personId1 <> personId2 )
);

CREATE TABLE IF NOT EXISTS statuses (
    id      serial              PRIMARY KEY,
    name    varchar(32)         NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS goal (
    id      serial              PRIMARY KEY,
    name    varchar(128)         NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS difficulties (
    id      serial          PRIMARY KEY,
    name    varchar(32)     NOT NULL UNIQUE,
    power   integer         NOT NULL CHECK ( power > 0)
);

CREATE TABLE IF NOT EXISTS plans (
    id          serial      PRIMARY KEY,
    ownerId     integer     REFERENCES people(id) ON DELETE CASCADE,
    statusId    integer     REFERENCES statuses(id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS goalInPlan (
    planId      integer    REFERENCES plans(id) ON DELETE CASCADE,
    goalId      integer    REFERENCES goal(id) ON DELETE CASCADE,
    PRIMARY KEY (planId, goalId)
);

CREATE TABLE IF NOT EXISTS steps (
    id              serial          PRIMARY KEY,
    planId          integer         REFERENCES plans(id) ON DELETE CASCADE,
    difficultyId    integer         REFERENCES difficulties(id) ON DELETE CASCADE,
    description     varchar(128)
);

CREATE TABLE IF NOT EXISTS support(
    supporterId     integer     REFERENCES people(id) ON DELETE CASCADE,
    planId          integer     REFERENCES plans(id) ON DELETE CASCADE,
    supportPower    integer,
    PRIMARY KEY (supporterId, planId)
)