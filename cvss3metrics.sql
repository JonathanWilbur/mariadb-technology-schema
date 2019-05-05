INSERT INTO 
(
    abbrevation,
    name,
    mandatory,
    metricGroup
)
VALUES
    ('AV', 'Attack Vector', 1, 'BASE'),
    ('AC', 'Attack Complexity', 1, 'BASE'),
    ('PR', 'Privileges Required', 1, 'BASE'),
    ('UI', 'User Interaction', 1, 'BASE'),
    ('S', 'Authorization Scope', 1, 'BASE'),
    ('C', 'Confidentiality Impact', 1, 'BASE'),
    ('I', 'Integrity Impact', 1, 'BASE'),
    ('A', 'Availability Impact', 1, 'BASE'),
    ('E', 'Exploit Code Maturity', 0, 'TEMPORAL'),
    ('RL', 'Remediation Level', 0, 'TEMPORAL'),
    ('RC', 'Report Confidence', 0, 'TEMPORAL'),
    ('MAV', 'Modified Attack Vector', 0, 'ENVIRONMENTAL'),
    ('MAC', 'Modified Attack Complexity', 0, 'ENVIRONMENTAL'),
    ('MPR', 'Modified Privileges Required', 0, 'ENVIRONMENTAL'),
    ('MUI', 'Modified User Interaction', 0, 'ENVIRONMENTAL'),
    ('MS', 'Modified Authorization Scope', 0, 'ENVIRONMENTAL'),
    ('MC', 'Modified Confidentiality Impact', 0, 'ENVIRONMENTAL'),
    ('MI', 'Modified Integrity Impact', 0, 'ENVIRONMENTAL'),
    ('MA', 'Modified Availability Impact', 0, 'ENVIRONMENTAL')
;