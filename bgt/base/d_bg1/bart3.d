BEGIN ~bart3~

IF ~True()~ THEN BEGIN 0
  SAY @15270
  IF ~~ THEN REPLY @15271 EXIT
  IF ~~ THEN REPLY @15272 DO ~StartStore("Inn3357",LastTalkedToBy())~ EXIT
END
