BEGIN ~bart12~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @13996
  IF ~~ THEN REPLY @15051 DO ~StartStore("tav0721",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15052 EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY @13997
  IF ~~ THEN REPLY @15053 DO ~StartStore("tav0721",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15054 EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2
  SAY @13998
  IF ~~ THEN REPLY @15055 DO ~StartStore("tav0721",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15056 EXIT
END
