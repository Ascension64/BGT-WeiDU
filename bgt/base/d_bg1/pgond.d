BEGIN ~pgond~

IF ~True()~ THEN BEGIN 0
  SAY @7478
  IF ~~ THEN REPLY @15345 DO ~StartStore("tem0131",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15347 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @7479
  IF ~~ THEN EXIT
END
