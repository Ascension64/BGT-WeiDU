BEGIN ~amnise~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7281
  IF ~PartyGoldGT(99)~ THEN REPLY @7400 GOTO 1
  IF ~PartyGoldGT(199)~ THEN REPLY @7401 GOTO 2
  IF ~~ THEN REPLY @7402 DO ~Shout(99)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7280
  IF ~~ THEN DO ~Shout(99)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7399
  IF ~~ THEN DO ~TakePartyGold(200)
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @7403
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8911
  IF ~~ THEN EXIT
END
