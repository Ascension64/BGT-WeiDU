BEGIN ~gallor~

IF WEIGHT #3 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8593
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @8595
  IF ~~ THEN REPLY @8607 GOTO 2
  IF ~~ THEN REPLY @8608 GOTO 3
  IF ~~ THEN REPLY @8609 GOTO 5
  IF ~Global("HelpCharleston","GLOBAL",0)~ THEN REPLY @8610 GOTO 6
  IF ~Global("HelpCharleston","GLOBAL",1)~ THEN REPLY @8625 GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @8596
  IF ~~ THEN DO ~EscapeArea()~ SOLVED_JOURNAL @310578 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8597
  IF ~~ THEN REPLY @8611 GOTO 2
  IF ~~ THEN REPLY @8612 GOTO 5
  IF ~~ THEN REPLY @8613 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8598
  IF ~~ THEN REPLY @8614 GOTO 2
  IF ~~ THEN REPLY @8615 GOTO 6
  IF ~~ THEN REPLY @8616 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8599
  IF ~~ THEN REPLY @8617 GOTO 2
  IF ~~ THEN REPLY @8618 GOTO 3
  IF ~Global("HelpCharleston","GLOBAL",0)~ THEN REPLY @8619 GOTO 6
  IF ~Global("HelpCharleston","GLOBAL",1)~ THEN REPLY @8626 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @8600
  IF ~~ THEN DO ~SetGlobal("HelpGallor","GLOBAL",1)~ UNSOLVED_JOURNAL @310579 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8601
  IF ~~ THEN DO ~SetGlobal("HelpGallor","GLOBAL",1)~ UNSOLVED_JOURNAL @310579 EXIT
END

IF WEIGHT #4 ~NumDeadLT("CharleDig",6)
!Dead("Charleston")
Global("HelpGallor","GLOBAL",1)~ THEN BEGIN 8
  SAY @8602
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~NumDeadGT("CharleDig",5)
Dead("Charleston")
PartyHasItem("MISC48")
Global("HelpGallor","GLOBAL",1)~ THEN BEGIN 9
  SAY @8603
  IF ~~ THEN DO ~GiveGoldForce(900)
SetGlobal("HelpGallor","GLOBAL",2)
TakePartyItem("MISC48")
ReputationInc(-2)
EraseJournalEntry(@310575)
EraseJournalEntry(@310579)
EscapeArea()~ SOLVED_JOURNAL @310580 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 10
  SAY @9021
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @9022
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~NumDeadGT("CharleDig",5)
Dead("Charleston")
!PartyHasItem("MISC48")
Global("HelpGallor","GLOBAL",1)~ THEN BEGIN 12
  SAY @1186
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY @14377
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @14378
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~False()~ THEN BEGIN 15
  SAY @14379
  IF ~~ THEN EXIT
END
