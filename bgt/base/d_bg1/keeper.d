BEGIN ~keeper~

IF ~~ THEN BEGIN 0
  SAY @253
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 1
  SAY @254
  IF ~~ THEN REPLY @260 GOTO 2
  IF ~Global("Chapter","GLOBAL",7)
      PartyHasItem("BOOK68")~ THEN REPLY @262 DO ~TakePartyItem("BOOK68")~ GOTO 4
  IF ~!PartyHasItem("BOOK68")~ THEN REPLY @262 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @255
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @256
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @257
  IF ~~ THEN DO ~ClearAllActions()
StartCutScene("Ch6cut01")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @258
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @259
  IF ~~ THEN REPLY @7064 EXIT
  IF ~~ THEN REPLY @7065 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @265
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @7066
  IF ~~ THEN EXIT
END
