-- Insertion de rôles

INSERT INTO role (ROLE) VALUES('etudiant');
INSERT INTO role (ROLE) VALUES('responsable_formation');
INSERT INTO role (ROLE) VALUES('responsable_stage');
INSERT INTO role (ROLE) VALUES('responsable_cours');
INSERT INTO role (ROLE) VALUES('etudiant_invalide');
INSERT INTO role (ROLE) VALUES('admin');

-- Fin Insertion de rôles

-- -- --

-- Insertion de membres

INSERT INTO member (FIRST_NAME,LAST_NAME,EMAIL,BIRTHDAY,PHONE,SIRET,PICTURE,ADDRESS) VALUES('Root', 'Root', 'da2i@univ-lille1.fr', null, null,null,null,null);

-- Fin Insertion de membres

-- -- --

-- Insertion de credentials

-- test user with 'admin' as password... CHANGE IT IN PRODUCTION :p

INSERT INTO credential VALUES('root', '10000:e72e6165bd32d0f8752356f7f0cc5f2d985dd93645beb972:9a58e883507083a56bcc2b9dc196bb5e895aee7c',1);

-- Fin Insertion de credentials

-- -- --

-- Insertion des roles de chaque membre

INSERT INTO has_role VALUES ('root','admin');

