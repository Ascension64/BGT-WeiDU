BEGIN ~gaxir~

IF WEIGHT #0 ~Global("HelpGaxir","GLOBAL",0)
CheckStatLT(LastTalkedToBy,4,LEVEL)~ THEN BEGIN 0
  SAY @15520
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Global("HelpGaxir","GLOBAL",0)
CheckStatLT(LastTalkedToBy,6,LEVEL)~ THEN BEGIN 1
  SAY @15521
  IF ~~ THEN DO ~SetGlobal("HelpGaxir","GLOBAL",1)~ UNSOLVED_JOURNAL @310292 EXIT
END

IF WEIGHT #2 ~Global("HelpGaxir","GLOBAL",0)~ THEN BEGIN 2
  SAY @15522
  IF ~~ THEN DO ~SetGlobal("HelpGaxir","GLOBAL",1)~ UNSOLVED_JOURNAL @310292 EXIT
END

IF WEIGHT #5 ~Global("HelpGaxir","GLOBAL",1)~ THEN BEGIN 3
  SAY @15523
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~PartyHasItem("MISC37")
Global("HelpGaxir","GLOBAL",1)~ THEN BEGIN 4
  SAY @15524
  IF ~~ THEN DO ~SetGlobal("HelpGaxir","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@310292)
TakePartyItem("MISC37")~ SOLVED_JOURNAL @310293 EXIT
END

IF WEIGHT #4 ~false()~ THEN BEGIN 5
  SAY @15525
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 6
  SAY @15526
  IF ~~ THEN EXIT
END
