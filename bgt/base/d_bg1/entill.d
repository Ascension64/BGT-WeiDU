BEGIN ~entill~

IF ~ReputationLT(LastTalkedToBy,8)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9730
  IF ~~ THEN REPLY @9731 GOTO 1
  IF ~~ THEN REPLY @9732 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @9733
  IF ~~ THEN DO ~Enemy()~ JOURNAL @310765 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9735
  IF ~~ THEN DO ~Enemy()~ JOURNAL @310766 EXIT
END

IF ~InParty("KHALID")
!InParty("Jaheira")
NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @9740
  IF ~~ THEN REPLY @9741 JOURNAL @310767 GOTO 4
  IF ~~ THEN REPLY @9742 JOURNAL @310767 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @9743
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310767 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9859
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310767 EXIT
END

IF ~InParty("JAHEIRA")
NumTimesTalkedTo(0)~ THEN BEGIN 6
  SAY @9864
  IF ~~ THEN REPLY @9866 GOTO 7
  IF ~~ THEN REPLY @9867 GOTO 8
END

IF ~~ THEN BEGIN 7
  SAY @9868
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310767 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9869
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310767 EXIT
END

IF ~True()~ THEN BEGIN 9
  SAY @9922
  IF ~~ THEN REPLY @9923 GOTO 10
  IF ~~ THEN REPLY @9924 GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @9925
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310284 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @9929
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @310284 EXIT
END
