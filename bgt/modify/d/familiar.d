//Prevents asking for advice during BG:ToTSC
ADD_TRANS_TRIGGER ~famil1~ 1 ~Global("ENDOFBG1","GLOBAL",2)~ DO 2
ADD_TRANS_TRIGGER ~famil1~ 3 ~Global("ENDOFBG1","GLOBAL",2)~ DO 1

ADD_TRANS_TRIGGER ~famil2~ 1 ~Global("ENDOFBG1","GLOBAL",2)~ DO 2
ADD_TRANS_TRIGGER ~famil2~ 3 ~Global("ENDOFBG1","GLOBAL",2)~ DO 4

ADD_TRANS_TRIGGER ~famil3~ 1 ~Global("ENDOFBG1","GLOBAL",2)~ DO 2
ADD_TRANS_TRIGGER ~famil3~ 3 ~Global("ENDOFBG1","GLOBAL",2)~ DO 1
