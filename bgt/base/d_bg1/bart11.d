BEGIN ~bart11~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @13993
  IF ~~ THEN REPLY @15045 DO ~StartStore("tav0721",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15046 EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY @13994
  IF ~~ THEN REPLY @15047 DO ~StartStore("tav0721",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15048 EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2
  SAY @13995
  IF ~~ THEN REPLY @15049 DO ~StartStore("tav0721",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15050 EXIT
END
