BEGIN ~farthi~

IF WEIGHT #0 ~Global("Kaishas1","GLOBAL",0)
Global("FarDoll","GLOBAL",0)
Global("FarTalk","GLOBAL",0)~ THEN BEGIN 0
  SAY @21079
  IF ~~ THEN UNSOLVED_JOURNAL @310658 EXIT
END

IF WEIGHT #7 ~Global("Kaishas1","GLOBAL",1)
Global("FarDoll","GLOBAL",0)
Global("FarTalk","GLOBAL",0)
Global("GotDoll","GLOBAL",0)~ THEN BEGIN 1
  SAY @21080
  IF ~~ THEN REPLY @21089 DO ~SetGlobal("FarTalk","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @21090 DO ~SetGlobal("FarTalk","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @21091 DO ~SetGlobal("FarTalk","GLOBAL",2)~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @21081
  IF ~~ THEN REPLY @21092 DO ~SetGlobal("FarDoll","GLOBAL",1)~ UNSOLVED_JOURNAL @310685 GOTO 5
  IF ~~ THEN REPLY @21093 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @21082
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21083
  IF ~~ THEN REPLY @21094 GOTO 7
  IF ~~ THEN REPLY @21098 GOTO 7
END

IF ~~ THEN BEGIN 5
  SAY @21084
  IF ~~ THEN REPLY @22190 DO ~SetGlobal("FarDoll","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @21085
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21086
  IF ~~ THEN DO ~SetGlobal("FarTalk","GLOBAL",2)~ EXIT
END

IF WEIGHT #8 ~Global("FarTalk","GLOBAL",2)
Global("FarDoll","GLOBAL",0)
!Dead("karoug")~ THEN BEGIN 8
  SAY @21087
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~PartyHasItem("misc1g")~ THEN BEGIN 9
  SAY @21099
  IF ~~ THEN DO ~SetGlobal("GotDoll","GLOBAL",1)
TakePartyItem("misc1g")
EraseJournalEntry(@310685)
AddexperienceParty(1400)~ SOLVED_JOURNAL @310686 EXIT
END

IF WEIGHT #2 ~Dead("karoug")
Global("GotDoll","GLOBAL",1)~ THEN BEGIN 10
  SAY @21103
  IF ~~ THEN SOLVED_JOURNAL @310687 EXIT
END

IF WEIGHT #3 ~Dead("karoug")
!PartyHasItem("misc1g")~ THEN BEGIN 11
  SAY @22191
  IF ~~ THEN SOLVED_JOURNAL @310687 EXIT
END

IF WEIGHT #4 ~Global("GotDoll","GLOBAL",1)
!Dead("karoug")~ THEN BEGIN 12
  SAY @21088
  IF ~~ THEN DO ~EraseJournalEntry(@310685)~ SOLVED_JOURNAL @310686 EXIT
END

IF WEIGHT #5 ~Global("FarDoll","GLOBAL",1)
!Dead("karoug")~ THEN BEGIN 13
  SAY @22192
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("FarTalk","GLOBAL",1)~ THEN BEGIN 14
  SAY @23307
  IF ~~ THEN REPLY @23308 DO ~SetGlobal("FarDoll","GLOBAL",1)~ UNSOLVED_JOURNAL @310685 GOTO 5
  IF ~~ THEN REPLY @23309 GOTO 6
END
