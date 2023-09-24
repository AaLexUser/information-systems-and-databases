CREATE TABLE IF NOT EXISTS Countries(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL UNIQUE CHECK (name ~* '^[A-Za-z\s]+$'),
    code            smallint        NOT NULL CHECK (code >= 0 AND code <= 999)
);

CREATE TABLE IF NOT EXISTS Cities(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL,
    countryID       integer         NOT NULL REFERENCES Countries(id) ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (name, countryID)
);

CREATE TABLE IF NOT EXISTS Universities(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL,
    website         varchar(255)    NOT NULL CHECK ( website ~* '^(http|https)://[a-zA-Z0-9\\-\\.]+\.[a-zA-Z]{2,3}(/\S*)?$' ),
    email           varchar(255)    CHECK(email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$'),
    phone           varchar(32)     CHECK (phone ~ '^\+[0-9]{1,3}\([0-9]{3}\)[0-9\-]*$'),
    countryID       integer         REFERENCES Countries(id) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL,
    cityID          integer         REFERENCES Cities(id) ON DELETE SET NULL ON UPDATE CASCADE NOT NULL,
    UNIQUE (name, countryID, cityID)
);

CREATE TABLE IF NOT EXISTS People(
    id              serial          PRIMARY KEY,
    firstName       varchar(255)    NOT NULL,
    lastName        varchar(255)    NOT NULL,
    middleName      varchar(255),
    gender          varchar(32)     NOT NULL CHECK(gender IN ('MALE', 'FEMALE')),
    phone           varchar(32)     CHECK (phone ~* '^\+[0-9]{1,3}\([0-9]{3}\)[0-9\-]*$'),
    email           varchar(255)    CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$') UNIQUE,
    addmissionDate  date            NOT NULL CHECK(addmissionDate <= CURRENT_DATE),
    birthdate       date            NOT NULL CHECK(birthdate <= CURRENT_DATE),
    UNIQUE (firstName, lastName, middleName, birthdate)
);

CREATE TABLE IF NOT EXISTS Citizenships(
    countryID       integer         NOT NULL REFERENCES Countries(id) ON DELETE CASCADE ON UPDATE CASCADE,
    personID        integer         NOT NULL REFERENCES People(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS Departments(
    id              serial          PRIMARY KEY,
    universityID    integer         NOT NULL REFERENCES Universities(id) ON DELETE CASCADE ON UPDATE CASCADE,
    name            varchar(255)    NOT NULL,
    deanID          integer         REFERENCES People(id) ON DELETE SET NULL ON UPDATE CASCADE,
    UNIQUE (universityID, name)
);

CREATE TABLE IF NOT EXISTS EducationLevels(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL UNIQUE,
    duration        smallint        NOT NULL
);

CREATE TABLE IF NOT EXISTS EducationalProgrammes(
    id              serial          PRIMARY KEY,
    name            varchar(255)    NOT NULL,
    departmentID    integer         REFERENCES Departments(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    levelID         integer         REFERENCES EducationLevels(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    UNIQUE (name, departmentID, levelID)
);

CREATE TABLE IF NOT EXISTS Groups(
    id              serial          PRIMARY KEY,
    programmeID     integer         REFERENCES EducationalProgrammes(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    groupNumber     smallint        NOT NULL UNIQUE,
    courseLevel     smallint        NOT NULL
);

CREATE TABLE IF NOT EXISTS Students(
    id              serial          PRIMARY KEY,
    groupID         integer         REFERENCES Groups(id) ON DELETE SET NULL ON UPDATE CASCADE,
    personID        integer         REFERENCES People(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL UNIQUE ,
    departmentID    integer         REFERENCES Departments(id) ON DELETE SET NULL ON UPDATE CASCADE
);
