BEGIN ~bgtazok~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",5)~ THEN BEGIN 0
  SAY @1901
  IF ~~ THEN EXTERN ~RAIKEN~ 14
END

IF ~~ THEN BEGIN 1
  SAY @1902
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1903
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",2)~ THEN BEGIN 3
  SAY @1904
  IF ~~ THEN EXTERN ~RAIKEN~ 15
END

IF ~~ THEN BEGIN 4
  SAY @1905
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @1906
  IF ~~ THEN REPLY @2321 GOTO 6
  IF ~~ THEN REPLY @2322 GOTO 7
  IF ~~ THEN REPLY @2323 GOTO 9
END

IF ~~ THEN BEGIN 6
  SAY @1907
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1908
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF WEIGHT #4 ~HPPercentLT(Myself,50)
Global("FoughtTazok","GLOBAL",0)~ THEN BEGIN 8
  SAY @1909
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("BeatTazok","GLOBAL",1)
DestroyItem("TAZOKHP1")
ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("FoughtTazok","GLOBAL",1)~ UNSOLVED_JOURNAL @310747 GOTO 13
END

IF ~~ THEN BEGIN 9
  SAY @1910
  IF ~~ THEN REPLY @2324 GOTO 10
  IF ~~ THEN REPLY @2325 GOTO 11
  IF ~~ THEN REPLY @2326 GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @1911
  IF ~~ THEN DO ~Enemy()
MoveToObject([PC])
Wait(3)
Kill([PC])~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1912
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @1913
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF WEIGHT #5 ~Global("BeatTazok","GLOBAL",1)~ THEN BEGIN 13
  SAY @1914
  IF ~~ THEN DO ~EndCutSceneMode()
ActionOverride("Teven",EscapeArea())
ActionOverride("Raiken",EscapeArea())
EscapeArea()~ UNSOLVED_JOURNAL @310410 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @1916
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @2164
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @2165
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~Global("BP_BanditCamp","GLOBAL",1)
NumberOfTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",1)~ THEN BEGIN 17
  SAY @2166
  IF ~~ THEN EXTERN ~TEVEN~ 16
END

IF ~~ THEN BEGIN 18
  SAY @2167
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @2168
  IF ~~ THEN REPLY @2327 GOTO 20
  IF ~~ THEN REPLY @2328 GOTO 21
  IF ~~ THEN REPLY @2329 GOTO 23
END

IF ~~ THEN BEGIN 20
  SAY @2169
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @2170
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 22
  SAY @2171
  IF ~~ THEN DO ~SetGlobal("BeatTazok","GLOBAL",1)
ChangeEnemyAlly(Myself,NEUTRAL)~ UNSOLVED_JOURNAL @310747 GOTO 27
END

IF ~~ THEN BEGIN 23
  SAY @2172
  IF ~~ THEN REPLY @2330 GOTO 24
  IF ~~ THEN REPLY @2331 GOTO 25
  IF ~~ THEN REPLY @2332 GOTO 26
END

IF ~~ THEN BEGIN 24
  SAY @2173
  IF ~~ THEN DO ~Enemy()
MoveToObject([PC])
Wait(3)
Kill([PC])~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @2174
  IF ~~ THEN UNSOLVED_JOURNAL @310747 GOTO 27
END

IF ~~ THEN BEGIN 26
  SAY @2175
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @2176
  IF ~~ THEN DO ~EndCutSceneMode()
EscapeArea()~ UNSOLVED_JOURNAL @310410 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @2178
  IF ~~ THEN DO ~CreateItem("TAZOKHP1",0,0,0)
EndCutSceneMode()
FillSlot(SLOT_AMULET)
Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 29
  SAY @5764
  IF ~~ THEN UNSOLVED_JOURNAL @310411 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @8928
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @8935
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32
  SAY @8936
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~NumTimesTalkedTo(0)
Global("JoinedBandits","GLOBAL",4)~ THEN BEGIN 33
  SAY @955
  IF ~~ THEN EXTERN ~TEVEN~ 15
END
