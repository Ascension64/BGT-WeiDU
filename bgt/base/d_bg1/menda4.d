BEGIN ~menda4~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24017
  IF ~~ THEN REPLY @24018 GOTO 1
  IF ~~ THEN REPLY @24030 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @24019
  IF ~~ THEN REPLY @24020 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @24021
  IF ~~ THEN REPLY @24022 GOTO 4
  IF ~~ THEN REPLY @24023 GOTO 3
  IF ~~ THEN REPLY @24028 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @24029
  IF ~~ THEN DO ~ActionOverride("Baresh",ApplySpellRES("BGWI925",Myself))
ForceSpell(Myself,LOUPGAR_CHANGE)
ActionOverride("kaishwlf",DestroyItem("misc1c"))
Enemy()~ SOLVED_JOURNAL @310675 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @24031
  IF ~~ THEN REPLY @24035 GOTO 5
  IF ~~ THEN REPLY @24036 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @24037
  IF ~~ THEN DO ~ActionOverride("Baresh",ApplySpellRES("BGWI925",Myself))
ForceSpell(Myself,LOUPGAR_CHANGE)
ActionOverride("kaishwlf",DestroyItem("misc1c"))
Enemy()~ SOLVED_JOURNAL @310675 EXIT
END
