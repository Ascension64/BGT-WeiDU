BEGIN ~torlob~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8470
  IF ~~ THEN DO ~EraseJournalEntry(@310265)
EraseJournalEntry(@310266)
EraseJournalEntry(@310269)
Enemy()~ SOLVED_JOURNAL @310270 EXIT
END

IF WEIGHT #3 ~True()~ THEN BEGIN 1
  SAY @8471
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @8472
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9067
  IF ~~ THEN EXIT
END
