BEGIN ~hurgan~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @21243
  IF ~~ THEN REPLY @21244 GOTO 1
  IF ~~ THEN REPLY @21245 GOTO 2
  IF ~~ THEN REPLY @21246 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @21247
  IF ~~ THEN REPLY @21248 GOTO 4
  IF ~~ THEN REPLY @21249 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @21250
  IF ~~ THEN DO ~SetGlobal("TalkToHurgan","GLOBAL",1)~ UNSOLVED_JOURNAL @310600 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @21251
  IF ~~ THEN DO ~SetGlobal("TalkToHurgan","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21252
  IF ~~ THEN REPLY @21253 GOTO 6
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @21254 GOTO 8
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @21255 GOTO 3
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @22133 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @21258
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @21259
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @21260
  IF ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN REPLY @21261 GOTO 11
  IF ~ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN REPLY @21262 GOTO 10
  IF ~~ THEN REPLY @21263 GOTO 2
  IF ~~ THEN REPLY @21264 DO ~SetGlobal("DURLAGness","GLOBAL",1)
SetGlobal("DurlagBitchedOut","GLOBAL",0)~ GOTO 12
END

IF ~~ THEN BEGIN 8
  SAY @21270
  IF ~~ THEN GOTO 6
END

IF ~Global("TalkToHurgan","GLOBAL",1)
Global("Hurganquest","GLOBAL",0)
Global("Cult1","GLOBAL",0)~ THEN BEGIN 9
  SAY @21272
  IF ~~ THEN REPLY @21274 GOTO 2
  IF ~~ THEN REPLY @21275 GOTO 4
END

IF ~~ THEN BEGIN 10
  SAY @21273
  IF ~~ THEN REPLY @21276 DO ~SetGlobal("Hurganhamm","GLOBAL",1)
SetGlobal("DURLAGness","GLOBAL",1)
SetGlobal("DurlagBitchedOut","GLOBAL",0)~ GOTO 12
  IF ~~ THEN REPLY @21277 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @21278
  IF ~~ THEN REPLY @21280 DO ~SetGlobal("Hurgangold","GLOBAL",1)
SetGlobal("DURLAGness","GLOBAL",1)
SetGlobal("DurlagBitchedOut","GLOBAL",0)~ GOTO 12
  IF ~~ THEN REPLY @21281 GOTO 21
END

IF ~~ THEN BEGIN 12
  SAY @21282
  IF ~~ THEN DO ~RevealAreaOnMap("ARD000")
SetGlobal("Hurganquest","GLOBAL",1)~ UNSOLVED_JOURNAL @310601 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @21284
  IF ~~ THEN REPLY @21285 DO ~SetGlobal("Hurganhamm","GLOBAL",1)
SetGlobal("DURLAGness","GLOBAL",1)
SetGlobal("DurlagBitchedOut","GLOBAL",0)~ GOTO 12
  IF ~~ THEN REPLY @21286 GOTO 2
END

IF ~Global("Hurganquest","GLOBAL",1)
Global("Cult1","GLOBAL",0)~ THEN BEGIN 14
  SAY @21287
  IF ~~ THEN EXIT
END

IF ~Global("Cult1","GLOBAL",1)
Global("Hurgandemon","GLOBAL",0)~ THEN BEGIN 15
  SAY @21289
  IF ~~ THEN REPLY @21290 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @21293
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @21294
  IF ~~ THEN DO ~SetGlobal("Hurgandemon","GLOBAL",1)~ UNSOLVED_JOURNAL @310602 EXIT
END

IF ~Global("Hurgandemon","GLOBAL",1)
!Dead("Tanar")~ THEN BEGIN 18
  SAY @21295
  IF ~~ THEN EXIT
END

IF ~Dead("Tanar")~ THEN BEGIN 19
  SAY @21296
  IF ~Global("Hurganhamm","GLOBAL",1)~ THEN REPLY @21297 GOTO 22
  IF ~Global("Hurgangold","GLOBAL",1)~ THEN REPLY @22124 GOTO 20
  IF ~~ THEN REPLY @24119 GOTO 23
END

IF ~~ THEN BEGIN 20
  SAY @21298
  IF ~~ THEN REPLY @21334 DO ~GiveGoldForce(2000)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @21324
  IF ~~ THEN REPLY @21327 DO ~SetGlobal("Hurgangold","GLOBAL",1)
SetGlobal("DURLAGness","GLOBAL",1)
SetGlobal("DurlagBitchedOut","GLOBAL",0)~ GOTO 12
  IF ~~ THEN REPLY @21330 GOTO 2
END

IF ~~ THEN BEGIN 22
  SAY @22127
  IF ~~ THEN REPLY @21335 DO ~GiveItem("hamm04",LastTalkedToBy)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 23
  SAY @24120
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
