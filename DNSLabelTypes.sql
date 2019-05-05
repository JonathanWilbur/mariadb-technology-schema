-- https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml
CREATE TABLE IF NOT EXISTS DNSLabelTypes
(
    bit1            BOOLEAN         NOT NULL,
    bit2            BOOLEAN         NOT NULL,
    description     TINYTEXT        NOT NULL,
    status          TINYTEXT        NOT NULL,
    definingRFCs    TINYTEXT        NULL,
    PRIMARY KEY (bit1, bit2)
);

CREATE TABLE IF NOT EXISTS DNSLabelTypes
VALUES
    (0, 0, 'Normal label lower 6 bits is the length of the label', 'Standard', '[RFC1035]'),
    (1, 1, 'Compressed label the lower 6 bits and the 8 bits from next octet form a pointer to the compression target.', 'Standard', '[RFC1035]'),
    (0, 1, 'Extended label type the lower 6 bits of this type (section 3) indicate the type of label in use', 'Proposed', '[RFC6891]')
;