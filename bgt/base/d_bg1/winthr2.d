BEGIN ~winthr2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16867
  IF ~~ THEN REPLY @16869 GOTO 1
  IF ~~ THEN REPLY @16868 GOTO 4
  IF ~~ THEN REPLY @16870 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @16871
  IF ~~ THEN REPLY @16872 GOTO 2
  IF ~~ THEN REPLY @16873 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @16874
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @16875
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @16876
  IF ~~ THEN REPLY @16877 GOTO 2
  IF ~~ THEN REPLY @16878 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @16879
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @16880
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy())~ EXIT
END

IF ~True()~ THEN BEGIN 7
  SAY @16881
  IF ~~ THEN DO ~StartStore("Inn2616",LastTalkedToBy())~ EXIT
END
