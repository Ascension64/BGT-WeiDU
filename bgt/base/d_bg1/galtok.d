BEGIN ~galtok~

IF ~True()~ THEN BEGIN 0
  SAY @18652
  IF ~~ THEN REPLY @18653 GOTO 2
  IF ~~ THEN REPLY @18655 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18656
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18657
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @18658
  IF ~~ THEN DO ~CreateCreature("KOBOLD",[3284.2631],1)
CreateCreature("KOBOLD",[3284.2631],5)
CreateCreature("KOBOLD",[3284.2631],7)
CreateCreature("KOBOLD",[3284.2631],3)
EscapeArea()
~ EXIT
END
