#diorganotis
CREATE USER 'diorganotis'@'localhost' IDENTIFIED BY 'mypassword';
GRANT SELECT ON `EventDB`.`Agora` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Athlitiki_ekdilosi` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Diorganotis` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Eisitirio` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Endiaferon` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Fusiko_simeio_propolisis` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Kallitechnis` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Kallitechnis-omada` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Mousiki_ekdilosi` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Omada` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Propolisi` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Theatro` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Topothesia` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Xristis` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Diorg` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Athlitiki` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Mousiki` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Plain` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Theatro` TO 'diorganotis'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Quick` TO 'diorganotis'@'localhost';

GRANT INSERT, UPDATE ON `EventDB`.`Athlitiki_ekdilosi` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Diorganotis` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Ekdilosi` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Fusiko_simeio_propolisis` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Kallitechnis` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Kallitechnis-omada` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Mousiki_ekdilosi` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Omada` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Propolisi` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Theatro` TO 'diorganotis'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Topothesia` TO 'diorganotis'@'localhost';

GRANT DELETE ON `EventDB`.`Athlitiki_ekdilosi` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Ekdilosi` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Fusiko_simeio_propolisis` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Kallitechnis` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Kallitechnis-omada` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Mousiki_ekdilosi` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Omada` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Propolisi` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Theatro` TO 'diorganotis'@'localhost';
GRANT DELETE ON `EventDB`.`Topothesia` TO 'diorganotis'@'localhost';

#guest
CREATE USER 'guest'@'localhost' IDENTIFIED BY 'mypassword';
GRANT SELECT ON `EventDB`.`Athlitiki_ekdilosi` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Eisitirio` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Endiaferon` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Fusiko_simeio_propolisis` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Kallitechnis` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Kallitechnis-omada` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Mousiki_ekdilosi` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Omada` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Propolisi` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Theatro` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Topothesia` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Xristis` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Diorg` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Athlitiki` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Mousiki` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Plain` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Theatro` TO 'guest'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Quick` TO 'guest'@'localhost';

GRANT INSERT ON `EventDB`.`Xristis` TO 'guest'@'localhost';

#authenticateduser
CREATE USER 'authuser'@'localhost' IDENTIFIED BY 'myauthpassword';

GRANT SELECT ON `EventDB`.`Agora` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Athlitiki_ekdilosi` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Eisitirio` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Endiaferon` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Fusiko_simeio_propolisis` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Kallitechnis` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Kallitechnis-omada` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Karta` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Mousiki_ekdilosi` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Omada` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Propolisi` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Theatro` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Topothesia` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Xristis` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Diorg` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Athlitiki` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Mousiki` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Plain` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Theatro` TO 'authuser'@'localhost';
GRANT SELECT ON `EventDB`.`Ekdilosi-Quick` TO 'authuser'@'localhost';

GRANT INSERT, UPDATE ON `EventDB`.`Agora` TO 'authuser'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Xristis` TO 'authuser'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Endiaferon` TO 'authuser'@'localhost';
GRANT INSERT, UPDATE ON `EventDB`.`Karta` TO 'authuser'@'localhost';

GRANT DELETE ON `EventDB`.`Endiaferon` TO 'authuser'@'localhost';
GRANT DELETE ON `EventDB`.`Karta` TO 'authuser'@'localhost';
