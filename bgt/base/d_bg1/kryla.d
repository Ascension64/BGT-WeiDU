BEGIN ~kryla~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21833
  IF ~~ THEN REPLY @21855 GOTO 1
  IF ~~ THEN REPLY @21857 GOTO 3
  IF ~~ THEN REPLY @21859 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @21836
  IF ~~ THEN REPLY @21863 GOTO 3
  IF ~~ THEN REPLY @21865 GOTO 2
  IF ~~ THEN REPLY @21866 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @21839
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
MoveToPoint([3235.1798])
SetGlobal("KrylaMove","GLOBAL",1)
DialogInterrupt(TRUE)~ UNSOLVED_JOURNAL @310456 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21842
  IF ~~ THEN DO ~DialogInterrupt(FALSE)
MoveToPoint([3235.1798])
SetGlobal("KrylaMove","GLOBAL",1)
DialogInterrupt(TRUE)~ EXIT
END

IF ~Global("KrylaMove","GLOBAL",1)~ THEN BEGIN 4
  SAY @21848
  IF ~~ THEN DO ~CreateCreature("JONDALW",[3027.1690],0)
SetGlobal("KrylaMove","GLOBAL",2)
EraseJournalEntry(@310456)
ForceSpell(Myself,WOLFWERE_CHANGE)~ SOLVED_JOURNAL @310457 EXIT
END
