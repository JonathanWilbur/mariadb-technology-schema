-- https://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml
CREATE TABLE IF NOT EXISTS ChildSynchronizationFlags
(
    bitNumber       TINYINT UNSIGNED        NOT NULL,
    flagName        TINYTEXT                NOT NULL,
    description     TINYTEXT                NOT NULL,
    definingRFC     SMALLINT UNSIGNED       NULL
);

INSERT INTO ChildSynchronizationFlags
VALUES
    (0, 'immediate', 'Immediately process this CSYNC record.', 7477),
    (1, 'soaminimum', 'Require a SOA serial number greater than the one specified.', 7477)
;