BEGIN ~btiax~

IF ~~ THEN BEGIN 0
  SAY @14495
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @14496
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @14497
  IF ~~ THEN EXTERN ~BQUAYL~ 2
END

IF ~~ THEN BEGIN 3
  SAY @14498
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @14499
  IF ~~ THEN DO ~SetGlobal("Tiaxfight","GLOBAL",1)~ EXTERN ~BQUAYL~ 3
END

IF ~~ THEN BEGIN 5
  SAY @14605
  IF ~~ THEN EXTERN ~BQUAYL~ 1
END

IF ~InteractingWith("Quayle")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(6,1)~ THEN BEGIN 6
  SAY @14619
  IF ~~ THEN EXTERN ~BQUAYL~ 8
END

IF ~InteractingWith("Quayle")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(6,2)~ THEN BEGIN 7
  SAY @14620
  IF ~~ THEN EXTERN ~BQUAYL~ 9
END

IF ~~ THEN BEGIN 8
  SAY @14623
  IF ~~ THEN EXIT
END

IF ~InteractingWith("Quayle")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(6,3)~ THEN BEGIN 9
  SAY @14624
  IF ~~ THEN EXTERN ~BQUAYL~ 2
END

IF ~InteractingWith("Branwen")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,1)~ THEN BEGIN 10
  SAY @14625
  IF ~~ THEN EXTERN ~BBRANW~ 3
END

IF ~InteractingWith("Branwen")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(2,2)~ THEN BEGIN 11
  SAY @14626
  IF ~~ THEN EXTERN ~BBRANW~ 4
END

IF ~InteractingWith("Branwen")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 12
  SAY @14627
  IF ~~ THEN EXTERN ~BBRANW~ 6
END

IF ~~ THEN BEGIN 13
  SAY @14630
  IF ~~ THEN EXTERN ~BBRANW~ 2
END

IF ~InteractingWith("Quayle")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(6,4)~ THEN BEGIN 14
  SAY @16369
  IF ~~ THEN EXTERN ~BQUAYL~ 0
END

IF ~InteractingWith("Quayle")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(6,5)~ THEN BEGIN 15
  SAY @16370
  IF ~~ THEN EXTERN ~BQUAYL~ 5
END

IF ~InteractingWith("Quayle")
GlobalLT("ENDOFBG1","GLOBAL",2)
RandomNum(6,6)~ THEN BEGIN 16
  SAY @16371
  IF ~~ THEN EXTERN ~BQUAYL~ 6
END

IF ~InteractingWith("Quayle")
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 17
  SAY @16372
  IF ~~ THEN EXTERN ~BQUAYL~ 7
END
