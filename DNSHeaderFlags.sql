CREATE TABLE IF NOT EXISTS DomainNameSystemHeaderFlags
(
    bitNumber       TINYINT UNSIGNED        NOT NULL,
    flag            VARCHAR(4)              NOT NULL,
    description     TINYTEXT                NOT NULL,
    definingRFC     SMALLINT UNSIGNED       NULL
);

INSERT INTO DomainNameSystemHeaderFlags
VALUES
    (5, 'AA', 'Authoritative Answer', 1035),
    (6, 'TC', 'Truncated Response', 1035),
    (7, 'RD', 'Recursion Desired', 1035),
    (8, 'RA', 'Recursion Available', 1035),
    (10, 'AD', 'Authentic Data', 4035),
    (11, 'CD', 'Checking Disabled', 4035)
;