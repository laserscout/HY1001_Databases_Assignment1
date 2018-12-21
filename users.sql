#diorganotis
CREATE USER 'diorganotis'@'localhost' IDENTIFIED BY 'mypassword';
CREATE USER 'diorganotis'@'%' IDENTIFIED BY 'mypassword';
GRANT SELECT ON EventDB.* TO 'diorganotis'@'localhost';
GRANT SELECT ON EventDB.* TO 'diorganotis'@'%';
GRANT INSERT ON EventDB.Topothesia TO 'diorganotis'@'localhost';
GRANT INSERT ON EventDB.Fusiko_simeio_propolisis TO 'diorganotis'@'localhost';
GRANT INSERT ON EventDB.Ekdilosi TO 'diorganotis'@'localhost';

#guest
CREATE USER 'guest'@'localhost' IDENTIFIED BY 'mypassword';
CREATE USER 'guest'@'%' IDENTIFIED BY 'mypassword';
GRANT SELECT ON EventDB.* TO 'guest'@'localhost';
GRANT SELECT ON EventDB.* TO 'guest'@'%';


#authenticateduser
CREATE USER 'authenticateduser'@'localhost' IDENTIFIED BY 'myauthpassword';
CREATE USER 'authenticateduser'@'%' IDENTIFIED BY 'myauthpassword';
GRANT SELECT ON student.* TO 'authenticateduser'@'localhost';
GRANT SELECT ON student.* TO 'authenticateduser'@'%';
GRANT INSERT ON EventDB.Karta TO 'authenticateduser'@'localhost';
GRANT INSERT ON EventDB.Agora TO 'authenticateduser'@'localhost';
GRANT INSERT, DROP ON EventDB.Endiaferon TO 'authenticateduser'@'localhost';