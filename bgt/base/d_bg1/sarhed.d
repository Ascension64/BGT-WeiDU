BEGIN ~sarhed~

IF ~~ THEN BEGIN 0
  SAY @15339
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @15341
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @15342
  IF ~~ THEN UNSOLVED_JOURNAL @310523 EXIT
END

IF WEIGHT #1 ~GlobalLT("OgresDead","GLOBAL",2)~ THEN BEGIN 3
  SAY @15343
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Global("OgresDead","GLOBAL",2)~ THEN BEGIN 4
  SAY @15344
  IF ~~ THEN DO ~AddexperienceParty(300)
IncrementGlobal("OgresDead","GLOBAL",1)
EraseJournalEntry(@310523)
EscapeArea()~ SOLVED_JOURNAL @310524 EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 5
  SAY @15346
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~False()~ THEN BEGIN 6
  SAY @15348
  IF ~~ THEN DO ~~ EXIT
END
