CREATE TABLE IF NOT EXISTS CommonWeaknessEnumeration
(
	id SERIAL PRIMARY KEY,
	cweName                         VARCHAR(64)         NOT NULL UNIQUE,
	abstraction                     VARCHAR(7)          NOT NULL CHECK (abstraction IN ('Base', 'Variant', 'Class')),
	simpleStructure                 BOOLEAN             NOT NULL,
	publicationStatus               VARCHAR(8)          NOT NULL CHECK (publicationStatus IN ('Incomplete', 'Draft', 'Usable')),
	shortDescription                NVARCHAR(1024)      NOT NULL,
	longDescription                 TEXT                NOT NULL
);

CREATE TABLE IF NOT EXISTS NIST80053Revision4SecurityControl
(
	-- Parts of the Control identifier: <family>-<majornumber><subsection>.<minornumber>
	family                  CHAR(2)         NOT NULL CHECK (family IN ('AC', 'AT', 'AU', 'CA', 'CM', 'CP', 'IA', 'IR', 'MA', 'MP', 'PE', 'PL', 'PM', 'PS', 'RA', 'SA', 'SC', 'SI')),
	controlNumber           SMALLINT        NOT NULL CHECK (majorNumber > 0),
	subcontrol              CHAR            NULL CHECK (subsection LIKE '[A-Z]'),
	subsubcontrol           TINYINT         NULL CHECK (minorNumber > 0),
	title                   VARCHAR(128)    NOT NULL, -- Taken from the Title element
	priority                TINYINT         NOT NULL CHECK (priority IN (0, 1, 2, 3)), -- P0 means 'Unspecified'
	minimumBaseline         CHAR            NULL CHECK (minimumBaseline IN ('L', 'M', 'H')),
	shortDescription        VARCHAR(1024)   NOT NULL, -- Taken from the description element in each control or sub-control
	longDescription         TEXT           	NULL, -- Taken from the description element in <supplemental-guidance>, if present.
	controlXML              TEXT            NULL, -- The whole XML of the control or subcontrol
	introductedInRevision   TINYINT         NULL CHECK (introductedInRevision IN (0, 1, 2, 3, 4, 5))
);