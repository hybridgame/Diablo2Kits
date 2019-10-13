BEGIN D2#PAL

IF ~True()~ selectSkill
    SAY @17
    + ~Global("D2#1201","LOCALS",0)~ + @1201 + prayer
    + ~Global("D2#1202","LOCALS",0)~ + @1202 + resistFire
    + ~Global("D2#1203","LOCALS",0) LevelGT(Myself,3)~ + @1203 + resistCold
    + ~Global("D2#1204","LOCALS",0) LevelGT(Myself,7)~ + @1204 + resistLightning
    + ~Global("D2#1205","LOCALS",0) LevelGT(Myself,3)~ + @1205 + defiance
    + ~Global("D2#1207","LOCALS",0) LevelGT(Myself,11)~ + @1207 + vigor
    + ~Global("D2#1211","LOCALS",0)~ + @1211 + might
    + ~Global("D2#1211","LOCALS",1) Global("D2#1212","LOCALS",0) LevelGT(Myself,3)~ + @1212 + holyFire
    + ~Global("D2#1211","LOCALS",1) Global("D2#1214","LOCALS",0) LevelGT(Myself,7)~ + @1214 + blessedAim
    + ~Global("D2#1214","LOCALS",1) Global("D2#1215","LOCALS",0) LevelGT(Myself,11)~ + @1215 + concentration
    + ~Global("D2#1212","LOCALS",1) Global("D2#1216","LOCALS",0) LevelGT(Myself,11)~ + @1216 + holyFreeze
    + ~Global("D2#1216","LOCALS",1) Global("D2#1217","LOCALS",0) LevelGT(Myself,14)~ + @1217 + holyShock
    + ~LevelGT(Myself,3)~ + @1223 + holyBolt
    + ~Global("D2#1224","LOCALS",0) LevelGT(Myself,7)~ + @1224 + zeal
    + ~Global("D2#1224","LOCALS",1) Global("D2#1226","LOCALS",0) LevelGT(Myself,11)~ + @1226 + vengeance
    + ~GlobalGT("D2#1223","LOCALS",0) LevelGT(Myself,11)~ + @1227 + blessedHammer
    + ~GlobalGT("D2#1227","LOCALS",0) LevelGT(Myself,14)~ + @1229 + holyShield
    ++ @2 DO ~IncrementGlobal("D2#PALSkillPoint","LOCALS",1)~ EXIT
END

IF ~~ prayer
    SAY @1231
    ++ @16 DO ~IncrementGlobal("D2#1201","LOCALS",1) ApplySpellRES("D2#1201L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ resistFire
    SAY @1232
    ++ @16 DO ~IncrementGlobal("D2#1202","LOCALS",1) ApplySpellRES("D2#1202L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ resistCold
    SAY @1233
    ++ @16 DO ~IncrementGlobal("D2#1203","LOCALS",1) ApplySpellRES("D2#1203L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ resistLightning
    SAY @1234
    ++ @16 DO ~IncrementGlobal("D2#1204","LOCALS",1) ApplySpellRES("D2#1204L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ defiance
    SAY @1235
    ++ @16 DO ~IncrementGlobal("D2#1205","LOCALS",1) ApplySpellRES("D2#1205L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ vigor
    SAY @1237
    ++ @16 DO ~IncrementGlobal("D2#1207","LOCALS",1) ApplySpellRES("D2#1207L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ might
    SAY @1241
    ++ @16 DO ~IncrementGlobal("D2#1211","LOCALS",1) ApplySpellRES("D2#1211L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ holyFire
    SAY @1242
    ++ @16 DO ~IncrementGlobal("D2#1212","LOCALS",1) ApplySpellRES("D2#1212L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ blessedAim
    SAY @1244
    ++ @16 DO ~IncrementGlobal("D2#1214","LOCALS",1) ApplySpellRES("D2#1214L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ concentration
    SAY @1245
    ++ @16 DO ~IncrementGlobal("D2#1215","LOCALS",1) ApplySpellRES("D2#1215L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ holyFreeze
    SAY @1246
    ++ @16 DO ~IncrementGlobal("D2#1216","LOCALS",1) ApplySpellRES("D2#1216L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ holyShock
    SAY @1247
    ++ @16 DO ~IncrementGlobal("D2#1217","LOCALS",1) ApplySpellRES("D2#1217L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ holyBolt
    SAY @1253
    ++ @16 DO ~IncrementGlobal("D2#1223","LOCALS",1) ApplySpellRES("D2#1223L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ zeal
    SAY @1254
    ++ @16 DO ~IncrementGlobal("D2#1224","LOCALS",1) ApplySpellRES("D2#1224L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ vengeance
    SAY @1256
    ++ @16 DO ~IncrementGlobal("D2#1226","LOCALS",1) ApplySpellRES("D2#1226L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ blessedHammer
    SAY @1257
    ++ @16 DO ~IncrementGlobal("D2#1227","LOCALS",1) ApplySpellRES("D2#1227L",Myself)~ EXIT
    ++ @2 + selectSkill
END

IF ~~ holyShield
    SAY @1259
    ++ @16 DO ~IncrementGlobal("D2#1229","LOCALS",1) ApplySpellRES("D2#1229L",Myself)~ EXIT
    ++ @2 + selectSkill
END