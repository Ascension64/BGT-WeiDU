BEGIN ~nadari~

IF ~Global("NADARIN","GLOBAL",0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 0
  SAY @15228
  IF ~~ THEN EXIT
END

IF ~Global("NADARIN","GLOBAL",0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @15229
  IF ~~ THEN DO ~SetGlobal("NADARIN","GLOBAL",1)~ UNSOLVED_JOURNAL @310290 EXIT
END

IF ~Global("NADARIN","GLOBAL",1)
!Dead("BASILNAD")~ THEN BEGIN 2
  SAY @15230
  IF ~~ THEN EXIT
END

IF ~Global("NADARIN","GLOBAL",1)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Dead("BASILNAD")~ THEN BEGIN 3
  SAY @15231
  IF ~~ THEN DO ~AddexperienceParty(1300)
GiveGoldForce(500)
GiveItem("BOOT02",LastTalkedToBy)
SetGlobal("NADARIN","GLOBAL",2)
EraseJournalEntry(@310290)~ SOLVED_JOURNAL @310291 EXIT
END

IF ~Global("NADARIN","GLOBAL",1)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Dead("BASILNAD")~ THEN BEGIN 4
  SAY @15232
  IF ~~ THEN DO ~AddexperienceParty(1300)
GiveGoldForce(1800)
SetGlobal("NADARIN","GLOBAL",2)
EraseJournalEntry(@310290)~ SOLVED_JOURNAL @310291 EXIT
END

IF ~False()~ THEN BEGIN 5
  SAY @15233
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 6
  SAY @15234
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 7
  SAY @18715
  IF ~~ THEN EXIT
END