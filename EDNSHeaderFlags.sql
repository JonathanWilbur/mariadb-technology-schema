CREATE TABLE IF NOT EXISTS ExtentionMechanismForDNSHeaderFlags
(
    bitNumber   TINYINT UNSIGNED        NOT NULL,
    flag        CHAR(2)                 NOT NULL,
    description TINYTEXT                NOT NULL,
    definingRFC SMALLINT UNSIGNED       NULL
);

INSERT INTO ExtentionMechanismForDNSHeaderFlags
VALUES
    (0, 'DO', 'DNSSEC answer OK', 4035)
;