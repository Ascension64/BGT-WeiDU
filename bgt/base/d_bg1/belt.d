BEGIN ~belt~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2282
  IF ~~ THEN EXTERN ~LIIA~ 0
END

IF ~~ THEN BEGIN 1
  SAY @2283
  IF ~~ THEN EXTERN ~NOBLPA1~ 0
END

IF ~~ THEN BEGIN 2
  SAY @2284
  IF ~~ THEN EXTERN ~NOBLPA1~ 1
END

IF ~~ THEN BEGIN 3
  SAY @2285
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @2286
  IF ~~ THEN JOURNAL @310201 EXTERN ~SAREVO~ 5
END

IF ~~ THEN BEGIN 5
  SAY @2287
  IF ~~ THEN EXTERN ~NOBLPA3~ 2
END

IF ~Dead("GDOPP7")
Dead("GDOPP71")
Dead("GDOPP72")
Dead("GDOPP73")
Dead("GDOPP74")
Dead("GDOPP75")
Global("SarevokBehavior","GLOBAL",0)~ THEN BEGIN 6
  SAY @2288
  IF ~PartyHasItem("SCRL2K")~ THEN REPLY @2295 GOTO 7
  IF ~~ THEN REPLY @2297 GOTO 9
  IF ~PartyHasItem("SCRL3F")~ THEN REPLY @20705 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @2289
  IF ~~ THEN EXTERN ~SAREVO~ 24
END

IF ~~ THEN BEGIN 8
  SAY @2290
  IF ~~ THEN DO ~Wait(10)~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @2291
  IF ~PartyHasItem("SCRL2K")~ THEN REPLY @2298 GOTO 7
  IF ~~ THEN REPLY @2299 EXTERN ~SAREVO~ 25
  IF ~PartyHasItem("SCRL3F")~ THEN REPLY @20706 GOTO 7
END

IF ~~ THEN BEGIN 10
  SAY @2292
  IF ~~ THEN EXTERN ~SAREVO~ 10
END

IF ~Global("SarevokBehavior","GLOBAL",1)~ THEN BEGIN 11
  SAY @2293
  IF ~~ THEN REPLY @2300 DO ~SetGlobal("DukeThanks","GLOBAL",1)~ GOTO 14
  IF ~~ THEN REPLY @2301 DO ~SetGlobal("DukeThanks","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @2294
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @20594
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

IF ~~ THEN BEGIN 14
  SAY @20595
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @20596
  IF ~~ THEN UNSOLVED_JOURNAL @310202 EXIT
END
