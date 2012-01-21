BEGIN ~melica~

IF WEIGHT #2 ~!Dead("ChickenWolf")
!See("Thalantyr")~ THEN BEGIN 0
  SAY @5665
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5666
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~Global("TalkedToChicken","GLOBAL",0)
Dead("ChickenWolf")
!See("Thalantyr")~ THEN BEGIN 2
  SAY @5667
  IF ~~ THEN REPLY @5668 DO ~SetGlobal("TalkedToChicken","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @5669 DO ~SetGlobal("TalkedToChicken","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @5670 DO ~SetGlobal("TalkedToChicken","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5671
  IF ~~ THEN REPLY @5674 GOTO 10
  IF ~~ THEN REPLY @5675 GOTO 9
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @5676 GOTO 6
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @5681 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @5672
  IF ~~ THEN REPLY @5682 GOTO 10
  IF ~~ THEN REPLY @5684 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @5673
  IF ~~ THEN REPLY @5683 GOTO 10
  IF ~~ THEN REPLY @5685 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @5677
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("TalkedToChicken","GLOBAL",1)
Global("TransformedChicken","GLOBAL",0)
!See("Thalantyr")~ THEN BEGIN 7
  SAY @5678
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("TalkedToChicken","GLOBAL",1)
Global("TransformedChicken","GLOBAL",0)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
Global("LeftChicken","GLOBAL",0)
!See("Thalantyr")~ THEN BEGIN 8
  SAY @5679
  IF ~~ THEN REPLY @5686 GOTO 10
  IF ~~ THEN REPLY @5687 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @5680
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @5688
  IF ~~ THEN REPLY @5689 GOTO 11
  IF ~~ THEN REPLY @5691 GOTO 9
  IF ~~ THEN REPLY @5695 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @5690
  IF ~~ THEN REPLY @5692 GOTO 12
  IF ~~ THEN REPLY @5693 GOTO 15
  IF ~~ THEN REPLY @5694 GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @5696
  IF ~~ THEN REPLY @5697 GOTO 15
  IF ~~ THEN REPLY @5698 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @5699
  IF ~~ THEN REPLY @5700 GOTO 16
  IF ~~ THEN REPLY @5701 GOTO 14
  IF ~~ THEN REPLY @5702 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @5703
  IF ~~ THEN REPLY @5704 GOTO 16
  IF ~~ THEN REPLY @5705 GOTO 9
END

IF ~~ THEN BEGIN 15
  SAY @5706
  IF ~~ THEN REPLY @5707 GOTO 16
  IF ~~ THEN REPLY @5708 GOTO 14
  IF ~~ THEN REPLY @5709 GOTO 9
END

IF ~~ THEN BEGIN 16
  SAY @5710
  IF ~~ THEN DO ~SetGlobal("ThalantyrRumours","GLOBAL",1)
GiveItemCreate("MISC49",LastTalkedToBy,0,0,0)
DestroySelf()~ UNSOLVED_JOURNAL @310452 EXIT
END

IF ~Global("HelpThalantyr","GLOBAL",0)
Global("FoundChicken","GLOBAL",1)~ THEN BEGIN 17
  SAY @6179
  IF ~~ THEN DO ~SetGlobal("FoundChicken","GLOBAL",2)~ EXTERN ~THALAN~ 16
END

IF ~~ THEN BEGIN 18
  SAY @6184
  IF ~~ THEN EXTERN ~THALAN~ 18
END

IF ~~ THEN BEGIN 19
  SAY @6186
  IF ~~ THEN EXTERN ~THALAN~ 19
END

IF ~~ THEN BEGIN 20
  SAY @6188
  IF ~~ THEN EXTERN ~THALAN~ 20
END

IF ~~ THEN BEGIN 21
  SAY @6512
  IF ~~ THEN EXTERN ~THALAN~ 21
END

IF ~~ THEN BEGIN 22
  SAY @6526
  IF ~~ THEN EXTERN ~THALAN~ 25
END

IF WEIGHT #5 ~Global("TransformedChicken","GLOBAL",1)
See("Thalantyr")~ THEN BEGIN 23
  SAY @6531
  IF ~~ THEN DO ~SetGlobal("TransformedChicken","GLOBAL",2)~ EXTERN ~THALAN~ 29
END

IF ~~ THEN BEGIN 24
  SAY @6533
  IF ~~ THEN EXTERN ~THALAN~ 31
END

IF ~~ THEN BEGIN 25
  SAY @8782
  IF ~~ THEN DO ~EraseJournalEntry(@310451)
EraseJournalEntry(@310452)
EraseJournalEntry(@310453)
SetPlayerSound(Myself,11083,INITIAL_MEETING)
SetPlayerSound(Myself,-1,BATTLE_CRY1)
SetPlayerSound(Myself,12566,DAMAGE)
SetPlayerSound(Myself,12567,DYING)
SetPlayerSound(Myself,11083,SELECT_COMMON1)
SetPlayerSound(Myself,-1,PICKED_POCKET)
SetPlayerSound(Myself,-1,EXISTANCE1)
AddexperienceParty(2000)
ReputationInc(1)~ SOLVED_JOURNAL @310574 EXTERN ~THALAN~ 32
END

IF WEIGHT #7 ~Global("TransformedChicken","GLOBAL",2)~ THEN BEGIN 26
  SAY @8955
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
Global("TransformedChicken","GLOBAL",1)~ THEN BEGIN 27
  SAY @8956
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~~ THEN BEGIN 28
  SAY @8957
  IF ~~ THEN EXIT
END
