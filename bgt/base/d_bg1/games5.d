BEGIN ~games5~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @19330
  IF ~PartyGoldGT(0)~ THEN REPLY @19331 DO ~TakePartyGold(1)~ GOTO 1
  IF ~PartyGoldGT(1)~ THEN REPLY @19333 DO ~TakePartyGold(2)~ GOTO 2
  IF ~~ THEN REPLY @19342 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @19335
  IF ~~ THEN DO ~GiveGoldForce(2)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19336
  IF ~~ THEN DO ~GiveGoldForce(4)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @19337
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19343
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @19444
  IF ~PartyGoldGT(0)~ THEN REPLY @19445 DO ~TakePartyGold(1)~ GOTO 3
  IF ~PartyGoldGT(1)~ THEN REPLY @19446 DO ~TakePartyGold(2)~ GOTO 3
  IF ~~ THEN REPLY @19447 GOTO 4
END
