BEGIN ~bkivan~

IF ~InteractingWith("Viconia")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(4,1)~ THEN BEGIN 0
  SAY @14460
  IF ~~ THEN EXTERN ~BVICONI~ s1
END

IF ~InteractingWith("Viconia")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(4,2)~ THEN BEGIN 1
  SAY @14461
  IF ~~ THEN EXTERN ~BVICONI~ s2
END

IF ~~ THEN BEGIN 2
  SAY @14462
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14463
  IF ~~ THEN EXTERN ~BVICONI~ s3
END

IF ~~ THEN BEGIN 4
  SAY @14464
  IF ~~ THEN DO ~SetGlobal("Kivanfight","GLOBAL",1)~ EXIT
END

IF ~InteractingWith("Viconia")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(4,3)~ THEN BEGIN 5
  SAY @14584
  IF ~~ THEN EXTERN ~BVICONI~ s5
END

IF ~InteractingWith("Viconia")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(4,4)~ THEN BEGIN 6
  SAY @14585
  IF ~~ THEN EXTERN ~BVICONI~ s6
END

IF ~InteractingWith("Viconia")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 7
  SAY @14586
  IF ~~ THEN EXTERN ~BVICONI~ s7
END

IF ~~ THEN BEGIN 8
  SAY @14590
  IF ~~ THEN EXTERN ~BVICONI~ s4
END

IF ~~ THEN BEGIN 9
  SAY @14594
  IF ~~ THEN EXTERN ~BVICONI~ s11
END

IF ~~ THEN BEGIN 10
  SAY @14595
  IF ~~ THEN EXTERN ~BVICONI~ s12
END

IF ~~ THEN BEGIN 11
  SAY @14596
  IF ~~ THEN EXTERN ~BVICONI~ s4
END
