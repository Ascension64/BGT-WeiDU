BEGIN ~meym~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21834
  IF ~~ THEN REPLY @21835 GOTO 1
  IF ~~ THEN REPLY @21837 GOTO 2
  IF ~~ THEN REPLY @21838 GOTO 3
  IF ~~ THEN REPLY @21840 GOTO 16
END

IF ~~ THEN BEGIN 1
  SAY @21841
  IF ~~ THEN REPLY @21843 GOTO 4
  IF ~~ THEN REPLY @21844 GOTO 5
  IF ~~ THEN REPLY @21845 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @21847
  IF ~~ THEN REPLY @21849 GOTO 7
  IF ~~ THEN REPLY @21850 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @21851
  IF ~~ THEN REPLY @21852 GOTO 4
  IF ~~ THEN REPLY @21853 GOTO 8
  IF ~~ THEN REPLY @21854 GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @21856
  IF ~~ THEN DO ~SetGlobal("MemTalk","GLOBAL",1)~ UNSOLVED_JOURNAL @310667 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @21858
  IF ~~ THEN REPLY @21860 GOTO 11
  IF ~~ THEN REPLY @21861 GOTO 12
  IF ~~ THEN REPLY @21862 GOTO 13
END

IF ~~ THEN BEGIN 6
  SAY @21864
  IF ~~ THEN DO ~ForceSpell(Myself,WOLFWERE_CHANGE)~ UNSOLVED_JOURNAL @310668 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21867
  IF ~~ THEN REPLY @21868 GOTO 8
  IF ~~ THEN REPLY @21870 GOTO 6
  IF ~~ THEN REPLY @21871 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @21872
  IF ~~ THEN REPLY @21874 GOTO 6
  IF ~~ THEN REPLY @21876 GOTO 14
  IF ~~ THEN REPLY @21877 GOTO 11
END

IF ~~ THEN BEGIN 9
  SAY @21879
  IF ~~ THEN DO ~SetGlobal("MemTalk","GLOBAL",1)~ UNSOLVED_JOURNAL @310667 EXIT
END

IF ~Global("MemTalk","GLOBAL",1)~ THEN BEGIN 10
  SAY @21880
  IF ~~ THEN DO ~ForceSpell(Myself,WOLFWERE_CHANGE)~ UNSOLVED_JOURNAL @310668 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @21883
  IF ~~ THEN REPLY @21884 GOTO 15
  IF ~~ THEN REPLY @21886 GOTO 4
  IF ~~ THEN REPLY @21887 GOTO 6
END

IF ~~ THEN BEGIN 12
  SAY @21888
  IF ~~ THEN DO ~SetGlobal("MemTalk","GLOBAL",1)~ UNSOLVED_JOURNAL @310667 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @21889
  IF ~~ THEN DO ~ForceSpell(Myself,WOLFWERE_CHANGE)~ UNSOLVED_JOURNAL @310668 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @21891
  IF ~~ THEN DO ~SetGlobal("MemTalk","GLOBAL",1)~ UNSOLVED_JOURNAL @310667 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @21893
  IF ~~ THEN DO ~ForceSpell(Myself,WOLFWERE_CHANGE)~ UNSOLVED_JOURNAL @310668 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @23556
  IF ~~ THEN DO ~SetGlobal("MemTalk","GLOBAL",1)~ EXIT
END
