BEGIN ~doomsay~

IF ~PartyHasItem("MISC48")~ THEN BEGIN 0
  SAY @10983
  IF ~~ THEN REPLY @10984 GOTO 2
  IF ~~ THEN REPLY @10985 GOTO 1
  IF ~~ THEN REPLY @10988 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @10989
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @10990
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @10991
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @11885
  IF ~~ THEN DO ~SetGlobal("doomsayer","GLOBAL",0)
EscapeArea()~ EXIT
END
