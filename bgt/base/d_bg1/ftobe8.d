BEGIN ~ftobe8~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 0
  SAY @8185
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 1
  SAY @8186
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 2
  SAY @8187
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @8188
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 4
  SAY @9060
  IF ~~ THEN EXIT
END
