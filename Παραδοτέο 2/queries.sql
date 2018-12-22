
USE EventDB;

SELECT Ekdilosi.onoma_ekdilosis, imerominia, `Kallitechnis-omada`.onoma 
FROM Ekdilosi 
   JOIN `Kallitechnis-omada` ON Ekdilosi.kodikos_ermineuti = `Kallitechnis-omada`.kodikos_ermineuti
   JOIN Topothesia ON Ekdilosi.kodikos_topothesias = Topothesia.kodikos_topothesias
WHERE Topothesia.onoma_topothesias = "Paok Sports Arena";

######################################################################

SELECT Ekdilosi.onoma_ekdilosis, Ekdilosi.imerominia, Topothesia.onoma_topothesias
FROM Ekdilosi 
   JOIN Topothesia ON Ekdilosi.kodikos_topothesias = Topothesia.kodikos_topothesias
   JOIN `Kallitechnis-omada` ON `Kallitechnis-omada`.kodikos_ermineuti = Ekdilosi.kodikos_ermineuti
WHERE `Kallitechnis-omada`.onoma = "Θάνος Μικρούτσικος";

######################################################################

SELECT `Ekdilosi`.`onoma_ekdilosis`, `Ekdilosi`.`imerominia`, `Kallitechnis-omada`.`onoma` AS `Onoma_Kallitechni`
FROM `Ekdilosi`
JOIN `Kallitechnis-omada` ON `Ekdilosi`.`kodikos_ermineuti` = `Kallitechnis-omada`.`kodikos_ermineuti`
WHERE `Ekdilosi`.`imerominia` >= "2018-12-23";

######################################################################

SELECT Xristis.onomateponumo, Agora.tupos_eisitiriou
FROM `Agora`
JOIN `Xristis` on `Agora`.`kodikos_xristi` = `Xristis`.`kodikos_xristi`
WHERE kodikos_ekdilosis = 4444;

######################################################################

SELECT `Ekdilosi`.`onoma_ekdilosis`, `Ekdilosi`.`imerominia`, `Ekdilosi`.`ora_enarksis`,
`Topothesia`.`onoma_topothesias`, `Kallitechnis-omada`.`onoma` AS `onoma_kallitechni`
FROM `Ekdilosi`
   JOIN `Endiaferon` ON `Ekdilosi`.`kodikos_ekdilosis` = `Endiaferon`.`kodikos_ekdilosis`
   JOIN `Topothesia` ON `Ekdilosi`.`kodikos_topothesias`= `Topothesia`.`kodikos_topothesias`
   JOIN `Kallitechnis-omada` ON `Ekdilosi`.`kodikos_ermineuti` = `Kallitechnis-omada`.`kodikos_ermineuti`
WHERE `Endiaferon`.`kodikos_xristi` = 8055;






























