BEGIN ~bandic~

IF ~NumDeadGT("Bandcap",4)~ THEN BEGIN 0
  SAY @6447
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @6448 DO ~AddexperienceParty(300)~ GOTO 1
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @6449 GOTO 2
  IF ~CheckStatGT(LastTalkedToBy,9,STR)~ THEN REPLY @6450 GOTO 3
  IF ~CheckStatLT(LastTalkedToBy,10,STR)~ THEN REPLY @6451 GOTO 4
  IF ~~ THEN REPLY @6452 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @6455
  IF ~~ THEN DO ~RevealAreaOnMap("AR8700")
SetGlobal("TazokSays","GLOBAL",1)~ GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @6456
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6457
  IF ~~ THEN DO ~RevealAreaOnMap("AR8700")~ GOTO 8
END

IF ~~ THEN BEGIN 4
  SAY @6458
  IF ~~ THEN GOTO 0
END

IF ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 5
  SAY @6459
  IF ~~ THEN DO ~RevealAreaOnMap("AR8700")~ UNSOLVED_JOURNAL @310419 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @6460
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @6461
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @6462
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @6463
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
