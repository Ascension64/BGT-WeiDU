BEGIN ~flamgg~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @965
  IF ~~ THEN REPLY @967 DO ~TakePartyGold(6)~ GOTO 1
  IF ~~ THEN REPLY @968 DO ~TakePartyGold(6)~ GOTO 1
  IF ~~ THEN REPLY @969 DO ~TakePartyGold(6)~ GOTO 1
  IF ~~ THEN REPLY @970 DO ~TakePartyGold(6)~ GOTO 2
  IF ~~ THEN REPLY @19352 DO ~TakePartyGold(6)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @966
  IF ~~ THEN DO ~CreateCreature("SCAR",[1212.1150],5)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @971
  IF ~~ THEN DO ~CreateCreature("SCAR",[1212.1150],5)~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @6930
  IF ~~ THEN JOURNAL @310351 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9006
  IF ~~ THEN EXIT
END
