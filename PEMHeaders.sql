CREATE TABLE IF NOT EXISTS PrivacyEnhancedMailHeaders
(
    header      VARCHAR(32)         NOT NULL UNIQUE,
    asn1Type    VARCHAR(32)         NULL,
    rfc         SMALLINT UNSIGNED   NULL,
    module      VARCHAR(16)         NULL,
    description TINYTEXT            NULL
);

INSERT INTO PrivacyEnhancedMailHeaders
VALUES
    ('X509 CERTIFICATE', 'Certificate', 5280, 'id-pkix1-e', 'This is an antiquated header'),
    ('CERTIFICATE', 'Certificate', 5280, 'id-pkix1-e', NULL),
    ('CERTIFICATE PAIR', NULL, NULL, NULL, NULL),
    ('TRUSTED CERTIFICATE', NULL, NULL, NULL, NULL),
    ('NEW CERTIFICATE REQUEST', NULL, NULL, NULL, NULL),
    ('CERTIFICATE REQUEST', 'CertificationRequest', 2986, 'id-pkcs10', NULL),
    ('X509 CRL', 'CertificateList', 5280, 'id-pkix1-e', NULL),
    ('ANY PRIVATE KEY', NULL, NULL, NULL, NULL),
    ('PUBLIC KEY', 'SubjectPublicKeyInfo', 5280, 'id-pkix1-e', NULL),
    ('RSA PRIVATE KEY', NULL, NULL, NULL, NULL),
    ('RSA PUBLIC KEY', NULL, NULL, NULL, NULL),
    ('DSA PRIVATE KEY', NULL, NULL, NULL, NULL),
    ('DSA PUBLIC KEY', NULL, NULL, NULL, NULL),
    ('PKCS7', 'ContentInfo', 2315, 'id-pkcs7', NULL),
    ('PKCS #7 SIGNED DATA', NULL, NULL, NULL, NULL),
    ('ENCRYPTED PRIVATE KEY', 'EncryptedPrivateKeyInfo', 5958, 'id-aKPV1', NULL),
    ('PRIVATE KEY', 'PrivateKeyInfo', 5208, 'id-pkcs8', NULL),
    ('DH PARAMETERS', NULL, NULL, NULL, NULL),
    ('SSL SESSION PARAMETERS', NULL, NULL, NULL, NULL),
    ('DSA PARAMETERS', NULL, NULL, NULL, NULL),
    ('ECDSA PUBLIC KEY', NULL, NULL, NULL, NULL),
    ('EC PARAMETERS', NULL, NULL, NULL, NULL),
    ('EC PRIVATE KEY', NULL, NULL, NULL, NULL),
    ('PARAMETERS', NULL, NULL, NULL, NULL),
    ('CMS', 'ContentInfo', 5652, 'id-cms2004', NULL),
    ('ATTRIBUTE CERTIFICATE','AttributeCertificate', 5755, 'id-acv2', NULL)
;