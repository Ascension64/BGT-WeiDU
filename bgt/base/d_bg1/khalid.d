BEGIN ~khalid~

IF ~~ THEN BEGIN 0
  SAY @305
  IF ~~ THEN EXTERN ~JAHEIR~ 3
END

IF ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
!Dead("Jaheira")~ THEN BEGIN 1
  SAY @306
  IF ~~ THEN DO ~SetGlobal("SpokeToKhalid","GLOBAL",1)~ EXTERN ~JAHEIR~ 2
END

IF ~~ THEN BEGIN 2
  SAY @307
  IF ~~ THEN EXTERN ~JAHEIR~ 4
END

IF ~~ THEN BEGIN 3
  SAY @308
  IF ~~ THEN EXTERN ~JAHEIR~ 5
END

IF ~~ THEN BEGIN 4
  SAY @309
  IF ~~ THEN EXTERN ~JAHEIR~ 3
END

IF ~~ THEN BEGIN 5
  SAY @311
  IF ~~ THEN DO ~LeaveParty()~ EXIT
END

IF WEIGHT #0 ~Global("SpokeToKhalid","GLOBAL",1)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 6
  SAY @15438
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 7
  SAY @16076
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 8
  SAY @16077
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 9
  SAY @16078
  IF ~~ THEN DO ~~ EXIT
END

IF ~False()~ THEN BEGIN 10
  SAY @16079
  IF ~~ THEN DO ~~ EXIT
END