BEGIN ~dryad~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @694
  IF ~~ THEN REPLY @5005 GOTO 3
  IF ~~ THEN REPLY @5006 GOTO 9
  IF ~~ THEN REPLY @5007 DO ~SetGlobal("AskedDryad","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @695
  IF ~~ THEN REPLY @5008 GOTO 11
  IF ~~ THEN REPLY @5010 DO ~SetGlobal("AskedDryad","GLOBAL",2)~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @696
  IF ~~ THEN REPLY @5011 GOTO 12
  IF ~~ THEN REPLY @5013 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @697
  IF ~~ THEN UNSOLVED_JOURNAL @310148 GOTO 13
END

IF ~~ THEN BEGIN 4
  SAY @699
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADCDryad","GLOBAL",1)
EraseJournalEntry(@310148)
EscapeArea()~ SOLVED_JOURNAL @310149 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @700
  IF ~~ THEN EXTERN ~CALDO~ 10
END

IF ~Dead("Caldo")
Dead("Krumm")
Global("AskedDryad","GLOBAL",0)~ THEN BEGIN 6
  SAY @701
  IF ~~ THEN DO ~GiveItem("POTN20",LastTalkedToBy)
AddexperienceParty(500)
ReputationInc(1)
EraseJournalEntry(@310148)
EscapeAreaDestroy(5)~ SOLVED_JOURNAL @310150 EXIT
END

IF ~Dead("Caldo")
Dead("Krumm")
Global("AskedDryad","GLOBAL",1)~ THEN BEGIN 7
  SAY @702
  IF ~~ THEN DO ~GiveItem("POTN08",LastTalkedToBy)
AddexperienceParty(500)
ReputationInc(1)
EraseJournalEntry(@310148)
EscapeAreaDestroy(5)~ SOLVED_JOURNAL @310150 EXIT
END

IF ~Dead("Caldo")
Dead("Krumm")
Global("AskedDryad","GLOBAL",2)~ THEN BEGIN 8
  SAY @703
  IF ~~ THEN DO ~GivePartyGold(20)
AddexperienceParty(300)
EraseJournalEntry(@310148)
EscapeAreaDestroy(5)~ SOLVED_JOURNAL @310149 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @5009
  IF ~~ THEN REPLY @5012 GOTO 3
  IF ~~ THEN REPLY @5015 DO ~SetGlobal("AskedDryad","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @5016 GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY @5036
  IF ~~ THEN DO ~SetGlobal("SPRITE_IS_DEADCDryad","GLOBAL",1)
EraseJournalEntry(@310148)
EscapeArea()~ SOLVED_JOURNAL @310149 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @5037
  IF ~~ THEN UNSOLVED_JOURNAL @310148 GOTO 14
END

IF ~~ THEN BEGIN 12
  SAY @5038
  IF ~~ THEN UNSOLVED_JOURNAL @310148 GOTO 15
END

IF ~~ THEN BEGIN 13
  SAY @5039
  IF ~~ THEN DO ~MoveToPoint([3236.2157])~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @5040
  IF ~~ THEN DO ~MoveToPoint([3236.2157])~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @5041
  IF ~~ THEN DO ~MoveToPoint([3236.2157])~ EXIT
END
