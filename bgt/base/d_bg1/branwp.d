BEGIN ~branwp~

IF WEIGHT #3 ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @15448
  IF ~~ THEN REPLY @15449 GOTO 1
  IF ~~ THEN REPLY @15450 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @15451
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @15452
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~HappinessLT(Myself,0)
GlobalLT("ENDOFBG1","GLOBAL",2)
Global("IWasKickedOut","LOCALS",0)~ THEN BEGIN 3
  SAY @15425
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #1 ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 4
  SAY @15426
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF WEIGHT #2 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 5
  SAY @16631
  IF ~~ THEN EXIT
END
