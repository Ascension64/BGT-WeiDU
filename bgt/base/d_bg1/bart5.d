BEGIN ~bart5~

IF ~True()~ THEN BEGIN 0
  SAY @8202
  IF ~~ THEN REPLY @15063 DO ~StartStore("Inn3351",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15065 EXIT
END
