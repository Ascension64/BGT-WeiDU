BEGIN ~brielb~

IF WEIGHT #2 ~InParty("Coran")
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1529
  IF ~~ THEN EXTERN ~CORANJ~ s1
END

IF ~~ THEN BEGIN 1
  SAY @1530
  IF ~~ THEN UNSOLVED_JOURNAL @310194 EXTERN ~CORANJ~ s2
END

IF ~~ THEN BEGIN 2
  SAY @1531
  IF ~~ THEN UNSOLVED_JOURNAL @310195 EXTERN ~CORANJ~ s3
END

IF WEIGHT #3 ~!InParty("Coran")
NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @1532
  IF ~~ THEN REPLY @1544 GOTO 4
  IF ~~ THEN REPLY @1545 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @1533
  IF ~~ THEN REPLY @1546 GOTO 5
  IF ~~ THEN REPLY @1547 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1534
  IF ~~ THEN REPLY @1548 EXIT
  IF ~~ THEN REPLY @1549 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @1535
  IF ~~ THEN UNSOLVED_JOURNAL @310196 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @1536
  IF ~~ THEN DO ~SetGlobal("BrielbaraMove","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310197 EXIT
END

IF WEIGHT #4 ~Global("BrielbaraMove","GLOBAL",1)~ THEN BEGIN 8
  SAY @1537
  IF ~~ THEN REPLY @1550 GOTO 9
  IF ~PartyHasItem("BOOK70")~ THEN REPLY @1551 DO ~TakePartyItem("BOOK70")
AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("BrielbaraMove","GLOBAL",2)
SetGlobal("HelpBrielbara","GLOBAL",1)
EraseJournalEntry(@310194)
EraseJournalEntry(@310195)
EraseJournalEntry(@310196)
EraseJournalEntry(@310197)
EraseJournalEntry(@310198)~ SOLVED_JOURNAL @310199 GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY @1538
  IF ~~ THEN REPLY @1552 DO ~EraseJournalEntry(@310194)
EraseJournalEntry(@310195)
EraseJournalEntry(@310196)
EraseJournalEntry(@310197)
EraseJournalEntry(@310198)~ SOLVED_JOURNAL @311199 GOTO 11
  IF ~~ THEN REPLY @1553 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @1539
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1540
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1541
  IF ~!InParty("Coran")~ THEN REPLY @1554 DO ~GivePartyGold(200)
EscapeArea()~ EXIT
  IF ~!InParty("Coran")~ THEN REPLY @1555 DO ~EscapeArea()~ EXIT
  IF ~InParty("Coran")~ THEN REPLY @956 DO ~GivePartyGold(200)~ GOTO 13
  IF ~InParty("Coran")~ THEN REPLY @957 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @1542
  IF ~~ THEN EXTERN ~CORANJ~ s4
END

IF ~~ THEN BEGIN 14
  SAY @1543
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 15
  SAY @6068
  IF ~~ THEN JOURNAL @310198 EXIT
END

IF WEIGHT #5 ~Global("HelpBrielbara","GLOBAL",1)~ THEN BEGIN 16
  SAY @6069
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @8950
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("HelpBrielbara","GLOBAL",0)~ THEN BEGIN 18
  SAY @17234
  IF ~~ THEN EXIT
END
