BEGIN ~jalant~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @1372
  IF ~~ THEN REPLY @1385 GOTO 2
  IF ~Global("HelpLothander","GLOBAL",1)
Global("ReturnedBook","GLOBAL",0)~ THEN REPLY @1386 GOTO 3
  IF ~Global("HelpLothander","GLOBAL",1)
Global("ReturnedBook","GLOBAL",0)~ THEN REPLY @1387 GOTO 4
  IF ~Global("BOYBODY","GLOBAL",0)
Global("HelpTremain","GLOBAL",1)~ THEN REPLY @16579 GOTO 13
END

IF ~~ THEN BEGIN 1
  SAY @1373
  IF ~~ THEN REPLY @1388 GOTO 2
  IF ~~ THEN REPLY @1389 GOTO 3
  IF ~~ THEN REPLY @1390 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @1374
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1375
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @1376
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @1377
  IF ~~ THEN REPLY @1391 EXIT
  IF ~~ THEN REPLY @1392 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1378
  IF ~~ THEN DO ~SetGlobal("HelpJalantha","GLOBAL",1)~ UNSOLVED_JOURNAL @310236 EXIT
END

IF WEIGHT #0 ~Global("HelpJalantha","GLOBAL",1)~ THEN BEGIN 7
  SAY @1379
  IF ~CheckStatGT(LastTalkedToBy(Myself),14,CHR)~ THEN REPLY @1393 DO ~GiveItem("SCRLJALA",LastTalkedToBy)~ GOTO 9
  IF ~PartyHasItem("BOOK08")~ THEN REPLY @1394 GOTO 10
  IF ~~ THEN REPLY @1395 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @1380
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1381
  IF ~PartyHasItem("BOOK08")~ THEN REPLY @1396 DO ~TakePartyItem("BOOK08")~ GOTO 12
  IF ~~ THEN REPLY @1397 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @1382
  IF ~~ THEN DO ~TakePartyItem("BOOK08")
GiveItem("SCRLJALA",LastTalkedToBy)
SetGlobal("ReturnedBook","GLOBAL",1)
SetGlobal("HelpJalantha","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1383
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1384
  IF ~~ THEN DO ~SetGlobal("ReturnedBook","GLOBAL",1)
SetGlobal("HelpJalantha","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @16580
  IF ~~ THEN REPLY @16581 EXIT
  IF ~PartyGoldGT(1999)~ THEN REPLY @16582 GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @16583
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @16584
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItem("MISC54",LastTalkedToBy)
TakePartyGold(2000)~ EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 16
  SAY @17323
  IF ~~ THEN EXIT
END
