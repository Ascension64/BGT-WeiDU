BEGIN ~borda~

IF ~True()~ THEN BEGIN 0
  SAY @18292
  IF ~~ THEN REPLY @18298 GOTO 1
  IF ~~ THEN REPLY @18299 GOTO 2
  IF ~~ THEN REPLY @18302 GOTO 3
  IF ~~ THEN REPLY @18303 GOTO 4
  IF ~~ THEN REPLY @18304 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @18306
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18308
  IF ~~ THEN DO ~GiveItem("POTN25",LastTalkedToBy)
TakePartyGold(25)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18310
  IF ~~ THEN DO ~GiveItem("SCRL16",LastTalkedToBy)
TakePartyGold(25)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @18311
  IF ~~ THEN DO ~GiveItem("SCRL10",LastTalkedToBy)
TakePartyGold(100)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @18313
  IF ~~ THEN DO ~Enemy()~ EXIT
END
