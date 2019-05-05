CREATE TABLE IF NOT EXISTS CommonVulnerabilityAndExposures
(
	yearReported						YEAR				NOT NULL,
    sequenceNumber						SMALLINT UNSIGNED	NOT NULL,
    description							TEXT				NULL,
    -- cvssv2                              BIGINT UNSIGNED     NULL,
    cvssv3                              BIGINT UNSIGNED     NULL,
    FOREIGN KEY (cvssv3) REFERENCES CVSS3 (id),
    UNIQUE INDEX (yearReported, sequenceNumber)
);