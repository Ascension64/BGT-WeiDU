BEGIN ~gorion~

IF ~See(Player1)~ THEN BEGIN 0
  SAY @903
  IF ~~ THEN REPLY @15592 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ch1cut01")~ JOURNAL @310433 EXIT
  IF ~~ THEN REPLY @15593 DO ~SetGlobal("TalkedToGorion","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @16424 GOTO 9
  IF ~~ THEN REPLY @16425 GOTO 8
  IF ~~ THEN REPLY @16433 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @2779
  IF ~~ THEN JOURNAL @310434 GOTO 2
END

IF ~false()~ THEN BEGIN 2
  SAY @2910
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @2911
  IF ~~ THEN EXTERN ~SAREVO~ 22
END

IF ~~ THEN BEGIN 4
  SAY @2913
  IF ~~ THEN EXTERN ~SAREVO~ 23
END

IF ~~ THEN BEGIN 5
  SAY @2914
  IF ~~ THEN JOURNAL @310433 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @16040
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16434
  IF ~~ THEN REPLY @16435 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ch1cut01")~ EXIT
  IF ~~ THEN REPLY @16436 DO ~SetGlobal("TalkedToGorion","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @16437 GOTO 9
  IF ~~ THEN REPLY @16438 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @16439
  IF ~~ THEN REPLY @16440 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ch1cut01")~ EXIT
  IF ~~ THEN REPLY @16441 DO ~SetGlobal("TalkedToGorion","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @16442 GOTO 9
  IF ~~ THEN REPLY @16443 GOTO 7
END

IF ~~ THEN BEGIN 9
  SAY @16444
  IF ~~ THEN REPLY @16445 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ch1cut01")~ EXIT
  IF ~~ THEN REPLY @16446 DO ~SetGlobal("TalkedToGorion","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @16447 GOTO 8
  IF ~~ THEN REPLY @16448 GOTO 7
END
