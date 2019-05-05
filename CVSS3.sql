CREATE DATABASE CyberSecurity;
USE CyberSecurity;

CREATE TABLE IF NOT EXISTS CVSS3AccessVectorValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3AccessVectorValues
VALUES
	('L', 'Local', 0.55, NULL),
    ('A', 'Adjacent Network', 0.62, NULL),
    ('N', 'Network', 0.85, NULL),
    ('P', 'Physical', 0.2, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3AttackComplexityValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3AttackComplexityValues
VALUES
    ('L', 'Low', 0.77, NULL),
    ('H', 'High', 0.44, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3PrivilegesRequiredValues
(
    valueCode                   CHAR            NOT NULL PRIMARY KEY,
    name                        VARCHAR(16)     NOT NULL,
    scorePoints                 FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    scorePointsIfScopeChanged   FLOAT UNSIGNED  NOT NULL CHECK (scorePointsIfScopeChanged <= 1.0),
    description                 TEXT            NULL
);

INSERT INTO CVSS3PrivilegesRequiredValues
VALUES
	('N', 'None', 0.85, 0.85, NULL),
    ('L', 'Low', 0.62, 0.68, NULL),
    ('H', 'High', 0.27, 0.50, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3UserInteractionRequiredValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3UserInteractionRequiredValues
VALUES
    ('N', 'None', 0.85, NULL),
    ('R', 'Required', 0.62, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3AuthorizationScopeChangesValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3AuthorizationScopeChangesValues
VALUES
    ('U', 'Unchanged', NULL, NULL),
    ('C', 'Changed', NULL, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ConfidentialityImpactValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ConfidentialityImpactValues
VALUES
    ('H', 'High', 0.56, NULL),
    ('L', 'Low', 0.22, NULL),
    ('N', 'None', 0.00, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3IntegrityImpactValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3IntegrityImpactValues
VALUES
    ('H', 'High', 0.56, NULL),
    ('L', 'Low', 0.22, NULL),
    ('N', 'None', 0.00, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3AvailabilityImpactValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3AvailabilityImpactValues
VALUES
    ('H', 'High', 0.56, NULL),
    ('L', 'Low', 0.22, NULL),
    ('N', 'None', 0.00, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ExploitCodeMaturityValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ExploitCodeMaturityValues
VALUES
    ('X', 'Not Defined', 1.00, NULL),
    ('H', 'High', 1.00, NULL),
    ('F', 'Functional', 0.97, NULL),
    ('P', 'Proof of Concept', 0.94, NULL),
    ('U', 'Unproven', 0.91, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3RemediationLevelValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3RemediationLevelValues
VALUES
    ('X', 'Not Defined', 1.00, NULL),
    ('U', 'Unavailable', 1.00, NULL),
    ('W', 'Workaround', 0.97, NULL),
    ('T', 'Temporary Fix', 0.96, NULL),
    ('O', 'Official Fix', 0.95, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ReportConfidenceValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ReportConfidenceValues
VALUES
    ('X', 'Not Defined', 1.00, NULL),
    ('C', 'Confirmed', 1.00, NULL),
    ('R', 'Reasonable', 0.96, NULL),
    ('U', 'Unknown', 0.95, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ConfidentialityRequirementValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL,
    description     TEXT            NULL
);

INSERT INTO CVSS3ConfidentialityRequirementValues
VALUES
    ('X', 'Not Defined', 1.00, NULL),
    ('H', 'High', 1.50, NULL),
    ('M', 'Medium', 1.00, NULL),
    ('L', 'Low', 0.50, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3IntegrityRequirementValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL,
    description     TEXT            NULL
);

INSERT INTO CVSS3IntegrityRequirementValues
VALUES
    ('X', 'Not Defined', 1.00, NULL),
    ('H', 'High', 1.50, NULL),
    ('M', 'Medium', 1.00, NULL),
    ('L', 'Low', 0.50, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3AvailabilityRequirementValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL,
    description     TEXT            NULL
);

INSERT INTO CVSS3AvailabilityRequirementValues
VALUES
    ('X', 'Not Defined', 1.00, NULL),
    ('H', 'High', 1.50, NULL),
    ('M', 'Medium', 1.00, NULL),
    ('L', 'Low', 0.50, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedAccessVectorValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ModifiedAccessVectorValues
VALUES
    ('X', 'Not Defined', 0.00, NULL),
	('L', 'Local', 0.55, NULL),
    ('A', 'Adjacent Network', 0.62, NULL),
    ('N', 'Network', 0.85, NULL),
    ('P', 'Physical', 0.2, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedAttackComplexityValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ModifiedAttackComplexityValues
VALUES
    ('X', 'Not Defined', 0.00, NULL),
    ('L', 'Low', 0.77, NULL),
    ('H', 'High', 0.44, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedPrivilegesRequiredValues
(
    valueCode                   CHAR            NOT NULL PRIMARY KEY,
    name                        VARCHAR(16)     NOT NULL,
    scorePoints                 FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    scorePointsIfScopeChanged   FLOAT UNSIGNED  NOT NULL CHECK (scorePointsIfScopeChanged <= 1.0),
    description                 TEXT            NULL
);

INSERT INTO CVSS3ModifiedPrivilegesRequiredValues
VALUES
    ('X', 'Not Defined', 0.00, 0.00, NULL),
	('N', 'None', 0.85, 0.85, NULL),
    ('L', 'Low', 0.62, 0.68, NULL),
    ('H', 'High', 0.27, 0.50, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedUserInteractionRequiredValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ModifiedUserInteractionRequiredValues
VALUES
    ('X', 'Not Defined', 0.00, NULL),
    ('N', 'None', 0.85, NULL),
    ('R', 'Required', 0.62, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedAuthorizationScopeChangesValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ModifiedAuthorizationScopeChangesValues
VALUES
    ('X', 'Not Defined', 0.00, NULL),
    ('U', 'Unchanged', NULL, NULL),
    ('C', 'Changed', NULL, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedConfidentialityImpactValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ModifiedConfidentialityImpactValues
VALUES
    ('X', 'Not Defined', 0.00, NULL),
    ('H', 'High', 0.56, NULL),
    ('L', 'Low', 0.22, NULL),
    ('N', 'None', 0.00, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedIntegrityImpactValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ModifiedIntegrityImpactValues
VALUES
    ('X', 'Not Defined', 0.00, NULL),
    ('H', 'High', 0.56, NULL),
    ('L', 'Low', 0.22, NULL),
    ('N', 'None', 0.00, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3ModifiedAvailabilityImpactValues
(
    valueCode       CHAR            NOT NULL PRIMARY KEY,
    name            VARCHAR(16)     NOT NULL,
    scorePoints     FLOAT UNSIGNED  NOT NULL CHECK (scorePoints <= 1.0),
    description     TEXT            NULL
);

INSERT INTO CVSS3ModifiedAvailabilityImpactValues
VALUES
    ('H', 'High', 0.56, NULL),
    ('L', 'Low', 0.22, NULL),
    ('N', 'None', 0.00, NULL)
;

CREATE TABLE IF NOT EXISTS CVSS3
(
    id SERIAL PRIMARY KEY,
    accessVector                        CHAR    NULL,
    attackComplexity                    CHAR    NULL,
    privilegesRequired                  CHAR    NULL,
    userInteractionRequired             CHAR    NULL,
    authorizationScopeChanges           CHAR    NULL,
    confidentialityImpact               CHAR    NULL,
    integrityImpact                     CHAR    NULL,
    availabilityImpact                  CHAR    NULL,
    exploitCodeMaturity                 CHAR    NULL,
    remediationLevel                    CHAR    NULL,
    reportConfidence                    CHAR    NULL,
    confidentialityRequirement          CHAR    NULL,
    integrityRequirement                CHAR    NULL,
    availabilityRequirement             CHAR    NULL,
    modifiedAccessVector                CHAR    NULL,
    modifiedAttackComplexity            CHAR    NULL,
    modifiedPrivilegesRequired          CHAR    NULL,
    modifiedUserInteractionRequired     CHAR    NULL,
    modifiedAuthorizationScopeChanges   CHAR    NULL,
    modifiedConfidentialityImpact       CHAR    NULL,
    modifiedIntegrityImpact             CHAR    NULL,
    modifiedAvailabilityImpact          CHAR    NULL,
    FOREIGN KEY (accessVector) REFERENCES CVSS3AccessVectorValues (valueCode),
    FOREIGN KEY (attackComplexity) REFERENCES CVSS3AttackComplexityValues (valueCode),
    FOREIGN KEY (privilegesRequired) REFERENCES CVSS3PrivilegesRequiredValues (valueCode),
    FOREIGN KEY (userInteractionRequired) REFERENCES CVSS3UserInteractionRequiredValues (valueCode),
    FOREIGN KEY (authorizationScopeChanges) REFERENCES CVSS3AuthorizationScopeChangesValues (valueCode),
    FOREIGN KEY (confidentialityImpact) REFERENCES CVSS3ConfidentialityImpactValues (valueCode),
    FOREIGN KEY (integrityImpact) REFERENCES CVSS3IntegrityImpactValues (valueCode),
    FOREIGN KEY (availabilityImpact) REFERENCES CVSS3AvailabilityImpactValues (valueCode),
    FOREIGN KEY (exploitCodeMaturity) REFERENCES CVSS3ExploitCodeMaturityValues (valueCode),
    FOREIGN KEY (remediationLevel) REFERENCES CVSS3RemediationLevelValues (valueCode),
    FOREIGN KEY (reportConfidence) REFERENCES CVSS3ReportConfidenceValues (valueCode),
    FOREIGN KEY (confidentialityRequirement) REFERENCES CVSS3ConfidentialityRequirementValues (valueCode),
    FOREIGN KEY (integrityRequirement) REFERENCES CVSS3IntegrityRequirementValues (valueCode),
    FOREIGN KEY (availabilityRequirement) REFERENCES CVSS3AvailabilityRequirementValues (valueCode),
    FOREIGN KEY (modifiedAccessVector) REFERENCES CVSS3ModifiedAccessVectorValues (valueCode),
    FOREIGN KEY (modifiedAttackComplexity) REFERENCES CVSS3ModifiedAttackComplexityValues (valueCode),
    FOREIGN KEY (modifiedPrivilegesRequired) REFERENCES CVSS3ModifiedPrivilegesRequiredValues (valueCode),
    FOREIGN KEY (modifiedUserInteractionRequired) REFERENCES CVSS3ModifiedUserInteractionRequiredValues (valueCode),
    FOREIGN KEY (modifiedAuthorizationScopeChanges) REFERENCES CVSS3ModifiedAuthorizationScopeChangesValues (valueCode),
    FOREIGN KEY (modifiedConfidentialityImpact) REFERENCES CVSS3ModifiedConfidentialityImpactValues (valueCode),
    FOREIGN KEY (modifiedIntegrityImpact) REFERENCES CVSS3ModifiedIntegrityImpactValues (valueCode),
    FOREIGN KEY (modifiedAvailabilityImpact) REFERENCES CVSS3ModifiedAvailabilityImpactValues (valueCode)
);

-- CREATE TRIGGER set_baseImpactSubScore_on_insert
-- BEFORE INSERT ON CVSS3
-- FOR EACH ROW

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3ISCBase
(
    confidentialityImpact   CHAR,
    integrityImpact         CHAR,
    availabilityImpact      CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE confidentialityImpactScore FLOAT UNSIGNED;
    DECLARE integrityImpactScore FLOAT UNSIGNED;
    DECLARE availabilityImpactScore FLOAT UNSIGNED;
    SELECT scorePoints INTO confidentialityImpactScore FROM CVSS3ConfidentialityImpactValues WHERE CVSS3ConfidentialityImpactValues.valueCode = confidentialityImpact;
    SELECT scorePoints INTO integrityImpactScore FROM CVSS3IntegrityImpactValues WHERE CVSS3IntegrityImpactValues.valueCode = integrityImpact;
    SELECT scorePoints INTO availabilityImpactScore FROM CVSS3AvailabilityImpactValues WHERE CVSS3AvailabilityImpactValues.valueCode = availabilityImpact;
    RETURN (1 - ((1 - confidentialityImpactScore) * (1 - integrityImpactScore) * (1 - availabilityImpactScore)));
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3ImpactSubScore
(
    confidentialityImpact       CHAR,
    integrityImpact             CHAR,
    availabilityImpact          CHAR,
    authorizationScopeChanges   CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE ISCBase FLOAT UNSIGNED;
    SELECT calculateCVSSv3ISCBase(
        confidentialityImpact,
        integrityImpact,
        availabilityImpact
    ) INTO ISCBase;
    IF authorizationScopeChanges = 'U' THEN
        RETURN (6.42 * ISCBase);
    ELSEIF authorizationScopeChanges = 'C' THEN
        RETURN (7.52 * (ISCBase - 0.029) - (3.25 * POW((ISCBase - 0.02), 15)));
    ELSE
        RETURN NULL;
    END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3ExploitabilitySubScore
(
    accessVector                CHAR,
    attackComplexity            CHAR,
    privilegesRequired          CHAR,
    userInteractionRequired     CHAR,
    authorizationScopeChanges   CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE accessVectorScore FLOAT UNSIGNED;
    DECLARE attackComplexityScore FLOAT UNSIGNED;
    DECLARE privilegesRequiredScore FLOAT UNSIGNED;
    DECLARE userInteractionRequiredScore FLOAT UNSIGNED;

    SELECT scorePoints INTO accessVectorScore FROM CVSS3AccessVectorValues
    WHERE CVSS3AccessVectorValues.valueCode = accessVector;

    SELECT scorePoints INTO attackComplexityScore FROM CVSS3AttackComplexityValues
    WHERE CVSS3AttackComplexityValues.valueCode = attackComplexity;

    SELECT scorePoints INTO userInteractionRequiredScore FROM CVSS3UserInteractionRequiredValues
    WHERE CVSS3UserInteractionRequiredValues.valueCode = userInteractionRequired;

    IF authorizationScopeChanges = 'U' THEN
        SELECT scorePoints INTO privilegesRequiredScore
        FROM CVSS3PrivilegesRequiredValues
        WHERE CVSS3PrivilegesRequiredValues.valueCode = privilegesRequired;
    ELSEIF authorizationScopeChanges = 'C' THEN
        SELECT scorePointsIfScopeChanged INTO privilegesRequiredScore
        FROM CVSS3PrivilegesRequiredValues
        WHERE CVSS3PrivilegesRequiredValues.valueCode = privilegesRequired;
    ELSE
        RETURN NULL;
    END IF;
    RETURN (8.22 * accessVectorScore * attackComplexityScore * privilegesRequiredScore * userInteractionRequiredScore);
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3BaseScore
(
    confidentialityImpact       CHAR,
    integrityImpact             CHAR,
    availabilityImpact          CHAR,
    authorizationScopeChanges   CHAR,
    accessVector                CHAR,
    attackComplexity            CHAR,
    privilegesRequired          CHAR,
    userInteractionRequired     CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE baseImpactSubScore FLOAT UNSIGNED;
    DECLARE baseExploitabilitySubScore FLOAT UNSIGNED;
    SELECT calculateCVSSv3ImpactSubScore(
        confidentialityImpact,
        integrityImpact,
        availabilityImpact,
        authorizationScopeChanges
    ) INTO baseImpactSubScore;
    SELECT calculateCVSSv3ExploitabilitySubScore(
        accessVector,
        attackComplexity,
        privilegesRequired,
        userInteractionRequired,
        authorizationScopeChanges
    ) INTO baseExploitabilitySubScore;

    IF baseImpactSubScore <= 0.0 THEN
        RETURN 0.0;
    ELSEIF authorizationScopeChanges = 'U' THEN
        RETURN LEAST((baseImpactSubScore + baseExploitabilitySubScore), 10);
    ELSEIF authorizationScopeChanges = 'C' THEN
        RETURN LEAST((1.08 * (baseImpactSubScore + baseExploitabilitySubScore)), 10);
    ELSE
        RETURN NULL;
    END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3TemporalScore
(
    confidentialityImpact       CHAR,
    integrityImpact             CHAR,
    availabilityImpact          CHAR,
    authorizationScopeChanges   CHAR,
    accessVector                CHAR,
    attackComplexity            CHAR,
    privilegesRequired          CHAR,
    userInteractionRequired     CHAR,
    exploitCodeMaturity         CHAR,
    remediationLevel            CHAR,
    reportConfidence            CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE baseScore FLOAT UNSIGNED;
    DECLARE exploitCodeMaturityMultiplier FLOAT UNSIGNED;
    DECLARE remediationLevelMultiplier FLOAT UNSIGNED;
    DECLARE reportConfidenceMultiplier FLOAT UNSIGNED;
    SELECT calculateCVSSv3BaseScore (
        confidentialityImpact,
        integrityImpact,
        availabilityImpact,
        authorizationScopeChanges,
        accessVector,
        attackComplexity,
        privilegesRequired,
        userInteractionRequired
    ) INTO baseScore;
    SELECT scorePoints INTO exploitCodeMaturityMultiplier FROM CVSS3ExploitCodeMaturityValues WHERE CVSS3ExploitCodeMaturityValues.valueCode = exploitCodeMaturity;
    SELECT scorePoints INTO remediationLevelMultiplier FROM CVSS3RemediationLevelValues WHERE CVSS3RemediationLevelValues.valueCode = remediationLevel;
    SELECT scorePoints INTO reportConfidenceMultiplier FROM CVSS3ReportConfidenceValues WHERE CVSS3ReportConfidenceValues.valueCode = reportConfidence;
    RETURN (baseScore * exploitCodeMaturityMultiplier * remediationLevelMultiplier * reportConfidenceMultiplier);
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3ISCModified
(
    modifiedConfidentialityImpact   CHAR,
    modifiedIntegrityImpact         CHAR,
    modifiedAvailabilityImpact      CHAR,
    confidentialityRequirement      CHAR,
    integrityRequirement            CHAR,
    availabilityRequirement         CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE confidentialityImpactScore FLOAT UNSIGNED;
    DECLARE integrityImpactScore FLOAT UNSIGNED;
    DECLARE availabilityImpactScore FLOAT UNSIGNED;
    DECLARE confidentialityRequirementMultiplier FLOAT UNSIGNED;
    DECLARE integrityRequirementMultiplier FLOAT UNSIGNED;
    DECLARE availabilityRequirementMultiplier FLOAT UNSIGNED;

    SELECT scorePoints INTO confidentialityImpactScore
    FROM CVSS3ModifiedConfidentialityImpactValues
    WHERE CVSS3ModifiedConfidentialityImpactValues.valueCode = modifiedConfidentialityImpact;

    SELECT scorePoints INTO integrityImpactScore
    FROM CVSS3ModifiedIntegrityImpactValues
    WHERE CVSS3ModifiedIntegrityImpactValues.valueCode = modifiedIntegrityImpact;

    SELECT scorePoints INTO availabilityImpactScore
    FROM CVSS3ModifiedAvailabilityImpactValues
    WHERE CVSS3ModifiedAvailabilityImpactValues.valueCode = modifiedAvailabilityImpact;

    SELECT scorePoints INTO confidentialityRequirementMultiplier
    FROM CVSS3ConfidentialityRequirementValues
    WHERE CVSS3ConfidentialityRequirementValues.valueCode = confidentialityRequirement;

    SELECT scorePoints INTO integrityRequirementMultiplier
    FROM CVSS3IntegrityRequirementValues
    WHERE CVSS3IntegrityRequirementValues.valueCode = integrityRequirement;

    SELECT scorePoints INTO availabilityRequirementMultiplier
    FROM CVSS3AvailabilityRequirementValues
    WHERE CVSS3AvailabilityRequirementValues.valueCode = availabilityRequirement;

    RETURN (
        LEAST(
            (1 -
                (
                    (1 - (confidentialityImpactScore * confidentialityRequirementMultiplier)) *
                    (1 - (integrityImpactScore * integrityRequirementMultiplier)) *
                    (1 - (availabilityImpactScore * availabilityRequirementMultiplier))
                )
            ),
            0.915
        )
    );
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3ModifiedImpactSubScore
(
    modifiedConfidentialityImpact   CHAR,
    modifiedIntegrityImpact         CHAR,
    modifiedAvailabilityImpact      CHAR,
    confidentialityRequirement      CHAR,
    integrityRequirement            CHAR,
    availabilityRequirement         CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE ISCModified FLOAT UNSIGNED;
    SELECT calculateCVSSv3ISCModified (
        modifiedConfidentialityImpact,
        modifiedIntegrityImpact,
        modifiedAvailabilityImpact,
        confidentialityRequirement,
        integrityRequirement,
        availabilityRequirement
    ) INTO ISCModified;

    IF authorizationScopeChanges = 'U' THEN
        RETURN (6.42 * ISCModified);
    ELSEIF authorizationScopeChanges = 'C' THEN
        RETURN ((7.52 * (ISCModified - 0.029)) - (3.25 * POW((ISCModified - 0.02), 15)));
    ELSE
        RETURN NULL;
    END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3ModifiedExploitabilitySubScore
(
    modifiedAccessVector            CHAR,
    modifiedAttackComplexity        CHAR,
    modifiedPrivilegesRequired      CHAR,
    modifiedUserInteractionRequired CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE modifiedAccessVectorScore FLOAT UNSIGNED;
    DECLARE modifiedAttackComplexityScore FLOAT UNSIGNED;
    DECLARE modifiedPrivilegesRequiredScore FLOAT UNSIGNED;
    DECLARE modifiedUserInteractionRequiredScore FLOAT UNSIGNED;

    SELECT scorePoints INTO modifiedAccessVectorScore
    FROM CVSS3ModifiedAccessVectorValues
    WHERE CVSS3ModifiedAccessVectorValues.valueCode = modifiedAccessVector;

    SELECT scorePoints INTO modifiedAttackComplexityScore
    FROM CVSS3ModifiedAttackComplexityValues
    WHERE CVSS3ModifiedAttackComplexityValues.valueCode = modifiedAttackComplexity;

    SELECT scorePoints INTO modifiedPrivilegesRequiredScore
    FROM CVSS3ModifiedPrivilegesRequiredValues
    WHERE CVSS3ModifiedPrivilegesRequiredValues.valueCode = modifiedPrivilegesRequired;

    SELECT scorePoints INTO modifiedUserInteractionRequiredScore
    FROM CVSS3ModifiedUserInteractionRequiredValues
    WHERE CVSS3ModifiedUserInteractionRequiredValues.valueCode = modifiedUserInteractionRequired;

    RETURN (
        8.22 *
        modifiedAccessVectorScore *
        modifiedAttackComplexityScore *
        modifiedPrivilegesRequiredScore *
        modifiedUserInteractionRequiredScore
    );
END $$
DELIMITER ;

-- TODO: Finish Environmental Section
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS calculateCVSSv3EnvironmentalScore
(
    modifiedConfidentialityImpact       CHAR,
    modifiedIntegrityImpact             CHAR,
    modifiedAvailabilityImpact          CHAR,
    modifiedAuthorizationScopeChanges   CHAR,
    modifiedAccessVector                CHAR,
    modifiedAttackComplexity            CHAR,
    modifiedPrivilegesRequired          CHAR,
    modifiedUserInteractionRequired     CHAR,
    exploitCodeMaturity                 CHAR,
    remediationLevel                    CHAR,
    reportConfidence                    CHAR
)
RETURNS FLOAT UNSIGNED
DETERMINISTIC
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
    DECLARE modifiedImpactSubScore FLOAT UNSIGNED;
    DECLARE modifiedExploitabilitySubScore FLOAT UNSIGNED;
    DECLARE exploitCodeMaturityMultiplier FLOAT UNSIGNED;
    DECLARE remediationLevelMultiplier FLOAT UNSIGNED;
    DECLARE reportConfidenceMultiplier FLOAT UNSIGNED;

    SELECT calculateCVSSv3BaseImpactSubScore(
        confidentialityImpact,
        integrityImpact,
        availabilityImpact
    ) INTO modifiedImpactSubScore;
    SELECT calculateCVSSv3ExploitabilitySubScore(
        accessVector,
        attackComplexity,
        privilegesRequired,
        userInteractionRequired
    ) INTO modifiedExploitabilitySubScore;

    SELECT scorePoints INTO exploitCodeMaturityMultiplier FROM CVSS3ExploitCodeMaturityValues WHERE CVSS3ExploitCodeMaturityValues.valueCode = exploitCodeMaturity;
    SELECT scorePoints INTO remediationLevelMultiplier FROM CVSS3RemediationLevelValues WHERE CVSS3RemediationLevelValues.valueCode = remediationLevel;
    SELECT scorePoints INTO reportConfidenceMultiplier FROM CVSS3ReportConfidenceValues WHERE CVSS3ReportConfidenceValues.valueCode = reportConfidence;

    IF modifiedImpactSubScore <= 0 THEN
        RETURN 0.0;
    ELSEIF authorizationScopeChanges = 'U' THEN
        RETURN (
            LEAST((modifiedImpactSubScore * modifiedExploitabilitySubScore), 10) *
            exploitCodeMaturityMultiplier *
            remediationLevelMultiplier *
            reportConfidenceMultiplier
        );
    ELSEIF authorizationScopeChanges = 'C' THEN
        RETURN (
            LEAST((1.08 * (modifiedImpactSubScore * modifiedExploitabilitySubScore)), 10) *
            exploitCodeMaturityMultiplier *
            remediationLevelMultiplier *
            reportConfidenceMultiplier
        );
    ELSE
        RETURN NULL;
    END IF;
END $$
DELIMITER ;

-- TODO: ToVectorString