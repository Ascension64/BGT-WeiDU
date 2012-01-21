BEGIN ~menda1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @20781
  IF ~~ THEN REPLY @20782 DO ~SetGlobal("TalkedToMendas","GLOBAL",1)
SetGlobal("MetMendas","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @20783 DO ~SetGlobal("TalkedToMendas","GLOBAL",1)~ GOTO 22
  IF ~~ THEN REPLY @20784 DO ~SetGlobal("TalkedToMendas","GLOBAL",1)~ GOTO 16
END

IF ~Global("TalkedToMendas","GLOBAL",1)~ THEN BEGIN 1
  SAY @20785
  IF ~~ THEN REPLY @20786 GOTO 2
  IF ~~ THEN REPLY @20787 GOTO 22
END

IF ~~ THEN BEGIN 2
  SAY @20788
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @20789 GOTO 5
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @20790 GOTO 7
  IF ~~ THEN REPLY @20791 GOTO 5
  IF ~~ THEN REPLY @20792 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @20793
  IF ~~ THEN REPLY @20794 GOTO 4
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @20795 GOTO 7
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @20796 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @20797
  IF ~~ THEN REPLY @20798 GOTO 5
  IF ~~ THEN REPLY @20799 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @20800
  IF ~~ THEN REPLY @20801 GOTO 14
  IF ~~ THEN REPLY @20802 GOTO 8
  IF ~~ THEN REPLY @20803 GOTO 8
  IF ~~ THEN REPLY @20804 GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @20805
  IF ~~ THEN REPLY @20806 GOTO 5
  IF ~~ THEN REPLY @20807 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @20824
  IF ~~ THEN DO ~SetGlobal("TalkedToMendas","GLOBAL",1)
SetGlobal("WereBitchedOut","GLOBAL",1)~ UNSOLVED_JOURNAL @310644 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @20825
  IF ~~ THEN REPLY @20827 DO ~SetGlobal("ChartQuest","GLOBAL",1)
SetGlobal("TalkedToMendas","GLOBAL",2)
SetGlobal("Wereness","GLOBAL",1)~ GOTO 11
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @20828 GOTO 9
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @20874 GOTO 10
  IF ~~ THEN REPLY @20826 DO ~SetGlobal("TalkedToMendas","GLOBAL",1)
SetGlobal("WereBitchedOut","GLOBAL",1)~ GOTO 14
END

IF ~~ THEN BEGIN 9
  SAY @20829
  IF ~~ THEN REPLY @20830 DO ~SetGlobal("ChartQuest","GLOBAL",1)
SetGlobal("TalkedToMendas","GLOBAL",2)
SetGlobal("MendasLess","GLOBAL",1)
SetGlobal("Wereness","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @20831 DO ~SetGlobal("TalkedToMendas","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @20833 GOTO 18
END

IF ~~ THEN BEGIN 10
  SAY @20834
  IF ~~ THEN REPLY @20835 GOTO 14
  IF ~~ THEN REPLY @20836 GOTO 18
  IF ~~ THEN REPLY @20837 DO ~SetGlobal("ChartQuest","GLOBAL",1)
SetGlobal("TalkedToMendas","GLOBAL",2)
SetGlobal("MendasMore","GLOBAL",1)
SetGlobal("Wereness","GLOBAL",1)~ GOTO 11
END

IF ~!PartyHasItem("misc1c")
Global("ChartQuest","GLOBAL",1)
Global("TalkedToMendas","GLOBAL",2)~ THEN BEGIN 11
  SAY @20839
  IF ~~ THEN DO ~SetGlobal("ChartQuest","GLOBAL",1)
SetGlobal("TalkedToMendas","GLOBAL",2)
SetGlobal("MendasLess","GLOBAL",1)~ UNSOLVED_JOURNAL @310645 EXIT
END

IF ~PartyHasItem("misc1c")
Global("MendasLess","GLOBAL",1)
Global("TalkedToMendas","GLOBAL",2)~ THEN BEGIN 12
  SAY @20840
  IF ~~ THEN REPLY @20841 DO ~GiveGoldForce(2000)
TakePartyItem("misc1c")
SetGlobal("TalkedToMendas","GLOBAL",3)~ GOTO 24
  IF ~~ THEN REPLY @20842 DO ~GiveGoldForce(2000)
TakePartyItem("misc1c")
SetGlobal("ReadyToSail","GLOBAL",1)~ GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @20844
  IF ~~ THEN DO ~SetGlobal("ReadyToSail","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310646 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @20845
  IF ~~ THEN DO ~SetGlobal("TalkedToMendas","GLOBAL",1)
SetGlobal("WereBitchedOut","GLOBAL",1)~ EXIT
END

IF ~PartyHasItem("misc1c")
Global("MendasMore","GLOBAL",1)
Global("TalkedToMendas","GLOBAL",2)~ THEN BEGIN 15
  SAY @20847
  IF ~~ THEN REPLY @20848 DO ~GiveGoldForce(3000)
TakePartyItem("misc1c")
SetGlobal("TalkedToMendas","GLOBAL",3)~ GOTO 24
  IF ~~ THEN REPLY @20850 DO ~GiveGoldForce(3000)
TakePartyItem("misc1c")~ GOTO 13
END

IF ~~ THEN BEGIN 16
  SAY @20851
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @20852 GOTO 17
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @20853 GOTO 17
  IF ~~ THEN REPLY @20854 GOTO 2
END

IF ~~ THEN BEGIN 17
  SAY @20855
  IF ~~ THEN REPLY @20856 DO ~SetGlobal("ChartQuest","GLOBAL",1)
SetGlobal("MendasMore","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @20857 GOTO 20
  IF ~~ THEN REPLY @20858 GOTO 22
END

IF ~~ THEN BEGIN 18
  SAY @20859
  IF ~~ THEN REPLY @20860 DO ~SetGlobal("ChartQuest","GLOBAL",1)
SetGlobal("MendasLess","GLOBAL",1)
SetGlobal("Wereness","GLOBAL",1)~ GOTO 11
  IF ~~ THEN REPLY @20861 GOTO 14
END

IF ~~ THEN BEGIN 19
  SAY @20862
  IF ~~ THEN REPLY @20863 GOTO 20
  IF ~~ THEN REPLY @20864 GOTO 21
  IF ~~ THEN REPLY @20865 GOTO 14
END

IF ~~ THEN BEGIN 20
  SAY @20866
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 21
  SAY @20868
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 22
  SAY @20869
  IF ~~ THEN REPLY @20870 GOTO 2
  IF ~~ THEN REPLY @20871 UNSOLVED_JOURNAL @310647 GOTO 23
  IF ~~ THEN REPLY @20873 GOTO 16
END

IF ~~ THEN BEGIN 23
  SAY @20872
  IF ~~ THEN DO ~SetGlobal("TalkedtoMendas","GLOBAL",1)
SetGlobal("WereBitchedOut","GLOBAL",1)~ UNSOLVED_JOURNAL @310644 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @22817
  IF ~~ THEN UNSOLVED_JOURNAL @310644 EXIT
END

IF ~Global("TalkedToMendas","GLOBAL",3)~ THEN BEGIN 25
  SAY @22749
  IF ~~ THEN REPLY @22750 GOTO 13
  IF ~~ THEN REPLY @22751 GOTO 24
END
