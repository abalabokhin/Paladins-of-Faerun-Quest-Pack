BEGIN ~XGLWSA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @9 DO ~GiveItemCreate("XGLWLET",Player1,0,0,0)
ReputationInc(1)
~ UNSOLVED_JOURNAL @8 EXIT
  IF ~~ THEN REPLY @10 DO ~GiveGoldForce(5000)
GiveItemCreate("XGLWLET",Player1,0,0,0)
~ UNSOLVED_JOURNAL @8 EXIT
END
