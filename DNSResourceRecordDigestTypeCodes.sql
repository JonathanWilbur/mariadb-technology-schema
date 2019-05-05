CREATE TABLE IF NOT EXISTS DomainNameSystemResourceRequestDigestTypeCodes
(
    code            TINYINT UNSIGNED        NOT NULL PRIMARY KEY,
    description     TINYTEXT                NOT NULL,
    definingRFCs    TINYTEXT                NULL
);

INSERT INTO DomainNameSystemResourceRequestDigestTypeCodes
VALUES
    (0, 'Reserved', '[RFC4701]'),
    (1, 'SHA-256', '[RFC4701]')
;