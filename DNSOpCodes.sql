-- https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml
CREATE TABLE IF NOT EXISTS DomainNameSystemOpCodes
(
    code            TINYINT UNSIGNED    NOT NULL PRIMARY KEY,
    name            VARCHAR(64)         NOT NULL,
    obsolete        BOOLEAN             NULL,
    description     TINYTEXT            NULL,
    definingRFC     SMALLINT UNSIGNED   NULL
);

INSERT INTO DomainNameSystemOpCodes
VALUES
    (0, 'Query',  FALSE, '', '[RFC1035]'),
    (1, 'IQuery', FALSE, 'Inverse Query', '[RFC3425]'),
    (2, 'Status', FALSE, '', '[RFC1035]'),
    (4, 'Notify', FALSE, '', '[RFC1996]'),
    (5, 'Update', FALSE, '', '[RFC2136]')
;