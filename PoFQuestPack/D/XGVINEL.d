BEGIN ~XGVINEL~

IF ~Global("s#XGVINEL","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 DO ~
AddJournalEntry(@50438,QUEST)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @10
  IF ~~ THEN REPLY @11 DO ~RevealAreaOnMap("XG0001")
SetGlobal("s#XGVINEL","GLOBAL",1)
AddJournalEntry(@50437,QUEST)~ EXIT
END

IF ~  Global("s#XGVINEL","GLOBAL",1)
Global("s#XGskwr4","GLOBAL",0)~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @14 EXIT
END

IF ~  Global("s#XGVINEL","GLOBAL",1)
Global("s#XGskwr4","GLOBAL",1)~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @18
  IF ~~ THEN REPLY @19 DO ~GiveItemCreate("XGsk",Player1,0,0,0)
SetGlobal("s#XGVINEL","GLOBAL",2)~ EXIT
END

IF ~  Global("s#XGVINEL","GLOBAL",1)
Global("s#XGskwr4","GLOBAL",2)~ THEN BEGIN 9
  SAY @13
  IF ~~ THEN REPLY @20 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @21
  IF ~~ THEN  DO ~
AddJournalEntry(@50438,QUEST)
EscapeArea()~ EXIT
END

IF ~  Global("s#XGVINEL","GLOBAL",2)
Global("s#XGSABAT","GLOBAL",0)~ THEN BEGIN 11
  SAY @13
  IF ~~ THEN REPLY @14 EXIT
END

IF ~  Global("s#XGVINEL","GLOBAL",2)
Global("s#XGSABAT","GLOBAL",1)~ THEN BEGIN 12
  SAY @13
  IF ~~ THEN REPLY @22 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @23
  IF ~~ THEN  DO ~ AddexperienceParty(5000)  
    EraseJournalEntry(@50437) 
    EraseJournalEntry(@50401) 
    EraseJournalEntry(@50436)
    AddJournalEntry(@50439,QUEST)
EscapeArea()~ EXIT
END




