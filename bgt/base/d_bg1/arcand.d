BEGIN ~arcand~

IF WEIGHT #0 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15169
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("HelpArcand","GLOBAL",0)~ THEN BEGIN 1
  SAY @15170
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @15171
  IF ~~ THEN UNSOLVED_JOURNAL @310311 EXIT
END

IF WEIGHT #2 ~PartyHasItem("RING23")
Global("HelpArcand","GLOBAL",0)~ THEN BEGIN 3
  SAY @15172
  IF ~~ THEN DO ~AddexperienceParty(300)
GiveItem("POTN13",LastTalkedToBy)
TakePartyItem("RING23")
SetGlobal("HelpArcand","GLOBAL",1)
EraseJournalEntry(@310311)~ SOLVED_JOURNAL @310312 EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 4
  SAY @15173
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~True()~ THEN BEGIN 5
  SAY @15174
  IF ~~ THEN EXIT
END
