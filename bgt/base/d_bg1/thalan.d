BEGIN ~thalan~

IF WEIGHT #3 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5660
  IF ~~ THEN DO ~SetGlobal("Golem","GLOBAL",1)~ EXIT
END

IF WEIGHT #9 ~Global("ThalantyrRumours","GLOBAL",0)~ THEN BEGIN 1
  SAY @5661
  IF ~~ THEN REPLY @5662 DO ~SetGlobal("ThalantyrRumours","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @5663 GOTO 3
  IF ~~ THEN REPLY @5664 GOTO 4
  IF ~PartyHasItem("MISC49")~ THEN REPLY @6154 DO ~TakePartyItem("MISC49")
DestroyItem("MISC49")
CreateCreature("MELICA",[286.398],0)
ActionOverride("Melicamp",SetNumTimesTalkedTo(2))~ GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @5726
  IF ~~ THEN REPLY @15295 DO ~StartStore("highhedg",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15296 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6137
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6151
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~NumTimesTalkedTo(2)
!PartyHasItem("MISC49")~ THEN BEGIN 5
  SAY @6152
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @6153
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @6155
  IF ~~ THEN REPLY @6156 GOTO 9
  IF ~~ THEN REPLY @6157 GOTO 8
  IF ~~ THEN REPLY @6162 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @6158
  IF ~~ THEN REPLY @6159 GOTO 9
  IF ~~ THEN REPLY @6161 GOTO 11
  IF ~~ THEN REPLY @6165 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @6160
  IF ~~ THEN DO ~SetGlobal("FoundChicken","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @6163
  IF ~~ THEN DO ~ActionOverride("Melicamp",DestroySelf())
EraseJournalEntry(@310451)
EraseJournalEntry(@310452)
EraseJournalEntry(@310453)~ SOLVED_JOURNAL @310805 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @6164
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @6166 GOTO 13
  IF ~~ THEN REPLY @6167 GOTO 10
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @6168 GOTO 14
  IF ~~ THEN REPLY @6169 GOTO 12
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @6173 GOTO 15
END

IF ~~ THEN BEGIN 12
  SAY @6170
  IF ~~ THEN DO ~ActionOverride("Melicamp",DestroySelf())
EraseJournalEntry(@310451)
EraseJournalEntry(@310452)
EraseJournalEntry(@310453)~ SOLVED_JOURNAL @310805 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @6171
  IF ~~ THEN REPLY @6175 GOTO 9
  IF ~~ THEN REPLY @6176 GOTO 10
END

IF ~~ THEN BEGIN 14
  SAY @6172
  IF ~~ THEN DO ~ActionOverride("Melicamp",DestroySelf())
EraseJournalEntry(@310451)
EraseJournalEntry(@310452)
EraseJournalEntry(@310453)~ SOLVED_JOURNAL @310805 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @6174
  IF ~~ THEN REPLY @6177 GOTO 9
  IF ~~ THEN REPLY @6178 GOTO 10
END

IF ~~ THEN BEGIN 16
  SAY @6180
  IF ~~ THEN REPLY @6181 GOTO 10
  IF ~~ THEN REPLY @6182 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @6183
  IF ~~ THEN EXTERN ~MELICA~ 18
END

IF ~~ THEN BEGIN 18
  SAY @6185
  IF ~~ THEN EXTERN ~MELICA~ 19
END

IF ~~ THEN BEGIN 19
  SAY @6187
  IF ~~ THEN EXTERN ~MELICA~ 20
END

IF ~~ THEN BEGIN 20
  SAY @6511
  IF ~~ THEN EXTERN ~MELICA~ 21
END

IF ~~ THEN BEGIN 21
  SAY @6513
  IF ~~ THEN REPLY @6514 GOTO 24
  IF ~~ THEN REPLY @6515 GOTO 23
  IF ~~ THEN REPLY @6516 GOTO 10
  IF ~~ THEN REPLY @6517 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @6518
  IF ~~ THEN REPLY @6519 GOTO 24
  IF ~~ THEN REPLY @6520 GOTO 10
  IF ~~ THEN REPLY @6521 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @6522
  IF ~~ THEN REPLY @6523 GOTO 10
  IF ~~ THEN REPLY @6524 GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @6525
  IF ~~ THEN EXTERN ~MELICA~ 22
END

IF ~~ THEN BEGIN 25
  SAY @6527
  IF ~~ THEN DO ~SetGlobal("HelpThalantyr","GLOBAL",1)~ UNSOLVED_JOURNAL @310453 EXIT
END

IF WEIGHT #4 ~Global("HelpThalantyr","GLOBAL",1)
!PartyHasItem("MISC50")
Global("TransformedChicken","GLOBAL",0)
See("Melicamp")
!Dead("Melicamp")~ THEN BEGIN 26
  SAY @6528
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~Global("HelpThalantyr","GLOBAL",1)
PartyHasItem("MISC50")
Global("TransformedChicken","GLOBAL",0)
See("Melicamp")
!Dead("Melicamp")~ THEN BEGIN 27
  SAY @6529
  IF ~~ THEN DO ~TakePartyItem("MISC50")
DestroyItem("MISC50")
SetGlobal("TransformedChicken","GLOBAL",1)
SendTrigger("Thalantyr",1)~ EXIT
END

IF WEIGHT #6 ~Dead("Melicamp")
Global("TransformedChicken","GLOBAL",1)~ THEN BEGIN 28
  SAY @6530
  IF ~~ THEN DO ~SetGlobal("TransformedChicken","GLOBAL",2)
  EraseJournalEntry(@310451)
EraseJournalEntry(@310452)
EraseJournalEntry(@310453)~ SOLVED_JOURNAL @310454 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @6532
  IF ~~ THEN EXTERN ~MELICA~ 24
END

IF WEIGHT #7 ~!Dead("Melicamp")
Global("TransformedChicken","GLOBAL",1)~ THEN BEGIN 30
  SAY @8780
  IF ~~ THEN EXTERN ~MELICA~ 23
END

IF ~~ THEN BEGIN 31
  SAY @8781
  IF ~~ THEN EXTERN ~MELICA~ 25
END

IF ~~ THEN BEGIN 32
  SAY @8783
  IF ~~ THEN DO ~EraseJournalEntry(@310451)
EraseJournalEntry(@310452)
EraseJournalEntry(@310453)~ SOLVED_JOURNAL @310455 EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 33
  SAY @8958
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34
  SAY @8959
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 35
  SAY @5661
  IF ~~ THEN REPLY @15295 DO ~StartStore("highhedg",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @5663 GOTO 3
  IF ~~ THEN REPLY @5664 GOTO 4
  IF ~PartyHasItem("MISC49")~ THEN REPLY @6154 DO ~TakePartyItem("MISC49")
DestroyItem("MISC49")
CreateCreature("MELICA",[286.398],0)
ActionOverride("Melicamp",SetNumTimesTalkedTo(2))~ GOTO 7
END