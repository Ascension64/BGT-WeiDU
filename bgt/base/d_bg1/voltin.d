BEGIN ~voltin~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15329
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @15332
  IF ~~ THEN UNSOLVED_JOURNAL @310164 EXIT
END

IF WEIGHT #3 ~Global("HelpVoltine","GLOBAL",0)~ THEN BEGIN 2
  SAY @15334
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~Dead("Gervisse")
Global("HelpVoltine","GLOBAL",0)~ THEN BEGIN 3
  SAY @15335
  IF ~~ THEN DO ~GiveItem("WAND09",LastTalkedToBy)
SetGlobal("HelpVoltine","GLOBAL",1)
EraseJournalEntry(@310162)
EraseJournalEntry(@310163)
EraseJournalEntry(@310164)~ SOLVED_JOURNAL @310165 EXIT
END

IF WEIGHT #2 ~false()~ THEN BEGIN 4
  SAY @15336
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 5
  SAY @15337
  IF ~~ THEN EXIT
END
