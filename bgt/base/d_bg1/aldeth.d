BEGIN ~aldeth~

IF WEIGHT #1 
~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 0
  SAY @939
  IF ~~ THEN REPLY @947 UNSOLVED_JOURNAL @310102 GOTO 4
  IF ~~ THEN REPLY @948 GOTO 3
END

IF WEIGHT #2 
~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 1
  SAY @940
  IF ~~ THEN REPLY @949 DO ~SetGlobal("TalkedToAldeth","GLOBAL",1)~ UNSOLVED_JOURNAL @310102 GOTO 4
  IF ~~ THEN REPLY @950 GOTO 3
END

IF WEIGHT #3 
~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 2
  SAY @941
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @942
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @943
  IF ~~ THEN DO ~SetGlobal("HelpAldeth","GLOBAL",1)
ClearAllActions()
StartCutScene("Aldcut01")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @944
  IF ~~ THEN REPLY @960 GOTO 6
  IF ~~ THEN REPLY @961 EXTERN ~SENIYA~ 1
END

IF ~~ THEN BEGIN 6
  SAY @945
  IF ~~ THEN DO ~EndCutSceneMode()
Enemy()~ EXIT
END

IF WEIGHT #4 ~GlobalGT("KilledDruids","GLOBAL",3)
Global("HelpAldeth","GLOBAL",1)
GlobalLT("Chapter","GLOBAL",6)~ THEN BEGIN 7
  SAY @946
  IF ~~ THEN DO ~SetGlobal("AldethMove","GLOBAL",1)
GiveItem("POTN09",LastTalkedToBy)
AddexperienceParty(2000)
EraseJournalEntry(@310102)
EscapeArea()~ SOLVED_JOURNAL @310104 EXIT
END

IF ~False()~ THEN BEGIN 8
  SAY @1030
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~Global("Chapter","GLOBAL",6)
Global("AldethMove","GLOBAL",1)~ THEN BEGIN 9
  SAY @1031
  IF ~~ THEN REPLY @1054 GOTO 11
  IF ~~ THEN REPLY @1055 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @1033
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1036
  IF ~~ THEN REPLY @1059 GOTO 10
  IF ~~ THEN REPLY @1060 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @1037
  IF ~~ THEN REPLY @1061 GOTO 10
  IF ~~ THEN REPLY @1062 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @1038
  IF ~~ THEN REPLY @1063 UNSOLVED_JOURNAL @310274 GOTO 25
  IF ~~ THEN REPLY @1064 GOTO 10
END

IF WEIGHT #6 
~Global("Chapter","GLOBAL",6)
Global("AldethMove","GLOBAL",2)
GlobalLT("AldethDopple","GLOBAL",6)~ THEN BEGIN 14
  SAY @1040
  IF ~~ THEN REPLY @1067 GOTO 15
  IF ~~ THEN REPLY @1068 GOTO 16
  IF ~Global("ZorlParty","GLOBAL",1)~ THEN REPLY @1069 GOTO 17
END

IF ~~ THEN BEGIN 15
  SAY @1041
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @1042
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY @1043
  IF ~~ THEN REPLY @1070 GOTO 18
  IF ~~ THEN REPLY @1071 GOTO 19
  IF ~~ THEN REPLY @1072 GOTO 20
END

IF ~~ THEN BEGIN 18
  SAY @1044
  IF ~~ THEN DO ~SetGlobal("TalkToBrandilar","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @1045
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @1046
  IF ~~ THEN DO ~SetGlobal("TalkToBrandilar","GLOBAL",1)~ EXIT
END

IF WEIGHT #7 ~Global("Chapter","GLOBAL",8)~ THEN BEGIN 21
  SAY @2123
  IF ~~ THEN REPLY @2126 DO ~CreateCreature("FLAMAL",[281.450],0)
CreateCreature("FFHUNT",[221.425],0)
CreateCreature("FFHUNT",[468.293],0)
CreateCreature("FFHUNT",[503.269],0)~ EXIT
  IF ~~ THEN REPLY @2127 DO ~CreateCreature("FLAMAL",[281.450],0)
CreateCreature("FFHUNT",[221.425],0)
CreateCreature("FFHUNT",[468.293],0)
CreateCreature("FFHUNT",[503.269],0)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @2124
  IF ~~ THEN REPLY @2128 EXIT
  IF ~~ THEN REPLY @2129 EXIT
  IF ~~ THEN REPLY @2130 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @2125
  IF ~~ THEN REPLY @2131 JOURNAL @310211 EXTERN ~FLAMAL~ 1
  IF ~~ THEN REPLY @2132 JOURNAL @310211 EXTERN ~FLAMAL~ 1
END

IF WEIGHT #10 ~Global("HelpAldeth","GLOBAL",0)~ THEN BEGIN 24
  SAY @5737
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25
  SAY @5738
  IF ~~ THEN DO ~SetGlobal("AldethMove","GLOBAL",2)
MoveToPoint([3244.2519])
OpenDoor("DOOR0127")
DestroySelf()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 26
  SAY @5739
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~Global("Chapter","GLOBAL",6)
Global("HelpAldeth","GLOBAL",1)
GlobalGT("AldethDopple","GLOBAL",5)~ THEN BEGIN 27
  SAY @5740
  IF ~~ THEN DO ~GiveItem("SW1H03",LastTalkedToBy)
GivePartyGold(100)
SetGlobal("HelpAldeth","GLOBAL",2)
AddexperienceParty(5000)
EraseJournalEntry(@310274)
EraseJournalEntry(@310275)
EraseJournalEntry(@310276)
EraseJournalEntry(@310277)
EraseJournalEntry(@310340)
EraseJournalEntry(@310341)
EraseJournalEntry(@310399)
EraseJournalEntry(@311278)
EraseJournalEntry(@310278)~ SOLVED_JOURNAL @310279 EXIT
END

IF WEIGHT #9 ~Global("Chapter","GLOBAL",6)
Global("HelpAldeth","GLOBAL",2)~ THEN BEGIN 28
  SAY @5741
  IF ~~ THEN EXIT
END
