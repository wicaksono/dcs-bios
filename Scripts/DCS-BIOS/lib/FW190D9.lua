BIOS.protocol.beginModule("FW-190D9", 0x3400)
BIOS.protocol.setExportModuleAircrafts({"FW-190D9"})

local documentation = moduleBeingDefined.documentation

local document = BIOS.util.document  

local parse_indication = BIOS.util.parse_indication

local defineFloat = BIOS.util.defineFloat
local defineIndicatorLight = BIOS.util.defineIndicatorLight
local definePushButton = BIOS.util.definePushButton
local definePotentiometer = BIOS.util.definePotentiometer
local defineRotary = BIOS.util.defineRotary
local defineSetCommandTumb = BIOS.util.defineSetCommandTumb
local defineTumb = BIOS.util.defineTumb
local defineToggleSwitch = BIOS.util.defineToggleSwitch
local defineToggleSwitchToggleOnly = BIOS.util.defineToggleSwitchToggleOnly
local defineFixedStepTumb = BIOS.util.defineFixedStepTumb
local defineFixedStepInput = BIOS.util.defineFixedStepInput
local defineVariableStepTumb = BIOS.util.defineVariableStepTumb
local defineString = BIOS.util.defineString
local defineRockerSwitch = BIOS.util.defineRockerSwitch
local defineMultipositionSwitch = BIOS.util.defineMultipositionSwitch

defineRotary("RAD_FLAP_CTRL",8, 3013, 159, "Cockpit", "Radiator Flaps Control")
defineTumb("STARTER_CVR",2, 3006, 104, 1, {0,1}, nil, false, "Cockpit", "Starter Switch Cover")
defineTumb("MW50_SWITCH",2, 3015,85, 1, {0,1}, nil, false, "Cockpit", "MW-50 Switch")
defineTumb("EL_KILL",1, 3031, 79, 1, {0,1}, nil, false, "Cockpit", "Electric Kill-switch")
defineTumb("EMG_EQ_DEST",1, 3032, 163, 1, {0,1}, nil, false, "Cockpit", "Emergency Equipment Destruction")
defineTumb("CIRC_BR_CVR",1, 3001,138, 1, {0,1}, nil, false, "Cockpit", "Circuit Breakers Cover")
defineTumb("CANOPY_EMG_REL",3, 3006,115, 1, {0,1}, nil, false, "Cockpit", "Canopy Emergency Release Handle")
defineRotary("CANOPY_HAND_CRK",3, 3001, 114, "Cockpit", "Canopy Hand Crank")
defineTumb("THR_LOCK",2, 3011,200, 1, {0,1}, nil, false, "Cockpit", "Throttle Lock")
defineRotary("ALT_PRESS_SET",10, 3001, 34, "Cockpit", "Altimeter Pressure Set")
defineTumb("FLAPS_UP",8, 3001,62, 1, {0,1}, nil, false, "Cockpit", "Flaps Up")
defineTumb("FLAPS_TO",8, 3002,63, 1, {0,1}, nil, false, "Cockpit", "Flaps Take Off")
defineTumb("FLAPS_LAND",8, 3003,64, 1, {0,1}, nil, false, "Cockpit", "Flaps Landing")
defineTumb("LG_RET",8, 3005,65, 1, {0,1}, nil, false, "Cockpit", "Landing Gears Retraction")
defineTumb("LG_RET_CVR",8, 3006,66, 1, {0,1}, nil, false, "Cockpit", "Landing Gears Retraction Cover")
defineTumb("LG_EXT",8, 3007,67, 1, {0,1}, nil, false, "Cockpit", "Landing Gears Extending")
defineRotary("TURN_BEZ",13, 3004, 24, "Cockpit", "Turnable Bezel")
defineRotary("WND_SET",13, 3001, 25, "Cockpit", "Wind/Set Knob")
defineTumb("START_STOP",13, 3002, 26, 1, {0,1}, nil, false, "Cockpit", "Start - Stop Button")
defineTumb("STOPWATCH",13, 3003, 28, 1, {0,1}, nil, false, "Cockpit", "Stopwatch Button")
defineTumb("MASTER_ARM",20, 3003,48, 1, {0,1}, nil, false, "Cockpit", "Master Arm")
defineRotary("GUN1_AMM_C",20, 3004, 51, "Cockpit", "Set Gun 1 Ammunition Count")
defineRotary("GUN2_AMM_C",20, 3005, 54, "Cockpit", "Set Gun 2 Ammunition Count")
defineRotary("GUN3_AMM_C",20, 3006, 57, "Cockpit", "Set Gun 3 Ammunition Count")
defineRotary("GUN4_AMM_C",20, 3007, 60, "Cockpit", "Set Gun 4 Ammunition Count")
defineTumb("MAIN_RKT",20, 3008,107, 1, {0,1}, nil, false, "Cockpit", "Main Rocket Switch")
defineTumb("RKT_EMG_REL_CVR",20, 3009,137, 1, {0,1}, nil, false, "Cockpit", "Rocket Emergency Release Cover")
defineTumb("RKT_EMG_REL",20, 3010,108, 1, {0,1}, nil, false, "Cockpit", "Rocket Emergency Release")
defineTumb("JETT_FUS_STORES",20, 3012,92, 1, {0,1}, nil, false, "Cockpit", "Jettison Fuselage Stores")
defineTumb("SIGHT_GYRO",21, 3001,132, 1, {0,1}, nil, false, "Cockpit", "EZ42 Gunsight Gyro Power Switch, ON/OFF")
defineRotary("SIGHT_WING_SPAN",21, 3002, 131, "Cockpit", "EZ42 Gunsight Target Wingspan Knob")
defineTumb("SIGHT_NIGHT",21, 3011,134, 1, {0,1}, nil, false, "Cockpit", "EZ42 Gunsight Night Lens Filter, ON/OFF")
defineRotary("SIGHT_DISC_CTRL",21, 3003,4, "Cockpit", "EZ42 Gunsight Target Distance Control")
defineRotary("SIGHT_BRIGHT",21, 3004, 135, "Cockpit", "EZ42 Gunsight Brightness Control")
defineRotary("SIGHT_ALT_KNOB",21, 3012, 191, "Cockpit", "EZ42 Gunsight Altitude Aiming Correction Adjusting Knob I")
defineRotary("INSTR_LGHT_CTRL",7, 3001, 78, "Cockpit", "Instrument Lights Brightness")
defineRotary("RADIO_VOL",15, 3003, 83, "Cockpit", "Radio Volume")
defineTumb("FT_MODE",15, 3006,84, 1, {0,1}, nil, false, "Cockpit", "FT FT / Y ZF Mode Switch")
defineRotary("RADIO_TUNE",15, 3008, 82, "Cockpit", "Radio Tuning (+/-30 kHz)")
defineTumb("OXY_EMG_KNOB",4, 3001,190, 1, {0,1}, nil, false, "Cockpit", "Oxygen Emergency Knob")
defineTumb("IFF_CHK",16, 3003,88, 1, {0,1}, nil, false, "Cockpit", "IFF Check")
definePotentiometer("HOR_CAGE",12,3001, 39,{0.511, 1.0},"Cockpit", "Horizon Cage")
definePotentiometer("OXY_FLOW_VALVE",4,3003, 110,{0.0,0.5},"Cockpit", "Oxygen Flow Valve")

