BEGIN ~XGdreq~

IF ~See(Player1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN REPLY @3 DO ~RevealAreaOnMap("XG0780")
SetGlobal("XGdreqLeave","GLOBAL",1)
EscapeArea()~ EXIT
END
