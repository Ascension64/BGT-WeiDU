BEGIN ~flamen~

IF WEIGHT #3 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7275
  IF ~~ THEN REPLY @7276 GOTO 1
  IF ~~ THEN REPLY @7277 GOTO 1
  IF ~~ THEN REPLY @7278 DO ~Shout(79)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7274
  IF ~~ THEN DO ~Shout(79)
Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @7279
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9015
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~ReputationGT(LastTalkedToBy,8)~ THEN BEGIN 4
  SAY @10633
  IF ~~ THEN REPLY @10634 DO ~ReputationInc(-1)~ GOTO 1
  IF ~~ THEN REPLY @10635 DO ~ReputationInc(-1)~ GOTO 1
  IF ~~ THEN REPLY @10636 DO ~ReputationInc(-1)
Shout(79)
Enemy()~ EXIT
END
