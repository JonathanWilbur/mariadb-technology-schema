-- https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml
CREATE TABLE IF NOT EXISTS DHCPIdentifierResourceRecordIdentifierTypeCodes
(
    code            SMALLINT UNSIGNED       NOT NULL PRIMARY KEY,
    identifier      TINYTEXT                NOT NULL,
    definingRFCs    TINYTEXT                NULL
);

INSERT INTO DHCPIdentifierResourceRecordIdentifierTypeCodes
VALUES
    (0, `The 1-octet 'htype' followed by 'hlen' octets of 'chaddr' from a DHCPv4 client's DHCPREQUEST.`, '[RFC4701]'),
    (1, `The data octets (i.e., the Type and Client-Identifier fields) from a DHCPv4 client's Client Identifier option.`, '[RFC4701]'),
    (2, `The client's DUID (i.e., the data octets of a DHCPv6 client's Client Identifier option or the DUID field from a DHCPv4 client's Client Identifier option).`, '[RFC4701]')
;