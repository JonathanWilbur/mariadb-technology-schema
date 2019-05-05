CREATE TABLE IF NOT EXISTS ExtentionMechanismForDNSOptionCodes
(
    code            SMALLINT UNSIGNED       NOT NULL PRIMARY KEY,
    name            TINYTEXT                NOT NULL,
    description     TINYTEXT                NULL,
    status          TINYTEXT                NULL,
    definingRFCs    TINYTEXT                NULL,
    definingURI     TINYTEXT                NULL
);

INSERT INTO ExtentionMechanismForDNSOptionCodes
VALUES
    (1, 'LLQ', NULL, 'On-hold', '[RFC6891]', NULL),
    (2, 'UL', NULL, 'On-hold', NULL, '[http://files.dns-sd.org/draft-sekar-dns-llq.txt]'),
    (3, 'NSID', NULL, 'Standard', NULL, '[http://files.dns-sd.org/draft-sekar-dns-ul.txt]'),
    (5, 'DAU', NULL, 'Standard', '[RFC6975]', NULL),
    (6, 'DHU', NULL, 'Standard', '[RFC6975]', NULL),
    (7, 'N3U', NULL, 'Standard', '[RFC6975]', NULL),
    (8, 'edns-client-subnet', NULL, 'Optional', '[RFC7871]', NULL),
    (9, 'EDNS EXPIRE', NULL, 'Optional', '[RFC7314]', NULL),
    (10, 'COOKIE', NULL, 'Standard', '[RFC7873]', NULL),
    (11, 'edns-tcp-keepalive', NULL, 'Standard', '[RFC7828]', NULL),
    (12, 'Padding', NULL, 'Standard', '[RFC7830]', NULL),
    (13, 'CHAIN', NULL, 'Standard', '[RFC7901]', NULL),
    (14, 'edns-key-tag', NULL, 'Optional', '[RFC8145]', NULL),
    (26946, 'DeviceID', NULL, 'Optional', NULL, '[https://docs.umbrella.com/developer/networkdevices-api/identifying-dns-traffic2]'),
;