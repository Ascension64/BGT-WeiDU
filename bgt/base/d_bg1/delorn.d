BEGIN ~delorn~

IF WEIGHT #2 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @2863
  IF ~Global("ASSNUTS","GLOBAL",1)~ THEN REPLY @2985 GOTO 1
  IF ~~ THEN REPLY @2986 GOTO 2
  IF ~~ THEN REPLY @2987 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @2988
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("HELSHARA",Enemy())
Enemy()~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @2989
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("HELSHARA",Enemy())
Enemy()~ EXIT
END

IF WEIGHT #3 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN BEGIN 3
  SAY @2990
  IF ~~ THEN REPLY @2992 GOTO 2
  IF ~~ THEN REPLY @2993 GOTO 1
END

IF ~~ THEN BEGIN 4
  SAY @2991
  IF ~~ THEN REPLY @2995 GOTO 2
  IF ~~ THEN REPLY @2996 GOTO 1
END

IF ~~ THEN BEGIN 5
  SAY @2994
  IF ~~ THEN DO ~ActionOverride("ITHMEERA",Enemy())
ActionOverride("HELSHARA",Enemy())
Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 6
  SAY @7093
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9118
  IF ~~ THEN EXIT
END
