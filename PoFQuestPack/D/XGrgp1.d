BEGIN ~XGrgp1~

IF ~See(Player1)
NumTimesTalkedTo(0)~ THEN BEGIN 0
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
  IF ~~ THEN REPLY @7 DO ~GiveItemCreate("XGplet",Player1,0,0,0)
AddJournalEntry(@50302,QUEST)~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN EXIT
END
