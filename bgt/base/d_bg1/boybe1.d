BEGIN ~boybe1~

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 0
  SAY @8189
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 1
  SAY @8190
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8191
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8947
  IF ~~ THEN EXIT
END
