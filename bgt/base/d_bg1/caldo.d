BEGIN ~caldo~

IF WEIGHT #1 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @704
  IF ~~ THEN REPLY @5044 GOTO 6
  IF ~~ THEN REPLY @5045 GOTO 5
  IF ~~ THEN REPLY @5046 GOTO 2
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @705
  IF ~~ THEN REPLY @5047 GOTO 6
  IF ~~ THEN REPLY @5048 GOTO 5
  IF ~~ THEN REPLY @5049 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @706
  IF ~~ THEN EXTERN ~KRUMM~ 3
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 3
  SAY @707
  IF ~~ THEN EXTERN ~KRUMM~ 0
END

IF ~~ THEN BEGIN 4
  SAY @708
  IF ~~ THEN DO ~ActionOverride("Krumm",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @709
  IF ~~ THEN EXTERN ~KRUMM~ 1
END

IF ~~ THEN BEGIN 6
  SAY @710
  IF ~~ THEN EXTERN ~KRUMM~ 2
END

IF WEIGHT #0 ~Dead("CDryad")~ THEN BEGIN 7
  SAY @711
  IF ~~ THEN DO ~ActionOverride("Krumm",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @5052
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 9
  SAY @6074
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @11801
  IF ~~ THEN DO ~ActionOverride("KRUMM",EscapeArea())
ActionOverride("CDRYAD",Enemy())
EscapeArea()~ EXIT
END
