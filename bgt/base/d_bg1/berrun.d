BEGIN ~berrun~

IF WEIGHT #0 ~NumTimesTalkedTo(0)
InParty("JAHEIRA")
!Dead("Jaheira")~ THEN BEGIN 0
  SAY @19373
  IF ~~ THEN REPLY @19374 GOTO 4
  IF ~~ THEN REPLY @19393 GOTO 7
  IF ~~ THEN REPLY @19396 GOTO 6
END

IF WEIGHT #1 ~NumTimesTalkedTo(0)
InParty("KHALID")
!Dead("Khalid")~ THEN BEGIN 1
  SAY @19378
  IF ~~ THEN REPLY @19382 GOTO 5
  IF ~~ THEN REPLY @19395 GOTO 7
  IF ~~ THEN REPLY @19397 GOTO 6
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
InParty("XZAR")
!Dead("Xzar")~ THEN BEGIN 2
  SAY @19379
  IF ~~ THEN REPLY @19400 GOTO 8
  IF ~~ THEN REPLY @19401 GOTO 9
  IF ~~ THEN REPLY @19402 GOTO 10
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
InParty("MONTARON")
!Dead("Montaron")~ THEN BEGIN 3
  SAY @19380
  IF ~~ THEN REPLY @19403 GOTO 8
  IF ~~ THEN REPLY @19404 GOTO 9
  IF ~~ THEN REPLY @19405 GOTO 10
END

IF ~~ THEN BEGIN 4
  SAY @19385
  IF ~~ THEN REPLY @19412 GOTO 11
  IF ~~ THEN REPLY @19413 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @19387
  IF ~~ THEN REPLY @19417 GOTO 11
  IF ~~ THEN REPLY @19418 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @19398
  IF ~~ THEN REPLY @19422 GOTO 12
  IF ~~ THEN REPLY @19423 GOTO 13
END

IF ~~ THEN BEGIN 7
  SAY @19399
  IF ~~ THEN REPLY @19426 GOTO 12
  IF ~~ THEN REPLY @19427 GOTO 13
END

IF ~~ THEN BEGIN 8
  SAY @19406
  IF ~~ THEN UNSOLVED_JOURNAL @310066 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @19407
  IF ~~ THEN REPLY @19428 GOTO 12
  IF ~~ THEN REPLY @19429 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @19384
  IF ~~ THEN REPLY @19430 GOTO 12
  IF ~~ THEN REPLY @19431 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @19420
  IF ~~ THEN UNSOLVED_JOURNAL @310066 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @19424
  IF ~~ THEN UNSOLVED_JOURNAL @310066 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @19425
  IF ~~ THEN UNSOLVED_JOURNAL @310066 EXIT
END

IF WEIGHT #8 ~True()~ THEN BEGIN 14
  SAY @19436
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~OR(2)
               PartyHasItem("MISC85")
               PartyHasItem("SCRL2W")~ THEN BEGIN 15
  SAY @19437
  IF ~~ THEN DO ~SetGlobal("A6BerrunReward","GLOBAL",1)
ReputationInc(1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EraseJournalEntry(@310066)
EraseJournalEntry(@310068)
EraseJournalEntry(@310074)
EraseJournalEntry(@310075)
EraseJournalEntry(@310076)
EraseJournalEntry(@310079)
EraseJournalEntry(@310307)
EraseJournalEntry(@310309)
EraseJournalEntry(@310310)
EraseJournalEntry(@310331)
EraseJournalEntry(@310332)
EraseJournalEntry(@310337)
EraseJournalEntry(@310338)
EraseJournalEntry(@310361)
EraseJournalEntry(@310464)
EraseJournalEntry(@310465)
EraseJournalEntry(@310466)
EraseJournalEntry(@310559)
EraseJournalEntry(@310562)
EraseJournalEntry(@310080)
EscapeArea()~ SOLVED_JOURNAL @310067 EXIT
END

IF WEIGHT #6 ~False()
PartyHasItem("SCRL2W")~ THEN BEGIN 16
  SAY @19439
  IF ~~ THEN DO ~SetGlobal("A6BerrunReward","GLOBAL",1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ EXIT
END

IF WEIGHT #7 ~False()
PartyHasItem("SCRL2W")~ THEN BEGIN 17
  SAY @19681
  IF ~~ THEN DO ~SetGlobal("A6BerrunReward","GLOBAL",1)
GivePartyGold(900)
AddexperienceParty(1000)
TakePartyItem("MISC85")
TakePartyItem("SCRL2W")
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @19682
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)~ THEN BEGIN 19
  SAY @751
  IF ~~ THEN UNSOLVED_JOURNAL @310066 EXIT
END
