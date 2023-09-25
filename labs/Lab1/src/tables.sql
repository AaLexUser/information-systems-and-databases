CREATE TABLE IF NOT EXISTS people (
    personID    serial          PRIMARY KEY,
    name        varchar(32)     NOT NULL,
    gender     varchar(32)     NOT NULL CHECK(gender IN ('MALE', 'FEMALE'))
);

CREATE TABLE IF NOT EXISTS apartments (
    apartmentID     serial          PRIMARY KEY,
    location        varchar(128)    NOT NULL
);

CREATE TABLE IF NOT EXISTS personLiveInApartment(
    personID    integer     REFERENCES people(personID) ON DELETE CASCADE,
    apartmentID integer     REFERENCES apartments(apartmentID) ON DELETE CASCADE,
    UNIQUE(personID, apartmentID)
);

CREATE TABLE IF NOT EXISTS roomTypes (
    roomTypeID      serial          PRIMARY KEY,
    name            varchar(32)     NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS rooms (
    roomID      serial              PRIMARY KEY,
    apartmentID integer             NOT NULL,
    roomTypeID  integer             NOT NULL,
    lenght      double precision    NOT NULL CHECK(lenght > 0),
    width       double precision    NOT NULL CHECK(width > 0),
    FOREIGN KEY (apartmentID) REFERENCES apartments(apartmentID) ON DELETE CASCADE,
    FOREIGN KEY (roomTypeID) REFERENCES roomTypes(roomTypeID) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS sizes (
    sizeID      serial              PRIMARY KEY,
    name        varchar(32)         NOT NULL,
    lenght      double precision    NOT NULL CHECK(lenght > 0),
    width       double precision    NOT NULL CHECK(width > 0),
    UNIQUE (name, lenght, width)
);

CREATE TABLE IF NOT EXISTS photos (
    photoID     serial      PRIMARY KEY,
    roomID      integer     REFERENCES  rooms(roomID) ON DELETE SET NULL,
    sizeID      integer     REFERENCES  sizes(sizeID) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS personOnPhoto (
    personID    integer     REFERENCES  people(personID) ON DELETE CASCADE,
    photoID     integer     REFERENCES  photos(photoID) ON DELETE CASCADE,
    signatureOnPhoto boolean DEFAULT FALSE,
    UNIQUE(personID, photoID)
);

CREATE TABLE IF NOT EXISTS majors (
    majorID     serial      PRIMARY KEY,
    name        varchar(32) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS jobs (
    jobID           serial      PRIMARY KEY,
    majorID         integer     REFERENCES majors(majorID) ON DELETE CASCADE,
    name            varchar(256) NOT NULL,
    companyName     varchar(32) NOT NULL,
    annualSalary    money     NOT NULL CHECK(annualSalary >= CAST(0 AS money) ),
    UNIQUE(name, companyName)
);

CREATE TABLE IF NOT EXISTS personJobs (
    personID    integer     REFERENCES  people(personID) ON DELETE CASCADE,
    jobID       integer     REFERENCES  jobs(jobID) ON DELETE CASCADE,
    UNIQUE(personID, jobID)
);