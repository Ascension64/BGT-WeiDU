BEGIN ~lothan~

IF ~Global("LothanderMove","GLOBAL",3)
Global("HelpLothander","GLOBAL",0)~ THEN BEGIN 0
  SAY @1323
  IF ~~ THEN REPLY @1338 DO ~SetGlobalTimer("PoisonParty","GLOBAL",ONE_DAY)
SetGlobalTimer("PoisonParty2","GLOBAL",TEN_DAYS)~ GOTO 3
  IF ~~ THEN REPLY @1339 DO ~SetGlobalTimer("PoisonParty","GLOBAL",ONE_DAY)
SetGlobalTimer("PoisonParty2","GLOBAL",TEN_DAYS)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1324
  IF ~~ THEN REPLY @1340 UNSOLVED_JOURNAL @310221 GOTO 2
  IF ~~ THEN REPLY @1341 GOTO 4
  IF ~~ THEN REPLY @1342 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @1325
  IF ~~ THEN REPLY @1343 GOTO 4
  IF ~~ THEN REPLY @1344 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @1326
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1327
  IF ~~ THEN REPLY @1345 GOTO 6
  IF ~~ THEN REPLY @1346 GOTO 6
  IF ~~ THEN REPLY @1347 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @1328
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1329
  IF ~~ THEN REPLY @1348 GOTO 5
  IF ~~ THEN REPLY @1349 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1330
  IF ~~ THEN DO ~SetGlobal("HelpLothander","GLOBAL",1)
SetGlobal("LothanderMove","GLOBAL",1)
MoveToPoint([2571.876])~ UNSOLVED_JOURNAL @310222 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1332
  IF ~~ THEN EXIT
END

IF ~Global("LothanderMove","GLOBAL",1)~ THEN BEGIN 9
  SAY @1331
  IF ~~ THEN EXIT
END

IF ~Global("LothanderMove","GLOBAL",9)
Global("HelpLothander","GLOBAL",1)~ THEN BEGIN 10
  SAY @1333
  IF ~~ THEN EXIT
END

IF ~Global("LothanderMove","GLOBAL",4)~ THEN BEGIN 11
  SAY @1334
  IF ~~ THEN DO ~SetGlobal("LothanderMove","GLOBAL",2)
EscapeArea()~ UNSOLVED_JOURNAL @310223 EXIT
END

IF ~Global("LothanderMove","GLOBAL",2)~ THEN BEGIN 12
  SAY @1335
  IF ~~ THEN REPLY @1350 GOTO 13
  IF ~PartyHasItem("SCRLJALA")~ THEN REPLY @1351 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @1336
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1337
  IF ~~ THEN DO ~AddexperienceParty(1500)
TakePartyItem("SCRLJALA")
GiveItem("POTN20",LastTalkedToBy)
SetGlobal("MarekMove","GLOBAL",1)
SetGlobal("LothanderMove","GLOBAL",5)
EscapeArea()~ UNSOLVED_JOURNAL @310224 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @6290
  IF ~~ THEN UNSOLVED_JOURNAL @310224 EXIT
END
