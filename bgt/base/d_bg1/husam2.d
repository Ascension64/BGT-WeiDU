BEGIN ~husam2~

IF ~GlobalLT("HusamMove","GLOBAL",5)
GlobalGT("HusamMove","GLOBAL",0)~ THEN BEGIN 0
  SAY @16801
  IF ~~ THEN REPLY @16909 GOTO 1
  IF ~~ THEN REPLY @16910 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @16802
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @16911
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",5)
EscapeArea()~ EXIT
END

IF ~Global("HusamMove","GLOBAL",55)~ THEN BEGIN 3
  SAY @16912
  IF ~~ THEN REPLY @16949 GOTO 4
  IF ~~ THEN REPLY @16950 DO ~CreateCreature("SHADOW",[313.1889],0)
CreateCreature("SHADOW",[368.1887],0)
CreateCreature("SHADOW",[426.1902],0)
CreateCreature("SHADOW",[489.1908],0)
CreateCreature("SHADOW",[550.1905],0)
CreateCreature("SHADOW",[528.1962],0)
SetGlobal("HusamMove","GLOBAL",99)
Wait(4)
Dialogue([PC])~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @16913
  IF ~~ THEN EXIT
END

IF ~Global("HusamMove","GLOBAL",99)~ THEN BEGIN 5
  SAY @16914
  IF ~~ THEN REPLY @16915 DO ~SetGlobal("HusamMove","GLOBAL",100)
Enemy()~ EXIT
  IF ~~ THEN REPLY @16916 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @16917
  IF ~~ THEN REPLY @16918 GOTO 7
  IF ~~ THEN REPLY @16919 GOTO 8
  IF ~~ THEN REPLY @16920 GOTO 9
  IF ~~ THEN REPLY @16921 GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @16922
  IF ~~ THEN REPLY @16923 DO ~SetGlobal("HusamMove","GLOBAL",10)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @16924 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @16925
  IF ~~ THEN REPLY @16926 DO ~SetGlobal("HusamMove","GLOBAL",10)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @16927 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @16928
  IF ~~ THEN REPLY @16929 DO ~SetGlobal("HusamMove","GLOBAL",10)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @16930 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @16931
  IF ~~ THEN REPLY @16932 DO ~SetGlobal("HusamMove","GLOBAL",10)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @16933 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @16934
  IF ~~ THEN REPLY @16935 DO ~SetGlobal("HusamMove","GLOBAL",10)
EscapeArea()~ EXIT
  IF ~~ THEN REPLY @16936 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @16937
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",6)
DialogInterrupt(FALSE)
MoveToPoint([1173.1352])
DialogInterrupt(TRUE)
Wait(10)~ EXIT
END

IF ~Global("HusamMove","GLOBAL",6)
Global("KillAssasins","GLOBAL",0)~ THEN BEGIN 13
  SAY @16938
  IF ~~ THEN DO ~SetGlobal("KillAssasins","GLOBAL",1)~ JOURNAL @310203 EXIT
END

IF ~Global("HusamMove","GLOBAL",6)
Global("KillAssasins","GLOBAL",1)~ THEN BEGIN 14
  SAY @16939
  IF ~Dead("Slythe")
      Dead("Krystin")~ THEN REPLY @16940 DO ~SetGlobal("KillAssasins","GLOBAL",2)~ GOTO 16
  IF ~~ THEN REPLY @16941 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @16942
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16
  SAY @16943
  IF ~~ THEN REPLY @16944 DO ~SetGlobal("KillAssasins","GLOBAL",1)~ GOTO 20
  IF ~PartyHasItem("SCRL2K")~ THEN REPLY @16945 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @16946
  IF ~~ THEN DO ~SetGlobal("HusamMove","GLOBAL",7)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @16947
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY @16948
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY @24103
  IF ~~ THEN EXIT
END
