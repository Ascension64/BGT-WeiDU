BEGIN ~menda2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @20875
  IF ~~ THEN DO ~GiveItem("misc1c",Player1)
SetGlobal("TalkedToMendas","GLOBAL",4)~ UNSOLVED_JOURNAL @310648 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @20876
  IF ~~ THEN REPLY @20877 GOTO 2
  IF ~~ THEN REPLY @20878 GOTO 3
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @20879 GOTO 4
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @20880 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @20888
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @20889
  IF ~~ THEN DO ~ActionOverride(Player1,LeaveAreaLUAPanic("ARW000","",[4747.3515],12))
ActionOverride(Player1,LeaveAreaLUA("ARW000","",[4747.3515],12))
ActionOverride(Player2,LeaveAreaLUA("ARW000","",[4672.3546],12))
ActionOverride(Player3,LeaveAreaLUA("ARW000","",[4614.3561],12))
ActionOverride(Player4,LeaveAreaLUA("ARW000","",[4545.3524],12))
ActionOverride(Player5,LeaveAreaLUA("ARW000","",[4534.3588],12))
ActionOverride(Player6,LeaveAreaLUA("ARW000","",[4473.3586],12))
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @20890
  IF ~~ THEN REPLY @20894 GOTO 5
  IF ~~ THEN REPLY @20895 DO ~GiveGoldForce(3000)~ GOTO 3
  IF ~~ THEN REPLY @20896 GOTO 5
  IF ~~ THEN REPLY @20897 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @20891
  IF ~~ THEN DO ~SetGlobal("TalkedToMendas","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @20892
  IF ~~ THEN REPLY @22153 DO ~GiveGoldForce(4000)~ GOTO 3
  IF ~~ THEN REPLY @22154 GOTO 5
END

IF ~Global("TalkedToMendas","GLOBAL",4)~ THEN BEGIN 7
  SAY @20893
  IF ~~ THEN REPLY @20898 GOTO 3
  IF ~~ THEN REPLY @20899 GOTO 2
  IF ~~ THEN REPLY @20900 GOTO 5
END
