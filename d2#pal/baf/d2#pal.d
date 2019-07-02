BEGIN D2#PAL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN selectSkill
    SAY @2

    // Defensive Aura

    // Prayer
    IF ~Global("D2#1201","GLOBAL",0)~ THEN REPLY @1201
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1201","GLOBAL",1))
            ApplySpellRES("D2#1201L",Lastsummonerof(Myself))~ EXIT

    // Resist Fire
    IF ~Global("D2#1202","GLOBAL",0)~ THEN REPLY @1202
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1202","GLOBAL",1))
            ApplySpellRES("D2#1202L",Lastsummonerof(Myself))~ EXIT

    // Resist Cold
    IF ~Global("D2#1203","GLOBAL",0) LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1203
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1203","GLOBAL",1))
            ApplySpellRES("D2#1203L",Lastsummonerof(Myself))~ EXIT

    // Resist Lightning
    IF ~Global("D2#1204","GLOBAL",0) LevelGT(Lastsummonerof(Myself),7)~ THEN REPLY @1204
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1204","GLOBAL",1))
            ApplySpellRES("D2#1204L",Lastsummonerof(Myself))~ EXIT

    // Defiance
    IF ~Global("D2#1205","GLOBAL",0) LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1205
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1205","GLOBAL",1))
            ApplySpellRES("D2#1205L",Lastsummonerof(Myself))~ EXIT

    // Vigor
    IF ~Global("D2#1207","GLOBAL",0) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1207
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1207","GLOBAL",1))
            ApplySpellRES("D2#1207L",Lastsummonerof(Myself))~ EXIT

    // Offensive Aura

    // Might
    IF ~Global("D2#1211","GLOBAL",0)~ THEN REPLY @1211
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1211","GLOBAL",1))
            ApplySpellRES("D2#1211L",Lastsummonerof(Myself))~ EXIT

    // Holy Fire
    IF ~Global("D2#1211","GLOBAL",1) Global("D2#1212","GLOBAL",0) LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1212
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1212","GLOBAL",1))
            ApplySpellRES("D2#1212L",Lastsummonerof(Myself))~ EXIT

    // Blessed Aim
    IF ~Global("D2#1211","GLOBAL",1) Global("D2#1214","GLOBAL",0) LevelGT(Lastsummonerof(Myself),7)~ THEN REPLY @1214
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1214","GLOBAL",1))
            ApplySpellRES("D2#1214L",Lastsummonerof(Myself))~ EXIT

    // Concentration
    IF ~Global("D2#1214","GLOBAL",1) Global("D2#1215","GLOBAL",0) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1215
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1215","GLOBAL",1))
            ApplySpellRES("D2#1215L",Lastsummonerof(Myself))~ EXIT

    // Holy Freeze
    IF ~Global("D2#1212","GLOBAL",1) Global("D2#1216","GLOBAL",0) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1216
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1216","GLOBAL",1))
            ApplySpellRES("D2#1216L",Lastsummonerof(Myself))~ EXIT

    // Holy Shock
    IF ~Global("D2#1216","GLOBAL",1) Global("D2#1217","GLOBAL",0) LevelGT(Lastsummonerof(Myself),14)~ THEN REPLY @1217
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1217","GLOBAL",1))
            ApplySpellRES("D2#1217L",Lastsummonerof(Myself))~ EXIT

    // Sacrifice
    IF ~Global("D2#1221","GLOBAL",0)~ THEN REPLY @1221
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1221","GLOBAL",1))
            ApplySpellRES("D2#1221L",Lastsummonerof(Myself))~ EXIT

    // Holy Bolt
    IF ~LevelGT(Lastsummonerof(Myself),3)~ THEN REPLY @1223
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1223","GLOBAL",1))
            ApplySpellRES("D2#1223L",Lastsummonerof(Myself))~ EXIT

    // Zeal
    IF ~Global("D2#1221","GLOBAL",1) Global("D2#1224","GLOBAL",0) LevelGT(Lastsummonerof(Myself),7)~ THEN REPLY @1224
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1224","GLOBAL",1))
            ApplySpellRES("D2#1224L",Lastsummonerof(Myself))~ EXIT

    // Vengeance
    IF ~Global("D2#1224","GLOBAL",1) Global("D2#1226","GLOBAL",0) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1226
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1226","GLOBAL",1))
            ApplySpellRES("D2#1226L",Lastsummonerof(Myself))~ EXIT

    // Blessed Hammer
    IF ~GlobalGT("D2#1223","GLOBAL",0) LevelGT(Lastsummonerof(Myself),11)~ THEN REPLY @1227
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1227","GLOBAL",1))
            ApplySpellRES("D2#1227L",Lastsummonerof(Myself))~ EXIT

    // Holy Shield
    IF ~GlobalGT("D2#1227","GLOBAL",0) LevelGT(Lastsummonerof(Myself),14)~ THEN REPLY @1229
        DO ~ActionOverride(Lastsummonerof(Myself),IncrementGlobal("D2#1229","GLOBAL",1))
            ApplySpellRES("D2#1229L",Lastsummonerof(Myself))~ EXIT

END