BEGIN ~s#shop01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~StartStore("s#shop01",LastTalkedToBy(Myself))~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END
