BEGIN ~varci~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @12615
  IF ~~ THEN DO ~SetGlobalTimer("Varci","GLOBAL",TEN_DAYS)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @12616
  IF ~~ THEN REPLY @12617 GOTO 3
  IF ~~ THEN REPLY @12618 GOTO 5
  IF ~~ THEN REPLY @12619 GOTO 4
  IF ~~ THEN REPLY @12620 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @12621
  IF ~~ THEN REPLY @12635 GOTO 3
  IF ~~ THEN REPLY @12636 GOTO 5
  IF ~~ THEN REPLY @12637 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @12622
  IF ~~ THEN REPLY @12638 GOTO 5
  IF ~~ THEN REPLY @12639 GOTO 4
  IF ~~ THEN REPLY @12640 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @12623
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @12624
  IF ~~ THEN DO ~SetGlobal("HelpVarci","GLOBAL",1)
MoveToPoint([900.717])
OpenDoor("DOOR0617")
DestroySelf()~ EXIT
END

IF ~AreaCheck("AR7600")
!GlobalTimerExpired("Varci","GLOBAL")
Global("TremainMove","GLOBAL",0)
Global("HelpVarci","GLOBAL",0)~ THEN BEGIN 6
  SAY @12627
  IF ~~ THEN REPLY @12641 GOTO 3
  IF ~~ THEN REPLY @12642 GOTO 5
  IF ~~ THEN REPLY @12643 GOTO 4
  IF ~~ THEN REPLY @12644 GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY @12629
  IF ~~ THEN EXTERN ~TREMAI~ 2
END

IF ~~ THEN BEGIN 8
  SAY @12630
  IF ~~ THEN EXTERN ~TREMAI~ 3
END

IF ~~ THEN BEGIN 9
  SAY @12632
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @12633
  IF ~~ THEN EXIT
END

IF ~Global("TremainMove","GLOBAL",3)~ THEN BEGIN 11
  SAY @12634
  IF ~~ THEN DO ~SetGlobal("TremainMove","GLOBAL",4)
GiveGoldForce(2000)
GiveItem("SHLD07",LastTalkedToBy)
AddexperienceParty(5000)
EraseJournalEntry(@310228)
EraseJournalEntry(@310229)
EraseJournalEntry(@310230)
EraseJournalEntry(@310231)
EraseJournalEntry(@310232)~ SOLVED_JOURNAL @310233 EXIT
END