--NOT IMPLEMENTED ACCORDING TO DOCUMENTATION
--defineTumb("FUEL_COLD_START",6, 3007,160, 1, {0,1}, nil, false, "Cockpit", "Cold Start/Wind Screen Washer")

defineTumb("MAGNETO",2, 3004,75, 0.3, {0,0.9}, nil, false, "Cockpit", "Magneto Switch")
defineTumb("STARTER_SWITCH",2, 3008, 105, 0.5, {0,1}, nil, false, "Cockpit", "Starter Switch. Starter Power / Magnetic Clutch")
defineTumb("MBG_EMG_HNDL",2, 3013, 91, 1, {0,1}, nil, false, "Cockpit", "MBG Emergency Mode Handle")
defineTumb("FUEL_TNK_SEL",6, 3001, 90, 0.1, {0,0.3}, nil, false, "Cockpit", "Fuel Tank Selector Valve (CLOSE/FORWARD/AFT/BOTH)")
defineTumb("FUEL_GAUGE_SEL",6, 3002, 99, 0.5, {-0.5,1}, nil, false, "Cockpit", "Fuel Gauge Selector (FORWARD/NONE/AFT)")
defineTumb("FUEL_MWB4_SEL",6, 3003, 161, 1, {0,1}, nil, false, "Cockpit", "MW-B4 Selector (Not Functional)")
defineTumb("FUEL_PRIM_PMPL",6, 3009, 162, 1, {0,1}, nil, false,"Cockpit", "Primer Pump")
defineTumb("FL_TR_HOR_PWR_ON",1, 3005, 141, 1, {0,1}, nil, false, "Electric System", "Flaps, Trimmer, Artificial Horizon Power On")
defineTumb("FL_TR_HOR_PWR_OFF",1, 3018, 142, 1, {0,1}, nil, false, "Electric System", "Flaps, Trimmer, Artificial Horizon Power Off")
defineTumb("LG_PWF_ON",1, 3006, 143, 1, {0,1}, nil, false, "Electric System", "Landing Gear Power On")
defineTumb("LG_PWF_OFF",1, 3019, 144, 1, {0,1}, nil, false, "Electric System", "Landing Gear Power Off")
defineTumb("PIT_HEAT_ON",1, 3007, 145, 1, {0,1}, nil, false, "Electric System", "Pitot and Heating Cover On")
defineTumb("PIT_HEAT_OFF",1, 3020, 146, 1, {0,1}, nil, false, "Electric System", "Pitot and Heating Cover Off")
defineTumb("FUG25A_ON",1, 3008, 147, 1, {0,1}, nil, false, "Electric System", "FuG25a On")
defineTumb("FUG25A_OFF",1, 3021, 148, 1, {0,1}, nil, false, "Electric System", "FuG25a Off")
defineTumb("FUG16ZY_ON",1, 3009, 149, 1, {0,1}, nil, false, "Electric System", "FuG16ZY On")
defineTumb("FUG16ZY_OFF",1, 3022, 150, 1, {0,1}, nil, false, "Electric System", "FuG16ZY Off")
defineTumb("INST_LGHTS_ON",1, 3010, 151, 1, {0,1}, nil, false, "Electric System", "Instrument Lights, Gun-sight, Indicators, Compass, Starter On")
defineTumb("INST_LGHTS_OFF",1, 3023, 152, 1, {0,1}, nil, false, "Electric System", "Instrument Lights, Gun-sight, Indicators, Compass, Starter Off")
defineTumb("GEN_PWR_ON",1, 3011, 153, 1, {0,1}, nil, false, "Electric System", "Generator On")
defineTumb("GEN_PWR_OFF",1, 3024, 154, 1, {0,1}, nil, false, "Electric System", "Generator Off")
defineTumb("BATT_ON",1, 3012, 155, 1, {0,1}, nil, false, "Electric System", "Battery On")
defineTumb("BATT_OFF",1, 3025, 156, 1, {0,1}, nil, false, "Electric System", "Battery Off")
defineTumb("NAV_LGHTS_ON",1, 3013, 121, 1, {0,1}, nil, false, "Electric System", "Navigation Lights On")
defineTumb("NAV_LGHTS_OFF",1, 3026, 120, 1, {0,1}, nil, false, "Electric System", "Navigation Lights Off")
defineTumb("FW_TNK_PMP_ON",1, 3014, 123, 1, {0,1}, nil, false, "Electric System", "Forward Tank Pump On")
defineTumb("FW_TNK_PMP_OFF",1, 3027, 122, 1, {0,1}, nil, false, "Electric System", "Forward Tank Pump Off")
defineTumb("AFT_TNK_PMP_ON",1, 3015, 125, 1, {0,1}, nil, false, "Electric System", "Aft Tank Pump On")
defineTumb("AFT_TNK_PMP_OFF",1, 3028, 124, 1, {0,1}, nil, false, "Electric System", "Aft Tank Pump Off")
defineTumb("AUX_TNK_PMP_ON",1, 3016, 127, 1, {0,1}, nil, false, "Electric System", "Auxiliary Tank Pump On")
defineTumb("AUX_TNK_PMP_OFF",1, 3029, 126, 1, {0,1}, nil, false, "Electric System", "Auxiliary Tank Pump Off")
defineTumb("MW50_ON",1, 3017, 129, 1, {0,1}, nil, false, "Electric System", "MW-50 On")
defineTumb("MW50_OFF",1, 3030, 128, 1, {0,1}, nil, false, "Electric System", "MW-50 Off")
defineRotary("CRS_SET",14, 3001, 43, "Compass", "Course Set")
defineTumb("HOR_STAB_TRIM",8, 3012, 77, 1, {-1,1}, nil, false, "Cockpit", "Stabilizer Trimmer Up/Down")
defineTumb("EMG_LG_REL",8, 3008, 89, 1, {0,1}, nil, false, "Cockpit", "Landing Gear Emergency Release Handle")
defineTumb("BMB_FUSE_SEL",20, 3011, 109, 0.1, {0,0.4}, nil, false, "Cockpit", "Bomb Fusing Selector")
defineTumb("RADIO_CHNL_SEL",15, 3001, 81, 0.1, {0,0.3}, nil, false, "Cockpit", "Radio Channel Selector")
defineTumb("IFF_CHNL_SEL",16, 3001, 86, 1, {-1,1}, nil, false, "Cockpit", "IFF Channel Selector")
defineIndicatorLight("BMB1",196, "Lamps", "Bomb 1 Lamp")
defineIndicatorLight("BMB2",197, "Lamps", "Bomb 2 Lamp")
defineIndicatorLight("BMB3",198, "Lamps", "Bomb 3 Lamp")
defineIndicatorLight("BMB4",199, "Lamps", "Bomb 4 Lamp")
defineIndicatorLight("LG_L_UP",68, "Lamps", "Landing Gear Left Up")
defineIndicatorLight("LG_L_DOWN",69, "Lamps", "Landing Gear Left Down")
defineIndicatorLight("LG_R_UP",70, "Lamps", "Landing Gear Right Up")
defineIndicatorLight("LG_R_DOWN",71, "Lamps", "Landing Gear Right Down")
defineIndicatorLight("FLAPS_UP",72, "Lamps", "Flaps Up")
defineIndicatorLight("FLAPS_START",73, "Lamps", "Flaps Start")
defineIndicatorLight("FLAPS_DOWN",74, "Lamps", "Flaps Down")

