BEGIN ~sharte~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @498
  IF ~~ THEN REPLY @509 GOTO 6
  IF ~~ THEN REPLY @510 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @499
  IF ~~ THEN REPLY @511 GOTO 6
  IF ~InParty([0.0.0.0.0.FEMALE])
InParty([0.0.0.0.0.MALE])~ THEN REPLY @512 GOTO 2
  IF ~!InParty([0.0.0.0.0.FEMALE])~ THEN REPLY @515 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @500
  IF ~~ THEN DO ~ChangeAIScript("SHARTEL2",OVERRIDE)
CreateItem("SHARTHP1",0,0,0)
ActionOverride(StrongestOfMale,Attack("Sharteel"))
FillSlot(0)~ EXIT //SLOT_AMULET
END

IF ~~ THEN BEGIN 3
  SAY @501
  IF ~~ THEN DO ~ChangeAIScript("SHARTEL2",OVERRIDE)
CreateItem("SHARTHP1",0,0,0)
ActionOverride(StrongestOfMale,Attack("Sharteel"))
FillSlot(0)~ EXIT //SLOT_AMULET
END

IF WEIGHT #7 ~Global("BeatSharteel","GLOBAL",3)~ THEN BEGIN 4
  SAY @503
  IF ~~ THEN REPLY @513 DO ~ChangeAIScript("SHARTEEL",OVERRIDE)~ GOTO 6
  IF ~InParty([0.0.0.0.0.FEMALE])~ THEN REPLY @514 GOTO 2
  IF ~!InParty([0.0.0.0.0.FEMALE])~ THEN REPLY @516 GOTO 3
END

IF WEIGHT #1 ~Global("BeatSharteel","GLOBAL",2)~ THEN BEGIN 5
  SAY @505
  IF ~~ THEN REPLY @517 DO ~DestroyItem("SHARTHP1")
AddexperienceParty(300)
ChangeAIScript("SHARTEEL",OVERRIDE)
SetGlobal("BeatSharteel","GLOBAL",5)
EscapeArea()~ GOTO 7
  IF ~~ THEN REPLY @518 DO ~DestroyItem("SHARTHP1")
ChangeAIScript("SHARTEEL",OVERRIDE)~ GOTO 8
END

IF ~~ THEN BEGIN 6
  SAY @506
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @507
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @508
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 9
  SAY @2147
  IF ~~ THEN EXTERN ~ANGELO~ 5
END

IF ~~ THEN BEGIN 10
  SAY @2148
  IF ~~ THEN JOURNAL @310794 EXTERN ~ANGELO~ 6
END

IF ~~ THEN BEGIN 11
  SAY @6391
  IF ~~ THEN DO ~ChangeAIScript("",OVERRIDE)
Enemy()~ EXIT
END

IF WEIGHT #3 ~Global("BeatSharteel","GLOBAL",1)~ THEN BEGIN 12
  SAY @13960
  IF ~~ THEN DO ~DestroyItem("SHARTHP1")
TakePartyGold(20)
ChangeAIScript("SHARTEEL",OVERRIDE)
SetGlobal("BeatSharteel","GLOBAL",3)~ EXIT
END

IF WEIGHT #4 ~HPPercentLT(StrongestOf,50)~ THEN BEGIN 13
  SAY @13961
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~false()~ THEN BEGIN 14
  SAY @13753
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @13754
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @13755
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("Sharhit","GLOBAL",1)~ THEN BEGIN 17
  SAY @10638
  IF ~~ THEN DO ~DestroyItem("SHARTHP1")
ChangeAIScript("",OVERRIDE)
Enemy()~ EXIT
END
