BEGIN ~tenya2~

IF ~Global("HelpTenya","GLOBAL",2)~ THEN BEGIN 0
  SAY @9933
  IF ~Global("HelpTremain","GLOBAL",1)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @9946 GOTO 2
  IF ~Global("HelpTremain","GLOBAL",1)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @9947 GOTO 3
  IF ~Dead("Jebadoh")~ THEN REPLY @9948 GOTO 10 //was 4
  IF ~!Dead("Jebadoh")~ THEN REPLY @9952 GOTO 10 //was 3
  IF ~Global("HelpTremain","GLOBAL",1)~ THEN REPLY @9953 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @9935
  IF ~~ THEN REPLY @9954 EXIT
  IF ~~ THEN REPLY @9955 EXIT
  IF ~~ THEN REPLY @9956 EXIT
  IF ~~ THEN REPLY @9957 EXIT
  IF ~~ THEN REPLY @9960 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9936
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ UNSOLVED_JOURNAL @310229 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9937
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ UNSOLVED_JOURNAL @310230 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9938
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ UNSOLVED_JOURNAL @310229 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9939
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ UNSOLVED_JOURNAL @310230 EXIT
END

IF ~Global("HelpTenya","GLOBAL",1)~ THEN BEGIN 6
  SAY @9940
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @9961 GOTO 7
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @9962 GOTO 8
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @9964 GOTO 9
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @9965 GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @9941
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9942
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9943
  IF ~~ THEN DO ~SetGlobal("BOYBODY","GLOBAL",1)
GiveItemCreate("MISC54",LastTalkedToBy,0,0,0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9944
  IF ~~ THEN DO ~Shout(1)
Enemy()~ EXIT
END

IF ~False()~ THEN BEGIN 11
  SAY @9945
  IF ~~ THEN EXIT
END
