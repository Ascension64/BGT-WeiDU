BEGIN ~zargal~

IF ~True()~ THEN BEGIN 0
  SAY @18387
  IF ~~ THEN REPLY @18389 GOTO 1
  IF ~~ THEN REPLY @18390 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18391
  IF ~~ THEN DO ~ActionOverride("GELTIK",Enemy())
ActionOverride("MALKAX",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18392
  IF ~~ THEN REPLY @18393 GOTO 1
  IF ~~ THEN REPLY @18394 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @18395
  IF ~~ THEN DO ~TakePartyGold(100000)
EscapeArea()~ EXIT
END
