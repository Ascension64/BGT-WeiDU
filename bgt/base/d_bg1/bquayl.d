BEGIN ~bquayl~

IF ~InteractingWith("Tiax")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,1)~ THEN BEGIN 0
  SAY @14475
  IF ~~ THEN EXTERN ~BTIAX~ 0
END

IF ~~ THEN BEGIN 1
  SAY @14476
  IF ~~ THEN EXTERN ~BTIAX~ 4
END

IF ~~ THEN BEGIN 2
  SAY @14477
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @14478
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14479
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Tiax")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,2)~ THEN BEGIN 5
  SAY @14602
  IF ~~ THEN EXTERN ~BTIAX~ 1
END

IF ~InteractingWith("Tiax")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(3,3)~ THEN BEGIN 6
  SAY @14603
  IF ~~ THEN EXTERN ~BTIAX~ 5
END

IF ~InteractingWith("Tiax")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 7
  SAY @14604
  IF ~~ THEN EXTERN ~BTIAX~ 2
END

IF ~~ THEN BEGIN 8
  SAY @14621
  IF ~~ THEN EXTERN ~BTIAX~ 8
END

IF ~~ THEN BEGIN 9
  SAY @14622
  IF ~~ THEN EXTERN ~BTIAX~ 3
END