defineFloat("PANEL_SHAKE_Z", 205, {-0.8, 0.8}, "Indicator", "Panel_Shake_Z")
defineFloat("PANEL_SHAKE_Y", 204, {-0.8, 0.8}, "Indicator", "Panel_Shake_Y")
defineFloat("PANEL_ROT_X", 206, {-0.5, 0.5}, "Indicator", "Panel_Rot_X")
defineFloat("SIGHTSHAKEZ", 207, {-0.9, 0.9}, "Indicator", "SightShakeZ")
defineFloat("SIGHTSHAKEY", 208, {-0.5, 0.5}, "Indicator", "SightShakeY")
defineFloat("LAMPS_INTENSITY", 193, {0.0, 1.0}, "Indicator", "Lamps_Intensity")
defineFloat("CANOPY", 194, {0, 1}, "Indicator", "Canopy")
defineFloat("CANOPY_CRANK", 114, {1.0, 0.0}, "Indicator", "Canopy_Crank")
defineFloat("ENGINETHROTTLE", 2, {0.0, 1.0}, "Indicator", "EngineThrottle")
defineFloat("STICKPITCH", 7, {-1, 1}, "Indicator", "StickPitch")
defineFloat("STICKBANK", 8, {1, -1}, "Indicator", "StickBank")
defineFloat("RUDDERPOSITION", 1, {-1, 1}, "Indicator", "RudderPosition")
defineFloat("WHEEL_BRAKE", 102, {0, 1}, "Indicator", "Wheel_Brake")
defineFloat("WHEEL_BRAKE", 103, {0, 1}, "Indicator", "Wheel_Brake")
defineFloat("IAS", 36, {0.0, 0.988}, "Indicator", "IAS")
defineFloat("VERTICALSPEED", 42, {-1, 1.0}, "Indicator", "VerticalSpeed")
defineFloat("ALTIMETER_KM", 35, {0.0, 1.0}, "Indicator", "Altimeter_km")
defineFloat("ALTIMETER_M", 32, {0.0, 1.0}, "Indicator", "Altimeter_m")
defineFloat("ALTIMETER_PRESSURE", 33, {0.0, 1.0}, "Indicator", "Altimeter_Pressure")
defineFloat("HORIZON_PITCH", 37, {0.33, -0.33}, "Indicator", "Horizon_Pitch")
defineFloat("HORIZON_BANK", 38, {1.0, -1.0}, "Indicator", "Horizon_Bank")
defineFloat("TURNNEEDLE", 40, {-1.0, 1.0}, "Indicator", "TurnNeedle")
defineFloat("SLIPBALL", 41, {-1.0, 1.0}, "Indicator", "Slipball")
defineFloat("OXYGEN_PRESSURE", 112, {0.0, 1.0}, "Indicator", "Oxygen_Pressure")
defineFloat("OXYGEN_FLOW_BLINKER", 113, {0.0, 1.0}, "Indicator", "Oxygen_Flow_Blinker")
defineFloat("COMPASSHEADING", 45, {0.0, 1.0}, "Indicator", "CompassHeading")
defineFloat("COMMANDEDCOURSE", 44, {0.0, 1.0}, "Indicator", "CommandedCourse")
defineFloat("MANIFOLD_PRESSURE", 46, {0.0, 1.0}, "Indicator", "Manifold_Pressure")
defineFloat("ENGINE_RPM", 47, {0.0, 0.983}, "Indicator", "Engine_RPM")
defineFloat("COOLANT_TEMPERATURE", 96, {0.070, 1.0}, "Indicator", "Coolant_Temperature")
defineFloat("OIL_TEMPERATURE", 97, {0.070, 1.0}, "Indicator", "Oil_Temperature")
defineFloat("OIL_PRESSURE", 95, {0, 1.0}, "Indicator", "Oil_Pressure")
defineFloat("FUEL_PRESSURE", 94, {0.0, 1.0}, "Indicator", "Fuel_Pressure")
defineFloat("MW50_PRESSURE", 106, {0.0, 1.0}, "Indicator", "MW50_Pressure")
defineFloat("FUELMETER", 98, {0.0, 1.0}, "Indicator", "FuelMeter")
defineFloat("FUELMETER", 98, {0.0, 1.0}, "Indicator", "FuelMeter")
defineFloat("FUEL_LOW_FWD", 100, {0.0, 1.0}, "Indicator", "Fuel_Low_Fwd")
defineFloat("FUEL_LOW_REAR", 101, {0.0, 1.0}, "Indicator", "Fuel_Low_Rear")
defineFloat("FLUOR_LIGHT", 195, {0.0, 1.0}, "Indicator", "Fluor_Light")
defineFloat("PILOT_DRAW", 540, {0.0, 1.0}, "Indicator", "pilot_draw")
defineFloat("CURRTIME_HOURS", 21, {0.0, 1.0}, "Indicator", "CurrTime_Hours")
defineFloat("CURRTIME_MINUTES", 22, {0.0, 1.0}, "Indicator", "CurrTime_Minutes")
defineFloat("CURRTIME_SECONDS", 23, {0.0, 1.0}, "Indicator", "CurrTime_Seconds")
defineFloat("CHRONO_MINUTES", 27, {0.0, 1.0}, "Indicator", "Chrono_Minutes")
defineFloat("AMMO_COUNTER_1", 52, {0.0, 1.0}, "Indicator", "Ammo_Counter_1")
defineFloat("AMMO_COUNTER_2", 55, {0.0, 1.0}, "Indicator", "Ammo_Counter_2")
defineFloat("AMMO_COUNTER_3", 58, {0.0, 1.0}, "Indicator", "Ammo_Counter_3")
defineFloat("AMMO_COUNTER_4", 61, {0.0, 1.0}, "Indicator", "Ammo_Counter_4")
defineFloat("GUN_FIRE_1", 50, {0.0, 1.0}, "Indicator", "Gun_Fire_1")
defineFloat("GUN_FIRE_2", 164, {0.0, 1.0}, "Indicator", "Gun_Fire_2")
defineFloat("GUN_FIRE_3", 165, {0.0, 1.0}, "Indicator", "Gun_Fire_3")
defineFloat("GUN_FIRE_4", 166, {0.0, 1.0}, "Indicator", "Gun_Fire_4")
defineFloat("TARGETDIST", 133, {0.0, 1.0}, "Indicator", "TargetDist")
defineFloat("BOMB_LAMP_1", 196, {0.0, 1.0}, "Indicator", "Bomb_Lamp_1")
defineFloat("BOMB_LAMP_2", 197, {0.0, 1.0}, "Indicator", "Bomb_Lamp_2")
defineFloat("BOMB_LAMP_3", 198, {0.0, 1.0}, "Indicator", "Bomb_Lamp_3")
defineFloat("BOMB_LAMP_4", 199, {0.0, 1.0}, "Indicator", "Bomb_Lamp_4")
defineFloat("ROCKETEMCVR", 137, {0.0, 1.0}, "Indicator", "RocketEmCvr")
defineFloat("B_1_KNOPF", 9, {0.0, 1.0}, "Indicator", "B_1_knopf")
defineFloat("B_2_KNOPF", 11, {0.0, 1.0}, "Indicator", "B_2_knopf")
defineFloat("COVER_KNOPF", 10, {0.0, 1.0}, "Indicator", "Cover_knopf")
defineFloat("TRIMMNEEDLE", 76, {-1.0, 1.0}, "Indicator", "TrimmNeedle")
defineFloat("ADF_VERTICAL", 29, {-1.0, 1.0}, "Indicator", "ADF_Vertical")
defineFloat("ADF_HORIZONT", 30, {-1.0, 1.0}, "Indicator", "ADF_Horizont")
defineFloat("WINDSHIELDDAMAGE", 209, {0.0, 1.0}, "Indicator", "WindshieldDamage")
defineFloat("CANOPYDAMAGE", 210, {0.0, 1.0}, "Indicator", "CanopyDamage")


BIOS.protocol.endModule()