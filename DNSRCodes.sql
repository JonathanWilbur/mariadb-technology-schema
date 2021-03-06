-- https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml
CREATE TABLE IF NOT EXISTS DomainNameSystemResponseCodes
(
    code            SMALLINT UNSIGNED           NOT NULL PRIMARY KEY,
    name            VARCHAR(16)                 NOT NULL,
    description     TINYTEXT                    NULL,
    definingRFCs    SMALLINT UNSIGNED           NULL
);

INSERT INTO DomainNameSystemResponseCodes
VALUES
    (0, 'NoError', 'No Error', '[RFC1035]'),
    (1, 'FormErr', 'Format Error', '[RFC1035]'),
    (2, 'ServFail', 'Server Failure', '[RFC1035]'),
    (3, 'NXDomain', 'Non-Existent Domain', '[RFC1035]'),
    (4, 'NotImp', 'Not Implemented', '[RFC1035]'),
    (5, 'Refused', 'Query Refused', '[RFC1035]'),
    (6, 'YXDomain', 'Name Exists when it should not', '[RFC2136][RFC6672]'),
    (7, 'YXRRSet', 'RR Set Exists when it should not', '[RFC2136]'),
    (8, 'NXRRSet', 'RR Set that should exist does not', '[RFC2136]'),
    (9, 'NotAuth', 'Server Not Authoritative for zone', '[RFC2136]'),
    (9, 'NotAuth', 'Not Authorized', '[RFC2845]'),
    (10, 'NotZone', 'Name not contained in zone', '[RFC2136]'),
    (16, 'BADVERS', 'Bad OPT Version', '[RFC6891]'),
    (16, 'BADSIG', 'TSIG Signature Failure', '[RFC2845]'),
    (17, 'BADKEY', 'Key not recognized', '[RFC2845]'),
    (18, 'BADTIME', 'Signature out of time window', '[RFC2845]'),
    (19, 'BADMODE', 'Bad TKEY Mode', '[RFC2930]'),
    (20, 'BADNAME', 'Duplicate key name', '[RFC2930]'),
    (21, 'BADALG', 'Algorithm not supported', '[RFC2930]'),
    (22, 'BADTRUNC', 'Bad Truncation', '[RFC4635]'),
    (23, 'BADCOOKIE', 'Bad/missing Server Cookie', '[RFC7873]')
;