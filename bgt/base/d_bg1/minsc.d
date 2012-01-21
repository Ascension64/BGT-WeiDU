BEGIN ~minsc~

IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
!Dead("Dynaheir")~ THEN BEGIN 0
  SAY @476
  IF ~~ THEN REPLY @489 GOTO 5
  IF ~~ THEN REPLY @490 GOTO 4
  IF ~~ THEN REPLY @491 GOTO 2
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
!Dead("Dynaheir")~ THEN BEGIN 1
  SAY @477
  IF ~~ THEN REPLY @492 GOTO 5
  IF ~~ THEN REPLY @493 GOTO 4
  IF ~~ THEN REPLY @494 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @478
  IF ~~ THEN REPLY @495 GOTO 5
  IF ~~ THEN REPLY @496 GOTO 4
  IF ~~ THEN REPLY @497 GOTO 4
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
!Dead("Dynaheir")~ THEN BEGIN 3
  SAY @479
  IF ~~ THEN DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @480
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @481
  IF ~~ THEN DO ~RevealAreaOnMap("AR4100")
SetGlobalTimer("Minsc","GLOBAL",TEN_DAYS)
JoinParty()~ UNSOLVED_JOURNAL @310062 EXIT
END

IF WEIGHT #0 ~False()~ THEN BEGIN 6
  SAY @482
  IF ~~ THEN UNSOLVED_JOURNAL @310063 EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 7
  SAY @483
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #4 ~Dead("Dynaheir")~ THEN BEGIN 8
  SAY @485
  IF ~~ THEN REPLY @789 DO ~SetGlobal("HelpMinsc","GLOBAL",2)~ GOTO 11
  IF ~~ THEN REPLY @790 DO ~SetGlobal("HelpMinsc","GLOBAL",2)~ GOTO 10
  IF ~~ THEN REPLY @791 DO ~SetGlobal("HelpMinsc","GLOBAL",2)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @486
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @487
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @488
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @4398
  IF ~~ THEN REPLY @4400 EXTERN ~DYNAJ~ s12
  IF ~~ THEN REPLY @4402 DO ~JoinParty()
ActionOverride("Dynaheir",JoinParty())~ EXIT
END

IF WEIGHT #0 ~NumTimesTalkedTo(0)
See("Dynaheir")
InParty("DYNAHEIR")
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 13
  SAY @13937
  IF ~~ THEN DO ~~ EXTERN ~DYNAJ~ s0
END

IF ~~ THEN BEGIN 14
  SAY @13939
  IF ~~ THEN EXTERN ~DYNAJ~ s1
END

IF ~~ THEN BEGIN 15
  SAY @13945
  IF ~~ THEN EXTERN ~DYNAJ~ s3
END

IF ~~ THEN BEGIN 16
  SAY @14364
  IF ~~ THEN DO ~ActionOverride("Dynaheir",Enemy())
LeaveParty()
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @14366
  IF ~~ THEN REPLY @14365 GOTO 18
  IF ~~ THEN REPLY @14367 EXTERN ~DYNAHE~ s28
END

IF ~~ THEN BEGIN 18
  SAY @14368
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @14374
  IF ~~ THEN DO ~ActionOverride("Dynaheir",LeaveParty())
ActionOverride("Dynaheir",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 20
  SAY @16126
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #4 ~False()~ THEN BEGIN 21
  SAY @16127
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~False()~ THEN BEGIN 22
  SAY @16128
  IF ~~ THEN DO ~~ EXIT
END

IF WEIGHT #6 ~False()~ THEN BEGIN 23
  SAY @16129
  IF ~~ THEN EXIT
END
