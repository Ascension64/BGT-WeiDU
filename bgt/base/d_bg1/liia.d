BEGIN ~liia~

IF ~~ THEN BEGIN 0
  SAY @2262
  IF ~~ THEN EXTERN ~BELT~ 1
END

IF ~~ THEN BEGIN 1
  SAY @2263
  IF ~~ THEN EXTERN ~NOBLPA3~ 1
END

IF ~~ THEN BEGIN 2
  SAY @2264
  IF ~~ THEN EXTERN ~NOBLPA1~ 2
END

IF ~Dead("GDOPP7")
Dead("GDOPP71")
Dead("GDOPP72")
Dead("GDOPP73")
Dead("GDOPP74")
Dead("GDOPP75")
Global("SarevokBehavior","GLOBAL",0)~ THEN BEGIN 3
  SAY @2265
  IF ~PartyHasItem("SCRL2K")~ THEN REPLY @2273 GOTO 4
  IF ~~ THEN REPLY @2275 GOTO 6
  IF ~PartyHasItem("SCRL3F")~ THEN REPLY @20707 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @2266
  IF ~~ THEN EXTERN ~SAREVO~ 9
END

IF ~~ THEN BEGIN 5
  SAY @2267
  IF ~~ THEN DO ~Wait(10)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @2268
  IF ~~ THEN REPLY @2276 EXTERN ~SAREVO~ 25
  IF ~PartyHasItem("SCRL2K")~ THEN REPLY @2277 EXTERN ~SAREVO~ 9
  IF ~PartyHasItem("SCRL3F")~ THEN REPLY @20708 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2269
  IF ~~ THEN EXTERN ~SAREVO~ 10
END

IF ~Global("SarevokBehavior","GLOBAL",1)~ THEN BEGIN 8
  SAY @2270
  IF ~~ THEN REPLY @2278 DO ~SetGlobal("DukeThanks","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @2279 DO ~SetGlobal("DukeThanks","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @2271
  IF ~~ THEN REPLY @2280 GOTO 12
  IF ~~ THEN REPLY @2281 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @2272
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @20590
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUAPanic("AR7253","",[793.364],12))
ActionOverride(Player1,LeaveAreaLUA("AR7253","",[793.364],12))
ActionOverride(Player1,SetMasterArea("AR7800"))
ActionOverride(Player2,LeaveAreaLUA("AR7253","",[799.418],12))
ActionOverride(Player3,LeaveAreaLUA("AR7253","",[804.470],12))
ActionOverride(Player4,LeaveAreaLUA("AR7253","",[884.384],12))
ActionOverride(Player5,LeaveAreaLUA("AR7253","",[908.422],12))
ActionOverride(Player6,LeaveAreaLUA("AR7253","",[936.473],12))
~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @20591
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @20592
  IF ~~ THEN UNSOLVED_JOURNAL @310200 EXIT
END
