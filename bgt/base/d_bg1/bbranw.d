BEGIN ~bbranw~

IF ~InteractingWith("Sharteel")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @14409
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Sharteel")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 1
  SAY @14410
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Tiax")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(10,1)~ THEN BEGIN 2
  SAY @14411
  IF ~~ THEN EXTERN ~BTIAX~ 3
END

IF ~~ THEN BEGIN 3
  SAY @14412
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14413
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Tiax")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 5
  SAY @14515
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @14628
  IF ~~ THEN EXTERN ~BTIAX~ 13
END

IF ~~ THEN BEGIN 7
  SAY @14629
  IF ~~ THEN EXIT
END
