BEGIN ~housen~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7404
  IF ~PartyGoldGT(99)~ THEN REPLY @7406 GOTO 1
  IF ~PartyGoldGT(199)~ THEN REPLY @7407 GOTO 4
  IF ~~ THEN REPLY @7408 DO ~Shout(1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7405
  IF ~~ THEN DO ~TakePartyGold(100)~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @7409
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 3
  SAY @9256
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7405
  IF ~~ THEN DO ~TakePartyGold(200)~ EXIT
END