-- https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml
CREATE TABLE IF NOT EXISTS ExtentionMechanismForDNSVersionNumbers
(
    code            TINYINT UNSIGNED    NOT NULL PRIMARY KEY,
    description     TINYTEXT            NOT NULL,
    definingRFC     SMALLINT UNSIGNED   NULL
);

INSERT INTO ExtentionMechanismForDNSVersionNumbers
VALUES
    (0, 'EDNS Version 0', 6891)
;
