BEGIN ~innkn2~

IF ~True()~ THEN BEGIN 0
  SAY @3586
  IF ~~ THEN REPLY @15275 DO ~StartStore("Inn4801",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15276 EXIT
END

IF ~False()~ THEN BEGIN 1
  SAY @3587
  IF ~~ THEN EXIT
END
