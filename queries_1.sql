

# (3)
SELECT Ekdilosi.onoma_ekdilosis, imerominia, Kallitechnis-omada.onoma 
FROM Ekdilosi 
   JOIN Kallitechnis-omada ON kodikos_ermineuti = kodikos_ermineuti
   JOIN Topothesia ON kodikos_topothesias = kodikos_topothesias
WHERE Topothesia.onoma_topothesias = "Ta ksudia"

# (4)
SELECT Ekdilosi.onoma_ekdilosis, Ekdilosi.imerominia, Topothesia.onoma_topothesias
FROM Ekdilosi 
   JOIN Topothesia ON kodikos_topothesias = kodikos_topothesias
   JOIN Kallitechnis-omada ON kodikos_ermineuti = kodikos_ermineuti
WHERE Kallitechnis-omada.onoma = "Giannis Mpouzoukis"

# (5)
SELECT Ekdilosi.onoma_ekdilosis, Ekdilosi.imerominia, Ekdilosi.onoma 
FROM Kallitechnis-omada
   JOIN Ekdilosi ON kodikos_ermineuti = kodikos_ermineuti
WHERE Kallitechnis-omada.onoma = "Giannis Mpouzoukis"

#(6)
SELECT Ekdilosi.onoma_ekdilosis, Ekdilosi.imerominia, Kallitechnis-omada.onoma 
FROM Ekdilosi
   JOIN Kallitechnis-omada ON kodikos_ermineuti = kodikos_ermineuti
WHERE Ekdilosi.imrominia = "23/11/2018"

#(7)
SELECT Xristis.onomateponumo, Agora.tupos_eisitiriou
FROM Agora
   JOIN Xristis ON kodikos_xristi = kodikos_xristi
WHERE Agora.kodikos_ekdilosis = 42

#(8)
SELECT Ekdilosi.onoma_ekdilosis, Ekdilosi.imerominia, Ekdilosi.ora_enarksis,
Topothesia.onoma_topothesias, Kallitechnis-omada.onoma
FROM Ekdilosi
   JOIN Endiaferon ON kodikos_ekdilosis = kodikos_ekdilosis
   JOIN Topothesia ON kodikos_topothesias= kodikos_topothesias
   JOIN Kallitechnis-omada ON kodikos_ermineuti = kodikos_ermineuti
WHERE Endiaferon.kodikos_xristi = 8055





























