BEGIN ~erdane~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22268
  IF ~~ THEN REPLY @22281 GOTO 1
  IF ~~ THEN REPLY @22282 GOTO 2
  IF ~~ THEN REPLY @22283 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @22289
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22290
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @22295
  IF ~~ THEN DO ~StartStore("erdane",LastTalkedToBy())~ EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @22301
  IF ~~ THEN DO ~StartStore("erdane",LastTalkedToBy())~ EXIT
END
