BEGIN ~farmbr~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @143
  IF ~~ THEN REPLY @147 GOTO 6
  IF ~~ THEN REPLY @150 GOTO 3
  IF ~~ THEN REPLY @153 GOTO 4
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @144
  IF ~~ THEN REPLY @148 GOTO 6
  IF ~~ THEN REPLY @151 GOTO 3
  IF ~~ THEN REPLY @154 GOTO 4
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @145
  IF ~~ THEN REPLY @149 GOTO 6
  IF ~~ THEN REPLY @152 GOTO 3
  IF ~~ THEN REPLY @155 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @146
  IF ~~ THEN REPLY @164 GOTO 6
  IF ~~ THEN REPLY @165 GOTO 4
  IF ~~ THEN REPLY @166 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @156
  IF ~~ THEN UNSOLVED_JOURNAL @310081 EXIT
END

IF WEIGHT #5 ~Global("BrunQuest","GLOBAL",0)~ THEN BEGIN 5
  SAY @157
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @158
  IF ~~ THEN DO ~SetGlobal("BrunQuest","GLOBAL",1)~ UNSOLVED_JOURNAL @310082 EXIT
END

IF WEIGHT #6 ~Global("BrunQuest","GLOBAL",1)
Global("FoundNathan","GLOBAL",0)~ THEN BEGIN 7
  SAY @161
  IF ~~ THEN REPLY @159 GOTO 8
  IF ~~ THEN REPLY @160 GOTO 8
  IF ~PartyHasItem("MISC67")~ THEN REPLY @167 DO ~SetGlobal("FoundNathan","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @162
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @163
  IF ~~ THEN DO ~TakePartyItem("MISC67")
AddexperienceParty(500)~ UNSOLVED_JOURNAL @310083 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @173
  IF ~~ THEN DO ~AddexperienceParty(1000)
ReputationInc(1)
EraseJournalEntry(@310083)
EraseJournalEntry(@310082)
EraseJournalEntry(@310081)~ SOLVED_JOURNAL @310084 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @174
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~Global("BrunQuest","GLOBAL",1)
Global("FoundNathan","GLOBAL",1)
Global("GaveAnkheg","GLOBAL",0)~ THEN BEGIN 12
  SAY @175
  IF ~PartyHasItem("RING19")~ THEN REPLY @176 DO ~TakePartyItem("RING19")
SetGlobal("GaveAnkheg","GLOBAL",1)~ GOTO 10
  IF ~PartyGoldGT(99)~ THEN REPLY @177 DO ~TakePartyGold(100)
SetGlobal("GaveAnkheg","GLOBAL",1)~ GOTO 10
  IF ~~ THEN REPLY @178 GOTO 11
  IF ~~ THEN REPLY @179 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 13
  SAY @6146
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14
  SAY @8988
  IF ~~ THEN EXIT
END
