BEGIN ~fahrin~

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @14914
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @14915
  IF ~~ THEN UNSOLVED_JOURNAL @310141 EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @14916
  IF ~~ THEN UNSOLVED_JOURNAL @310142 EXIT
END

IF WEIGHT #5 ~Global("HelpFahrington","GLOBAL",0)
!PartyHasItem("SCRL12")~ THEN BEGIN 3
  SAY @14917
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("HelpFahrington","GLOBAL",0)
PartyHasItem("SCRL12")~ THEN BEGIN 4
  SAY @14918
  IF ~~ THEN DO ~AddexperienceParty(300)
SetGlobal("HelpFahrington","GLOBAL",1)
EraseJournalEntry(@310141)
EraseJournalEntry(@310142)~ SOLVED_JOURNAL @310143 EXIT
END

IF WEIGHT #0 ~false()~ THEN BEGIN 5
  SAY @14919
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 6
  SAY @14920
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~True()~ THEN BEGIN 7
  SAY @14921
  IF ~~ THEN EXIT
END
