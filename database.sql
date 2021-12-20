-- Database: postgres

-- DROP DATABASE postgres;

CREATE TABLE users(
    steam64id bigint,
    avatar VARCHAR(43),
    PRIMARY KEY(steam64id)
);

CREATE INDEX avatar_index ON users (avatar);


CREATE TABLE listings(
    id SERIAL PRIMARY KEY,
    game int,
    item_name VARCHAR(64),
    time timestamp,
    price int,
    owner_name VARCHAR(64),
    owner_avatar VARCHAR(43),
    CONSTRAINT owner_item_constraint UNIQUE(owner_name, item_name)
);

CREATE INDEX ON listings(owner_name);
CREATE INDEX ON listings(item_name);