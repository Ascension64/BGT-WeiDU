BEGIN ~bxzar~

IF ~InteractingWith("Montaron")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @14505
  IF ~~ THEN EXTERN ~BMONTA~ 0
END

IF ~InteractingWith("Montaron")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,2)~ THEN BEGIN 1
  SAY @14506
  IF ~~ THEN EXTERN ~BMONTA~ 1
END

IF ~InteractingWith("Montaron")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 2
  SAY @14507
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14508
  IF ~~ THEN EXTERN ~BJAHEIR~ s4
END

IF ~~ THEN BEGIN 4
  SAY @14509
  IF ~~ THEN DO ~SetGlobal("Xzarfight","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @14564
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @14582
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @14583
  IF ~~ THEN EXTERN ~BKHALI~ 4
END

IF ~~ THEN BEGIN 8
  SAY @14391
  IF ~~ THEN EXTERN ~BMONTA~ 2
END
