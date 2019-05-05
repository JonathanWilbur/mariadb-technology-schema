-- Also known as an OUI
-- https://standards.ieee.org/develop/regauth/oui/oui.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedLargeMediaAccessControlAddressBlocks
(
    assignedPrefix      INTEGER UNSIGNED        NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NULL,
    registrantAddress   TINYTEXT                NULL,
    privateRegistration BOOLEAN                 NULL
);

-- https://standards.ieee.org/develop/regauth/oui28/mam.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedMediumMediaAccessControlAddressBlocks
(
    assignedPrefix      INTEGER UNSIGNED        NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NULL,
    registrantAddress   TINYTEXT                NULL,
    privateRegistration BOOLEAN                 NULL
);

-- Also known as an OUI-36
-- https://standards.ieee.org/develop/regauth/oui36/oui36.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedSmallMediaAccessControlAddressBlocks
(
    assignedPrefix      BIGINT UNSIGNED         NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NULL,
    registrantAddress   TINYTEXT                NULL,
    privateRegistration BOOLEAN                 NULL
);

-- https://standards.ieee.org/develop/regauth/cid/cid.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedCompanyIDs
(
    id                  INTEGER UNSIGNED        NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NULL,
    registrantAddress   TINYTEXT                NULL,
    privateRegistration BOOLEAN                 NULL
);

-- https://standards.ieee.org/develop/regauth/ethertype/eth.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedEthertypes
(
    assignedNumber      SMALLINT UNSIGNED       NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NULL,
    registrantAddress   TINYTEXT                NULL,
    privateRegistration BOOLEAN                 NULL,
    protocolName        VARCHAR(128)            NULL
);

-- https://standards.ieee.org/develop/regauth/manid/manid.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedManufacturerIDs
(
    assignedNumber      SMALLINT UNSIGNED       NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NULL,
    registrantAddress   TINYTEXT                NULL
);

-- https://standards.ieee.org/develop/regauth/bopid/opid.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedOperatorIDs
(
    assignedNumber      INTEGER UNSIGNED        NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NULL,
    registrantAddress   TINYTEXT                NULL
);

-- https://standards.ieee.org/develop/regauth/iab/iab.csv
CREATE TABLE IF NOT EXISTS IEEEAssignedIndividualAddressBlocks
(
    assignedNumber      BIGINT UNSIGNED         NOT NULL PRIMARY KEY,
    registrant          VARCHAR(64)             NOT NULL,
    registrantAddress   TINYTEXT                NOT NULL
);

-- TODO: Logical Link Control LSAP Address assignments http://standards.ieee.org/develop/regauth/llc/public.html
-- TODO: Standards Group Assignments http://standards.ieee.org/develop/regauth/grpmac/public.html
-- TODO: Silo Type Identifier Assignments http://standards.ieee.org/develop/regauth/stid/public.html
-- TODO: Provider Service Identifier Assignments http://standards.ieee.org/develop/regauth/psid/public.html
