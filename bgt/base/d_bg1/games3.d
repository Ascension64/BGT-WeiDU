BEGIN ~games3~

IF ~RandomNum(38,1)~ THEN BEGIN 0
  SAY @19305
  IF ~PartyGoldGT(0)~ THEN REPLY @19306 DO ~TakePartyGold(1)~ GOTO 1
  IF ~PartyGoldGT(1)~ THEN REPLY @19308 DO ~TakePartyGold(2)~ GOTO 2
  IF ~PartyGoldGT(4)~ THEN REPLY @19310 DO ~TakePartyGold(5)~ GOTO 3
  IF ~PartyGoldGT(9)~ THEN REPLY @19312 DO ~TakePartyGold(10)~ GOTO 4
  IF ~~ THEN REPLY @19339 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @19314
  IF ~~ THEN DO ~GiveGoldForce(36)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19315
  IF ~~ THEN DO ~GiveGoldForce(72)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @19316
  IF ~~ THEN DO ~GiveGoldForce(180)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19317
  IF ~~ THEN DO ~GiveGoldForce(360)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @19318
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @19338
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 7
  SAY @19408
  IF ~PartyGoldGT(0)~ THEN REPLY @19307 DO ~TakePartyGold(1)~ GOTO 5
  IF ~PartyGoldGT(1)~ THEN REPLY @19309 DO ~TakePartyGold(2)~ GOTO 5
  IF ~PartyGoldGT(4)~ THEN REPLY @19311 DO ~TakePartyGold(5)~ GOTO 5
  IF ~PartyGoldGT(9)~ THEN REPLY @19313 DO ~TakePartyGold(10)~ GOTO 5
  IF ~~ THEN REPLY @19440 GOTO 6
END
