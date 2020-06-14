--  SET TIMECYCLE:
-- 			Citizen.InvokeNative(0xFA08722A5EA82DA7,timecycle_modifier)   -- SET_TIMECYCLE_MODIFIER
-- 			Citizen.InvokeNative(0xFDB74C9CC54C3F37,1.0)			      -- SET_TIMECYCLE_MODIFIER_STRENGTHs
--	 
--  REMOVE TIMECYCLE:               
--			Citizen.InvokeNative(0x0E3F4AF2D63491FB) 					  -- CLEAR_TIMECYCLE_MODIFIER


local timecycles = {
	"Base_modifier",
	"Bea_Cave",
	"bea_cave_entrance",
	"bea_cave_artificial_ambient",
	"bea_cave_artificial_ambient_entrance",
	"disable_rain_interior_stencil",
	"INT_Factory_Cor",
	"Colter_Cave",
	"ext_match_int",
	"scr_shack_int",
	"rho_fenceshop_int",
	"bgv_skinners01_int",
	"dis_grz_statue_int",
	"dis_grz_preskull_int",
	"q03_04_tunnel_int",
	"shack_ai_int",
	"old_tower_int",
	"qua_shack01_int",
	"qua_shack02_int",
	"dis_stonehenge_int",
	"j_07_cannibal_int",
	"tum_roomnbath_int",
	"tum_roomnbath_int_bath",
	"tum_barn_int",
	"old_stable_int",
	"dis_tradepost_int",
	"val_saloon_int",
	"tum_saloon_int",
	"tum_saloon_int_gamble",
	"val_std_int1",
	"col_cave_deep",
	"dis_roa_aliencave_int",
	"m05_bearcave_int",
	"m05_bearcave_int_deep",
	"m05_bearcave_int_noAmbient",
	"col_cave_int",
	"int_str_jailPost",
	"adl_cabin01_int",
	"val_genstore_int",
	"val_genstore_int_secondary",
	"val_genstore_int_dressingroom",
	"abe_farmhouse_int",
	"abe_farmhouse_int_secondary",
	"INT_Blockout",
	"Online_Character_Editor",
	"INT_Catalogue_Exposure",
	"INT_WeaponCustomize",
	"INT_Barber_Exposure_StD",
	"INT_Barber_Exposure_Val",
	"INT_Barber_Blackwater",
	"CAMP_Wardrobe",
	"CAMP_Wardrobe_Beechers",
	"CAMP_Wardrobe_Pronghorn",
	"CAMP_Grooming",
	"CAMP_Grooming_Shadybelle",
	"Player_Journal",
	"SHOPS_Butcher_Generic",
	"SHOPS_Trapper_Generic",
	"Odd_Jobs_Poker_Exposure_val",
	"Odd_Jobs_Dominoes_Exposure",
	"Odd_Jobs_Poker_First_Person",
	"Odd_Jobs_Blackjack_First_Person",
	"Odd_Jobs_Blackjack_Dealer",
	"Odd_Jobs_Dominoes_First_Person",
	"Odd_Jobs_Five_Finger_Fillet",
	"val_jail_int",
	"val_bank_int_secondary",
	"val_bank_int",
	"val_bank_int_vault",
	"fill_light_int",
	"cat_house_01_int",
	"shack_rc_int",
	"val_gunsmith_int",
	"ann_jail_int",
	"sod_house_int",
	"val_docs_office",
	"CHE_cabin_int",
	"bee_house_int",
	"bee_house_int_bath_room",
	"ann_doctor_int",
	"LocalizedReflection",
	"Disc_Well",
	"bac_tunnel_int",
	"bac_tunnel_entrance",
	"j_10p_tunnel_1a_int",
	"hea_tunnel_01",
	"hea_tunnel_02",
	"new_man_gala_int",
	"new_man_gala_int_foyer",
	"new_man_gala_int_mez",
	"new_man_gala_int_kitchen",
	"new_man_gala_int_library",
	"val_res_01_f_int",
	"str_res02_int",
	"tan_house_int",
	"com_muleshed_int",
	"val_hotel_int",
	"val_hotel_int_bath",
	"cal_tobacco_int",
	"the_ticketoffice_int",
	"bla_train_int",
	"cal_carriage_house_int",
	"miy_fort_int",
	"rho_sheriff_int",
	"van_freight_int",
	"Saloon",
	"Saloon_bath",
	"INT_Shady_Belle_Cabin_01",
	"bra_mansion_int",
	"bra_mansion_int_side",
	"bra_mansion_int_brB",
	"bra_mansion_int_arti_amb",
	"bra_mansion_int_optimize",
	"rho_slum_player_int",
	"rho_genstore_int",
	"rho_genstore_int_closed",
	"rho_genstore_int_dressingroom",
	"new_res_doctor",
	"man_trading_post_int",
	"aur_shack01_int",
	"str_doctor_int",
	"new_shady_shop_int",
	"new_shady_shop_int_closed",
	"new_shady_shop_int_basement",
	"new_gunshop_int",
	"new_gunshop_int_closed",
	"str_frt_int",
	"str_whore_int",
	"str_whore_int_bath",
	"gri_g1_shack_int",
	"mil_mine_cave_int",
	"mil_mine_cave_int_entrance",
	"mil_mine_cave_int_artificial_ambient",
	"winter2_cave01_int",
	"new_saloon02_int",
	"ann_sheriff_int",
	"val_saloon2_int",
	"pro_worker_house_int",
	"shack_rarefish_int",
	"str_genst_int",
	"str_genst_int_lower",
	"str_genst_int_dressingroom",
	"rho_gunsmith_int",
	"rho_gunsmith_int_closed",
	"van_saloon_int",
	"old_storage_int",
	"old_cptquarter_int",
	"old_jailsmth_int",
	"agu_tower_int",
	"ann_genstore_int",
	"new_exotic_int",
	"bla_bank_int",
	"bla_bank_int_closed",
	"bee_barn_int",
	"wat_cabin_int",
	"rho_graysecret_int",
	"sha_mansion_int",
	"sha_mansion_int_leader_room",
	"rho_saloon_int",
	"rho_saloon_int_bath",
	"adl_barn_int",
	"maco_shack01_int",
	"str_jailhouse_INT",
	"bla_genstore_int",
	"bla_genstore_int_closed",
	"vet_house_int",
	"eme_genstore_int",
	"luc_serial_house_int",
	"bla_tailor_int",
	"bla_tailor_int_dressing_room",
	"bla_tailor_int_backroom",
	"rho_train_int",
	"hrs_02_shop01_int",
	"new_trolleydepot",
	"new_gunsmi01_int",
	"new_com_bank_int",
	"agu_boiler_int",
	"agu_boiler_int_storage",
	"van_roomnbath_int",
	"van_roomnbath_int_bath",
	"agu_fus_cave_int",
	"agu_fus_cave_int_deep",
	"agu_fus_cave_int2",
	"cra_01",
	"lof_outpost_int",
	"bla_saloon_int",
	"bla_saloon_int_bath",
	"eme_saloon_int",
	"ann_coaltipple_int",
	"ann_coalbreaker_int",
	"new_traindepot_int",
	"tum_gunsmith_int",
	"tum_gunsmith_int_02",
	"ven_shack01_int",
	"ann_mineoffice_int",
	"str_nemi_int",
	"new_com_theatre_int",
	"lnn_lonnie_shack_int",
	"bla_jail_int",
	"dis_1rmchurch_int",
	"bgv_devilcave_int",
	"bgv_devilcave_int_entrance",
	"arm_bank_int",
	"bra_tre_house_int",
	"shack_hb_int",
	"rho_bank_int",
	"rho_bank_int_vault",
	"bla_doctor_int",
	"shack_lt_int",
	"mac_house01_int",
	"dov_lab_int",
	"elh_seacaves_int",
	"elh_seacaves_int_water",
	"m05_mine_int",
	"shack_sp_int",
	"new_tailor01_int_02",
	"new_tailor01_int",
	"new_tailor01_int_fitting",
	"l_08_train_tunnel2_int",
	"j_14_tunnel01_int",
	"j_16_tunnel_int",
	"new_hotel_3rd_floor_int",
	"cin_tor_int",
	"arm_trainstation_int",
	"new_barber_int",
	"ann_saloon_int",
	"rig_station_int",
	"new_man_bronte",
	"new_man_bronte_library",
	"new_gamble_int",
	"new_theater_int",
	"new_theater_int_foyer",
	"new_theater_int_seating",
	"bla_barber_int",
	"shack_hf_int",
	"shack_pl_int",
	"pro_barn_int",
	"van_exoticgoods_int",
	"van_exoticgoods_int_02",
	"van_exoticgoods_int_dressingroom",
	"eme_depot_int",
	"bla_theater_int_lobby",
	"bla_theater_int",
	"str_playhouse_int",
	"val_trainstn_int",
	"ann_mine_int",
	"ann_mine_int_exit",
	"ann_mine_int_distance",
	"gap_mine_int",
	"ser_grandkor_int",
	"ser_grandkor_int_bright",
	"ser_grandkor_int_bright_exit",
	"new_art_int",
	"new_art_int_groundfloor",
	"eme_barn_int",
	"sis_bldg02_int_mp_cell",
	"sis_bldg02_int",
	"lak_hideout_int",
	"mic_hideout_int",
	"lak_houseruined_int",
	"gap_cartstop_int",
	"l_14_cave_int",
	"l_14_cave_int_exit",
	"ann_gunsmith_int",
	"ann_gunsmith_int_closed",
	"rdl_house_01_int",
	"shack_cwb_int",
	"shack_dr_int",
	"ann_roomnbath_int",
	"ann_roomnbath_int_bath",
	"ann_roomnbath_int_dressing",
	"ann_settlers_int",
	"ann_settlers_int_warped",
	"com_house_01_int",
	"com_house_01_int_cellar",
	"new_police_int",
	"new_pie_tunnel_int",
	"new_pie_tunnel_room",
	"shack_sc_int",
	"din_house_int",
	"mfr_blacksmith01_int",
	"man_house01_int",
	"man_house01_int_room2",
	"van_fenceshop_int",
	"bla_fenceshop_int",
	"jum_horseshop_int",
	"mfr_cottage01_int",
	"van_hotel_int",
	"shack_sk2_int",
	"dow_barn_int",
	"l_07_cave01_int",
	"j_14_cave01_int",
	"shack_bv_int",
	"shack_b_a",
	"shack_b_b",
	"shack_b_c",
	"shack_urr_int",
	"sol_basement_int",
	"sol_basement_int_entrance",
	"roc_house_int",
	"pai_barn_int",
	"ple_house01_int",
	"val_stable_int",
	"gri_g3_shack_int",
	"gri_g2_shack_int",
	"shack_it_01_int",
	"shack_it_02_int",
	"che_shack1_int",
	"che_01_off",
	"rad_house_01_int",
	"can_manor_int",
	"new_grocery_int",
	"new_grocery_int_02",
	"pho_houseboat_int",
	"but_shack_int",
	"che_barn_int",
	"val_carriagehouse_int",
	"wal_trainstation_int",
	"wal_trainstation_int_dressingroom",
	"wal_trainstation_int_02",
	"lon_mule_int",
	"lon_mule_int_02",
	"tum_genstore_int",
	"tum_genstore_int_dressrm",
	"tum_genstore_int_02",
	"han_house_int",
	"van_farmhouse_int",
	"han_barn_int",
	"col_bunkhouse_int",
	"ora_house_01_int",
	"ann_depot_int",
	"ann_depot_vault",
	"bra_cornmill_int",
	"van_depot_int",
	"van_depot_int_02",
	"bla_photo_int",
	"bla_photo_int_2",
	"new_photo_int",
	"sil_house_int",
	"tax_house_int",
	"tax_house_int_basement",
	"car_barn_int",
	"bra_stable_int",
	"car_house_int",
	"lar_house_int",
	"cro_house_int",
	"dai_farmhouse01_int",
	"grh_house_int",
	"twi_shack01_int",
	"pai_house_int",
	"pai_house_int_2",
	"col_cabin_int",
	"agu_guardhouse_int",
	"shack_sw_int",
	"arm_sheriff_int",
	"arm_saloon_int",
	"arm_genstore_int",
	"arm_genstore_int_dressingroom",
	"ben_shack_int",
	"ben_train_int",
	"brb_dockhouse_int",
	"ldj_shack01_int",
	"bra_boathouse_int",
	"str_mayorshouse_int",
	"bla_carriagehouse_int",
	"new_art_res",
	"lak_loveshack_int",
	"lak_altar_int",
	"met_house01_int",
	"cat_shack01_int",
	"swc_shack01_int",
	"col_school_int",
	"col_barn_int",
	"val_magiclantern_int",
	"new_stairwell01_int",
	"dis_scmwell_int",
	"cas_house_int",
	"new_magic_int",
	"new_magic_int_lobby",
	"gua_boat_int",
	"tum_jail_int",
	"new_gang01_int",
	"TEMPPedLightStrongTEMP",
	"dow_house_int",
	"pro_mansion_int",
	"mil_shed_int",
	"bur_calaboose_int",
	"van_hobo_int",
	"bpl_swampcabin_int",
	"man_cabin01_int",
	"pro_workshop_int",
	"new_carriagehouse_int",
	"van_lighthouse_int",
	"six_cabin_int",
	"six_cabin_int_off",
	"l_04_cave",
	"din_barn_int",
	"van_mansion_int",
	"privatearmoured_int",
	"civ_cellar_int",
	"agu_hut01_int",
	"tbm_valgenstore_int",
	"swa_depot01_int",
	"teaser_campMOD",
	"teaser_shot2",
	"teaser_barnShot",
	"teaser_trainShot",
	"teaser_buffaloShot",
	"teaser_buffaloShot2",
	"teaser_trainShot2",
	"teaser_caravan",
	"teaser_caravan2",
	"teaser_vanHorn",
	"teaser_vanHorn2",
	"teaser_canyon",
	"teaser_train3",
	"teaser_aaron_deer",
	"teaser_aaron_river",
	"localLights_thirded",
	"testbed_mocap",
	"Smuggler1FOG",
	"Swamp_Player_Foam",
	"Inner_Swamp_Player_Foam",
	"Dakota_Player_Foam",
	"Little_Player_Foam",
	"Roanoke_Player_Foam",
	"Grizzlies_Player_Foam",
	"Strawberry_Player_Foam",
	"Lmr_Player_Foam",
	"Umr_Player_Foam",
	"Flatiron_Player_Foam",
	"Lannahechee_Player_Foam",
	"Heartland_Player_Foam",
	"Sanluis_Player_Foam",
	"Pollution_Player_Foam",
	"Terrain_LOD_Multi",
	"shack_lc",
	"new_gala_industry1",
	"base_dry",
	"base_wet",
	"train_test",
	"bronteGarden",
	"CS_Gradient_Disabled",
	"CS_Gradient_type_bottom",
	"CS_Gradient_type_bottom_light",
	"CS_Gradient_type_bottom_heavy",
	"CS_Gradient_type_top",
	"CS_Gradient_type_top_light",
	"CS_Gradient_typetopbottom_DepHR",
	"CS_Gradient_type_top_bottom_light",
	"base_noise",
	"FIRSTPERSON_glasses_dark",
	"FIRSTPERSON_mask_black",
	"FIRSTPERSON_hat_dark",
	"Smuggler1_moonPos_uphill",
	"Smuggler1_moonPos_rowing",
	"MISSION_reverend1_sunPos",
	"MISSION_reverend1_sunStrength",
	"MISSION_fued1_temperature",
	"MISSION_fussar1_cliff_shimmy",
	"drought_reduce_wetness_soak",
	"dishonour",
	"extraHonour",
	"scarlet_FogColour",
	"winter1_outro_fogScale",
	"winter1_adlers_optimization",
	"winter1_optimization",
	"SKY_reducMultiScattering",
	"exposureCurveDebugMod",
	"mud1_sunpos1",
	"winter4_ride_sunPos1",
	"winter4_ride_sunstrength1",
	"winter4_ride_gradientOveride1",
	"winter4_train_loot",
	"winter4_ride_sunstrength2",
	"winter2_sunPos1",
	"winter2_sunPos2",
	"winter2_sunPos3",
	"GUAMA2_sunpos1",
	"GUAMA2_sunpos2",
	"GUAMA_freeplay1",
	"TRAILER3_traincrossingMod",
	"TRAILER3_Val",
	"TRAILER3_ValWet",
	"TRAILER3_Val2Wet",
	"TRAILER3_Val3Wet",
	"TRAILER3_Val4Wet",
	"TRAILER3_sadie",
	"TRAILER3_oil",
	"winter1_adlerFog",
	"mountainClouds",
	"newDeadeyeBase",
	"nativeSonMoonPos",
	"wakeUp_colter_morning",
	"wakeUp_colter_afternoon",
	"wakeUp_colter_evening",
	"wakeUp_colter_night",
	"wakeUp_horseshoe_morning",
	"wakeUp_horseshoe_afternoon",
	"wakeUp_horseshoe_evening",
	"wakeUp_horseshoe_night",
	"wakeUp_clemensPoint_morning",
	"wakeUp_clemensPoint_afternoon",
	"wakeUp_clemensPoint_evening",
	"wakeUp_clemensPoint_night",
	"wakeUp_shadyBelle_morning",
	"wakeUp_shadyBelle_afternoon",
	"wakeUp_shadyBelle_evening",
	"wakeUp_shadyBelle_night",
	"wakeUp_guarma_morning",
	"wakeUp_guarma_afternoon",
	"wakeUp_guarma_evening",
	"wakeUp_guarma_night",
	"wakeUp_lakay_morning",
	"wakeUp_lakay_afternoon",
	"wakeUp_lakay_evening",
	"wakeUp_lakay_night",
	"wakeUp_beaverHollow_morning",
	"wakeUp_beaverHollow_afternoon",
	"wakeUp_beaverHollow_evening",
	"wakeUp_beaverHollow_night",
	"wakeUp_beechersHopeHouse_morning",
	"wakeUp_beechersHopeHouse_afternoon",
	"wakeUp_beechersHopeHouse_evening",
	"wakeUp_beechersHopeHouse_night",
	"dreams_coyote_cliff",
	"dreams_coyote_burnedforest",
	"coyote_dreams_feed_corpse",
	"dreams_coyote_feed_corpse",
	"dreams_deer_pack",
	"dreams_deer_drink",
	"dreams_deer_graze",
	"dreams_deer_resting",
	"dreams_deer_finale",
	"dreams_coyote_stalk",
	"dreams_coyote_final",
	"dreams_coyote_corpse",
	"noMountainclouds",
	"dreams_deer_strawberry_updated",
	"mud1_sunpos2",
	"mud3b_optimization",
	"Finale_sunPos1",
	"Finale_sunPos2",
	"Finale_sunPos3",
	"Finale_INT_sunPos",
	"Finale_INT_sunPosALT",
	"Finale_INT_sunPos2",
	"Finale_INT_sunPos3",
	"Finale_MCS7_sunPos",
	"MISSION_reverend1_moonPos",
	"MISSION_reverend1_moonStrength",
	"rainBowMod",
	"RDTC2_RSC4_smokestackrdx",
	"finale2_sunPos1",
	"finale2_sunPos2",
	"finale2_sunPos3",
	"finale2_sunPos4",
	"finale2_sunPos5",
	"NoPedLight",
	"nbd1_ext_stormydarksky",
	"odriscols4_sunPos",
	"marston4_shootout",
	"marston4_pro_ranch",
	"fussar2_ruins",
	"fussar1_start_optimize",
	"but_creek_lighting_opt",
	"Temp_change_rcal_rc1",
	"guama2_sunPosExt_2",
	"guama2_sunPosExt_4",
	"guama2_sunPosExt",
	"guama2_sunPosExt_1",
	"guama2_sunPosExt_1b",
	"guama2_sunPosExt_3",
	"guama2_sunPosExt_4b",
	"guama2_sunPosExt_4c",
	"guama2_sunPosExt_5",
	"guama2_sunPosExt_5b",
	"guama2_sunPosExt_5c",
	"guama2_sunPosExt_6",
	"guama2_sunPosExt_6b",
	"guama2_sunPosExt_6c",
	"guama2_sunPosExt_6d",
	"guama2_sunPosExt_6e",
	"guama2_sunPosExt_2b",
	"Gang_1_mod",
	"Marston_4_mod",
	"Shadybelle_optimize",
	"mob3_optimize_main",
	"mob3_optimize_extra",
	"ind1_optimize",
	"fussar1_optimize",
	"Dutch3_optimize",
	"Mob4_swamp_optimize",
	"Mob4_swamp_begin_optimize",
	"Crn1_optimize",
	"CS_Gradient_type_top_bottom",
	"playerLanternMod",
	"mud1_sunpos3",
	"smg2_intro_sunboost",
	"smg2_intro_sunpos2",
	"winter4_ride_sunposX1",
	"winter4_ride_sunposX2",
	"smg2_mcs3_shot1sunpos",
	"smg2_mcs3_sunpos_shot2",
	"smg2_mcs3_sunpos_shot4",
	"finale1_shootoutMistStrength",
	"Sadie3_mcs2_moonpos",
	"Sadie3_mcs2_moonpos2",
	"smg2_ext_sunpos1",
	"smg2_ext_sunpos2",
	"smg2_ext_sunpos3",
	"finale1_outroHighhon_bidging1",
	"finale1_outroHighhon_bidging2",
	"gua3_int_ambi_reduction",
	"native3_sunpos1",
	"native3_sunpos2",
	"native3_sunIntensity",
	"mud1_sunpos06",
	"native3_CMEmoonpos1",
	"native3_CMEmoonpos2",
	"sickSun",
	"native3_CMEride",
	"colter_camp_optimize",
	"native3_ext_tent_light",
	"fin2_ext_p9_nocloudshadows",
	"fus1_mcs2_nocloudshadows",
	"swampDank",
	"nowaterphysics",
	"nowater",
	"wnt1_wagon_shot1",
	"wnt1_wagon_shot2",
	"wnt1_wagon_shot3",
	"wnt1_wagon_shot4",
	"wnt1_wagon_shot6",
	"wnt1_wagon_shot7",
	"wnt1_wagon_shot8",
	"wnt1_wagon_shot9",
	"wnt1_wagon_shot10",
	"wnt1_wagon_shot11",
	"wnt1_wagon_shot12",
	"wnt1_wagon_shot5",
	"winter4_introCMEmod",
	"CoyoteSpirit_Credits_moon",
	"wnt4_mcs6_bluegradient",
	"guama2_sunPosbeach1",
	"fus1_mcs2_reducespec",
	"Winter1_Campfire_Mod",
	"L14_water_height_76",
	"L14_water_height_78",
	"L14_water_height_79",
	"L14_water_height_84",
	"L14_water_height_85",
	"L14_water_height_93",
	"L14_water_height_95",
	"winter2_camp_clouds1",
	"winter2_climb_clouds2",
	"waterRefPlanar_farclip1k",
	"central_union1_opt",
	"fastreflection_mission",
	"fin1_mcs6_shadowleakmove",
	"fin1_mcs6_sunpos1",
	"fin1_mcs6_sunpos2",
	"fin1_mcs6_sunpos3",
	"fin1_mcs6_sunpos4",
	"fin1_mcs7_sunpos6",
	"finale2_campMoonPos",
	"nativeSon3_fortentry",
	"mod5_int_lessfog",
	"brt_ext_reducelightrange",
	"martson1_introMod2",
	"marston1_introshot3",
	"marston1_introshot4",
	"marston1_introshot5",
	"mar1_int_shot1_deerdrink",
	"mar1_int_treepan_down",
	"mar1_int_jackback",
	"mar1_int_wagon34",
	"mar1_int_wagon_lookback1",
	"mar1_int_wagon_justmarst2",
	"mar1_int_wagon_justabigail1",
	"mar1_int_wagon_justmarst1",
	"mar1_int_wagon_strawberry_sign",
	"mar1_int_wagon_after_strawberry",
	"mar1_int_wagon_river_crossing",
	"mar1_int_wagon_after_crossing",
	"mar1_int_wagon_boulderpath",
	"mar1_int_wagon_2nd_to_last",
	"mar1_int_wagon_last",
	"mar1_int_abigail_firstcloseup",
	"mar1_intl_firstjohnandabi",
	"ped_lod_reduce_10pct",
	"ped_lod_reduce_20pct",
	"shadybelle_campfire_opt",
	"remove_interior_water_reflection",
	"finale1_knife_bridgeshot1",
	"finale1_knife_bridgeshot2",
	"finale1_knife_bridgeshot2Hi",
	"finale1_knife_bridgeshot1Hi",
	"mud1_wagonRideCascades",
	"rgng0_rsc1_cascadefix",
	"gua1_int_exposureANIM",
	"wnt4_mcs_gradientblend2",
	"gng1_ext_mod1",
	"veg_opt",
	"TRAILER2_shot4",
	"TRAILER2_shot14",
	"TRAILER2_shot15",
	"TRAILER2_shot16",
	"regionTexture0Red-Guarma",
	"regionTexture0Green-NewAustinEast",
	"regionTexture0Blue-ScarlettMeadows",
	"regionTexture0Alpha-BigValley",
	"regionTexture1Red-GreatPlains_MacFarlane_TallTrees",
	"regionTexture1Green-NOTUSED",
	"regionTexture1Blue-HeartlandsWest",
	"regionTexture1Alpha-HeartlandsEast",
	"regionTexture2Red-SaintDenis_Lakay",
	"regionTexture2Green-RoanokeRidge",
	"regionTexture2Blue-Snowy",
	"regionTexture2-NewAustinWest",
	"RegionTextureRed",
	"RegionTextureGreen",
	"RegionTextureBlue",
	"townValentine",
	"townStrawberry",
	"townAnnesburg",
	"townVanHorn",
	"townTumbleWeed",
	"townArmadillo",
	"townBlackwater",
	"townOldFortWallace",
	"townRhodes",
	"townNBD",
	"townSaintDenis",
	"townLonniesShack",
	"townSwamp",
	"noDirectLight",
	"campHorseShoe",
	"campLakay",
	"campClemens",
	"campBeaverHollow",
	"campShadyBelle",
	"noInteriorArtificialAmbient",
	"NOrain",
	"lightOpt_n07_app_e",
	"lightOpt_o13_R_junction",
	"lightOpt_i14_H_junction",
	"Butcher_vegopt",
	"vegopt_m06_utopia2",
	"vegopt_y13_guarma2",
	"vegopt_b12_fussar1",
	"vegopt_BH_CaveEnt",
	"vegopt_gala_industry1",
	"vegopt_i10_wapiti_nat3",
	"vegopt_c12_fussar2",
	"vegopt_m09_horseshoe_mud1",
	"vegopt_SD_mob3",
	"noExteriorBounceNightTime",
	"TemperatureTarget30c",
	"reduceHDR_Reflection_0pt1",
	"gameModeSlasher",
	"MetapeditorExterior",
	"Metapeditor_Desert",
	"Metapeditor_DryGrass",
	"Metapeditor_MudGrass",
	"Metapeditor_Snow",
	"MetapeditorExterior_wind",
	"Metapeditor_Desert_wind",
	"Metapeditor_DryGrass_wind",
	"Metapeditor_MudGrass_wind",
	"Metapeditor_Snow_wind",
	"AssetViewerInterior",
	"AssetViewerExterior",
	"AssetViewerPBRtool",
	"lightning",
	"lightning_weak",
	"lightning_strong",
	"lightning_cloud",
	"Underwater",
	"underwater_deep",
	"FortRiggs",
	"VOODOO",
	"SPOTMETER_default",
	"SPOTMETER_actionMode",
	"SPOTMETER_aiming",
	"SPOTMETER_riding",
	"SPOTMETER_FPS",
	"SPOTMETER_cinematicCam",
	"SPOTMETER_cutscene",
	"SPOTMETER_stealth",
	"SPOTMETER_spotted",
	"SANDSTORM",
	"TRAILER2_shot1",
	"TRAILER2_shot3",
	"TRAILER2_shot6",
	"TRAILER2_shot7",
	"TRAILER2_shot10",
	"TRAILER2_shot8-2",
	"TRAILER2_shot11",
	"TRAILER2_shot13",
	"TRAILER2_shot2",
	"winter1_MoonPos",
	"baseToneMapper",
	"newTonemapper",
	"newTonemapper_Hab",
	"WINTER2_mountainWind",
	"TRAILER2_shot5",
	"TRAILER2_shot12",
	"TRAILER2_shot18",
	"TRAILER2_shot19",
	"TRAILER2_shot17",
	"TRAILER2_shot21",
	"TRAILER2_shot22",
	"TRAILER2_shot23",
	"TRAILER2_shot24",
	"TRAILER2_shot26",
	"TRAILER2_shot27",
	"TRAILER2_shot27b",
	"TRAILER2_shot28",
	"TRAILER2_shot31",
	"TRAILER2_shot32",
	"TRAILER2_shot34",
	"TRAILER2_shot14b",
	"TRAILER2_shot27a",
	"TRAILER2_shot27aALT",
	"TRAILER2_shot30",
	"TRAILER2_shot30alt",
	"winter4_cloudsCamShot",
	"TRAILER2_shot36",
	"TRAILER2_shot37",
	"TRAILER2_shot38",
	"TRAILER_shot9-1",
	"TRAILER2_shot25",
	"TRAILER2_shot35",
	"TRAILER2_shot33",
	"trailer2_shot4_alt",
	"TRAILER2_shot1_alt",
	"TRAILER2_shot2_alt",
	"TRAILER2_shot12_alt",
	"TRAILER_shot9-2",

	"baseTONEMAPPING",
	"PlayerHealthDegrade",
	"PlayerStaminaDegrade",
	"lensdistort01",
	"PlayerHealthSickness",
	"Bloom01",
	"PennedInLight",
	"PennedInDark",
	"CrossLine01",
	"CrossLine02",
	"KingCastle_Blue01",
	"KingCastle_Blue02",
	"KingCastle_Red01",
	"KingCastle_Red02",
	"PlayerImpact01",
	"PlayerImpact02",
	"LensDistDrunk",
	"PlayerDrunk01",
	"PlayerDrugsHalluc01",
	"PlayerDrugsCoc01",
	"ConsumeGeneric01",
	"ConsumeFortGeneric01",
	"DeathFailClarity",
	"GenMoBlur100",
	"FastTravelGrade01",
	"OJDrinkShootGrade",
	"SpectatorCam01",
	"PedKill",
	"DuelClarity01",
	"DuelHoldShake01",
	"RiderFormFlash",
	"RiderForm01",
	"EagleEyeClarity",
	"DeadEyeClarity",
	"OverpowerClarity",
	"PlayerImpactNew",
	"PlayerImpactDistort",
	"HonorChange",
	"ScopeClarity",
	"PlayerInterrogateDistort",
	"PlayerInterrogateImpact",
	"DrugsShroomsClarity",
	"RPGWarning",
	"DeadEyeBase",
	"PredatorModeBase",
	"KillCamHonorChange",
	"SkyTimelapses01",
	"EagleEyeBase",
	"RespawnBase",
	"EagleEyeBaseBasic",
	"EagleEyeBaseBasicNight",
	"BinoClarity",
	"EagleEyeTest",
	"PlayerSickGuarma",
	"MissionChoice",
	"MissionChoiceBase",
	"DominoBase",
	"FussarDart",
	"LensDistFussarDart",
	"DeadEyeLight",
	"DeadEyeDark",
	"KillCamLight",
	"KillCamDark",
	"FlatProfile",
	"FlatProfileDark",
	"HealthRegen",
	"OJFiveFinger",
	"OJFiveFingerDark",
	"PlayerImpactFall",
	"RespawnLight",
	"RespawnDark",
	"TimelapseVOLight",
	"TimelapseVODark",
	"LensDistTimelapseVO",
	"Dutch_moonPos",
	"SkylapseCapture",
	"PauseMenu",
	"PauseMenuDark",
	"PlayerSpottedLight",
	"PLayerSpottedDark",
	"PoisonDartHit",
	"PlayerSickGuarmaMod",
	"PauseMenuExposure",
	"PlayerCamera",
	"DeadEyeEmpty",
	"EndCredits",
	"EndCreditsDark",
	"1P_GlassesDark",
	"1P_MaskDark",
	"1P_HatDark",
	"1P_MaskLow",
	"ChapterTitle_IntroCh01",
	"PlayerImpactVig",
	"ChapterTitle_Ch01_Intro",
	"ChapterTitle_Ch02_Intro",
	"ChapterTitle_Ch03_Intro",
	"ChapterTitle_Ch04_Intro",
	"ChapterTitle_Ch05_Intro",
	"ChapterTitle_Ch06_Intro",
	"ChapterTitle_Ch08_Intro",
	"ChapterTitle_Ch09_Intro",
	"ChapterTitle_Ch01_Outro",
	"ChapterTitle_Ch02_Outro",
	"ChapterTitle_Ch03_Outro",
	"ChapterTitle_Ch04_Outro",
	"ChapterTitle_Ch05_Outro",
	"ChapterTitle_Ch06_Outro",
	"ChapterTitle_Ch08_Outro",
	"ChapterTitle_Ch09_Outro",
	"INT_streetlighting",
	"StreetLighting",
	"StreetLightingtraffic",
	"StreetLightingJunction",
	"NoAmbientmult_interior",
	"FullAmbientmult_interior",
	"INT_NoAmbientmult",
	"INT_NoAmbientmult_art",
	"INT_FullAmbientmult",
	"INT_FULLAmbientmult_art",
	"INT_FULLAmbientmult_both",
	"INT_NoAmbientmult_both",
	"LODmult_global_reduce",
	"LODmult_HD_orphan_reduce",
	"LODmult_HD_orphan_LOD_reduce",
	"LODmult_LOD_reduce",
	"LODmult_SLOD1_reduce",
	"LODmult_SLOD2_reduce",
	"LODmult_SLOD3_reduce",
	"V_recycle_mainroom",
	"NewMicheal",
	"buildingTOP",
	"NewMichealupstairs",
	"NewMichealstoilet",
	"NewMichealgirly",
	"NoAmbientmult",
	"INT_garage",
	"int_amb_mult_large",
	"int_extlight_large",
	"ext_int_extlight_large",
	"int_extlight_small",
	"int_extlight_small_clipped",
	"int_extlight_large_fog",
	"int_extlight_small_fog",
	"int_extlight_none",
	"int_extlight_none_dark",
	"int_extlight_none_dark_fog",
	"int_extlight_none_fog",
	"int_clean_extlight_large",
	"int_clean_extlight_small",
	"int_clean_extlight_none",
	"TrainInterior",
}