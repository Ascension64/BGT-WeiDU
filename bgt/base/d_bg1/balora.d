BEGIN ~balora~

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,1)~ THEN BEGIN 0
  SAY @14403
  IF ~~ THEN EXTERN ~BEDWIN~ s3
END

IF ~InteractingWith("Edwin")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 1
  SAY @14404
  IF ~~ THEN EXTERN ~BEDWIN~ s4
END

IF ~~ THEN BEGIN 2
  SAY @14405
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Garrick")
GlobalLT("ENDOFBG1","GLOBAL",2)
See("Eldoth")~ THEN BEGIN 3
  SAY @14406
  IF ~~ THEN EXTERN ~BELDOT~ 4
END

IF ~InteractingWith("Minsc")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 4
  SAY @14407
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @14542
  IF ~~ THEN EXTERN ~BEDWIN~ s13
END

IF ~~ THEN BEGIN 6
  SAY @14544
  IF ~~ THEN EXTERN ~BEDWIN~ s15
END
