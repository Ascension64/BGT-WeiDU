BEGIN ~games4~

IF ~RandomNum(24,1)~ THEN BEGIN 0
  SAY @19319
  IF ~PartyGoldGT(0)~ THEN REPLY @19320 DO ~TakePartyGold(1)~ GOTO 1
  IF ~PartyGoldGT(1)~ THEN REPLY @19322 DO ~TakePartyGold(2)~ GOTO 2
  IF ~PartyGoldGT(4)~ THEN REPLY @19324 DO ~TakePartyGold(5)~ GOTO 3
  IF ~~ THEN REPLY @19340 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @19326
  IF ~~ THEN DO ~GiveGoldForce(20)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19327
  IF ~~ THEN DO ~GiveGoldForce(40)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @19328
  IF ~~ THEN DO ~GiveGoldForce(100)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19329
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @19341
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @19442
  IF ~PartyGoldGT(0)~ THEN REPLY @19321 DO ~TakePartyGold(1)~ GOTO 4
  IF ~PartyGoldGT(1)~ THEN REPLY @19323 DO ~TakePartyGold(2)~ GOTO 4
  IF ~PartyGoldGT(4)~ THEN REPLY @19325 DO ~TakePartyGold(5)~ GOTO 4
  IF ~~ THEN REPLY @19443 GOTO 5
END
