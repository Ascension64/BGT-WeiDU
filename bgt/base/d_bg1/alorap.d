BEGIN ~alorap~

IF ~Global("IWasKickedOut","LOCALS",1)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 0
  SAY @15421
  IF ~~ THEN REPLY @15422 GOTO 2
  IF ~~ THEN REPLY @15445 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @15446
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~Global("IWasKickedOut","LOCALS",0)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 2
  SAY @15447
  IF ~~ THEN DO ~SetGlobal("IWasKickedOut","LOCALS",1)~ EXIT
END

IF ~False()~ THEN BEGIN 3
  SAY @15423
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @15424
  IF ~~ THEN DO ~~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)
~ THEN BEGIN 5
  SAY @16629
  IF ~~ THEN EXIT
END
