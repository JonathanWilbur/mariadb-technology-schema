CREATE TABLE IF NOT EXISTS TopLevelDomains
(
    label                   VARCHAR(64)     NOT NULL PRIMARY KEY,
    punyEncodedLabel        VARCHAR(64)     NULL,
    englishMeaning          TINYTEXT        NULL,
    dateRegistered          DATE            NULL,
    registrant              TINYTEXT        NULL,
    description             MEDIUMTEXT      NULL,
    restrictions            MEDIUMTEXT      NULL,
    region                  TINYTEXT        NULL,

    -- Types
    isOriginalTLD           BOOLEAN         NULL,
    isInfrastructureTLD     BOOLEAN         NULL,
    isGenericTLD            BOOLEAN         NULL,
    isRestrictedGenericTLD  BOOLEAN         NULL,
    isSponsoredTLD          BOOLEAN         NULL,
    isCountryCodeTLD        BOOLEAN         NULL,
    isTestTLD               BOOLEAN         NULL,
    isBrandTLD              BOOLEAN         NULL,
    isGeographicTLD         BOOLEAN         NULL,
    isSpecialUseTLD         BOOLEAN         NULL,

    -- Capabilities
    internationalized       BOOLEAN         NULL,
    secondLevelDomains      BOOLEAN         NULL,
    ipv6Enabled             BOOLEAN         NULL,
    dnssecSigned            BOOLEAN         NULL,
    dsRecordInRoot          BOOLEAN         NULL,
    iscDLVRecordInRoot      BOOLEAN         NULL
);

CREATE TRIGGER IF NOT EXISTS uppercase_label_on_insert
BEFORE INSERT ON TopLevelDomains
FOR EACH ROW
    SET NEW.label = UPPER(NEW.label);

CREATE TRIGGER IF NOT EXISTS uppercase_label_on_update
BEFORE UPDATE ON TopLevelDomains
FOR EACH ROW
    SET NEW.label = UPPER(NEW.label);