BEGIN ~kovera~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16882
  IF ~~ THEN REPLY @16883 DO ~SetGlobal("TalkedToKoveras","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @16884 DO ~SetGlobal("TalkedToKoveras","GLOBAL",1)~ GOTO 9
END

IF ~~ THEN BEGIN 1
  SAY @16885
  IF ~~ THEN REPLY @16886 DO ~SetGlobal("Criminal","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @16887 DO ~SetGlobal("Criminal","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @16890
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @16891
  IF ~~ THEN REPLY @16892 GOTO 4
  IF ~~ THEN REPLY @16894 GOTO 7
  IF ~~ THEN REPLY @16895 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @16896
  IF ~~ THEN REPLY @16897 GOTO 5
  IF ~~ THEN REPLY @16898 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @16899
  IF ~~ THEN DO ~SetGlobal("KillReiltar","GLOBAL",1)
EscapeArea()~ UNSOLVED_JOURNAL @310135 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @16900
  IF ~~ THEN DO ~SetGlobal("KillReiltar","GLOBAL",1)
GiveItem("RING25",LastTalkedToBy)
EscapeArea()~ UNSOLVED_JOURNAL @310135 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @16901
  IF ~~ THEN REPLY @16902 GOTO 6
  IF ~~ THEN REPLY @16903 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @16904
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @16905
  IF ~~ THEN REPLY @16906 DO ~SetGlobal("Criminal","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @16907 DO ~SetGlobal("Criminal","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @16908 DO ~SetGlobal("Criminal","GLOBAL",1)~ GOTO 6
END
