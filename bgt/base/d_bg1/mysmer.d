BEGIN ~mysmer~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @716
  IF ~PartyGoldGT(99)~ THEN REPLY @5050 DO ~SetGlobal("BoughtPotions","GLOBAL",1)
GiveItem("POTN16",LastTalkedToBy)
TakePartyGold(50)~ JOURNAL @310438 GOTO 2
  IF ~~ THEN REPLY @5051 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @717
  IF ~PartyGoldGT(39)~ THEN REPLY @5055 DO ~SetGlobal("BoughtPotions","GLOBAL",1)
GiveItem("POTN15",LastTalkedToBy)
TakePartyGold(40)~ JOURNAL @310439 GOTO 3
  IF ~~ THEN REPLY @5056 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @718
  IF ~PartyGoldGT(49)~ THEN REPLY @5057 DO ~SetGlobal("BoughtPotions","GLOBAL",2)
GiveItem("POTN15",LastTalkedToBy)
TakePartyGold(50)~ JOURNAL @310439 GOTO 3
  IF ~~ THEN REPLY @5058 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @719
  IF ~~ THEN JOURNAL @310476 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @720
  IF ~~ THEN JOURNAL @310476 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @721
  IF ~~ THEN JOURNAL @310477 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @722
  IF ~~ THEN EXIT
END

IF ~Global("BoughtPotions","GLOBAL",0)~ THEN BEGIN 7
  SAY @5060
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 8
  SAY @9152
  IF ~~ THEN EXIT
END
