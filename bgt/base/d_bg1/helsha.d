BEGIN ~helsha~

IF ~~ THEN BEGIN 0
  SAY @3016
  IF ~~ THEN EXTERN ~ITHMEE~ 1
END

IF ~~ THEN BEGIN 1
  SAY @3017
  IF ~~ THEN EXTERN ~ITHMEE~ 2
END

IF ~~ THEN BEGIN 2
  SAY @3018
  IF ~~ THEN EXTERN ~ITHMEE~ 3
END

IF ~~ THEN BEGIN 3
  SAY @3019
  IF ~~ THEN REPLY @3020 GOTO 5
  IF ~~ THEN REPLY @3021 GOTO 4
  IF ~~ THEN REPLY @3022 EXTERN ~ITHMEE~ 5
END

IF ~~ THEN BEGIN 4
  SAY @3023
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("DELORNA",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @3024
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("DELORNA",Enemy())
Enemy()~ EXTERN ~ITHMEE~ 4
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 6
  SAY @7094
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9117
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
!Dead("Ithmeera")~ THEN BEGIN 8
  SAY @2805
  IF ~~ THEN DO ~ActionOverride("Ithmeera",SetNumTimesTalkedTo(1))~ EXTERN ~ITHMEE~ 0
END
