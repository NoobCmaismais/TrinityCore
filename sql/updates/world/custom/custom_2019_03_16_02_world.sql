-- Pathing for  Entry: 24059 'TDB FORMAT' 
SET @NPC := 313381;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=308.9486,`position_y`=1033.944,`position_z`=0.125 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,308.9486,1033.944,0.125,0,0,0,0,100,0),
(@PATH,2,314.0029,1018.994,0.3412666,0,0,0,0,100,0),
(@PATH,3,320.8901,1010.327,0.4315987,0,0,0,0,100,0),
(@PATH,4,330.5126,1003.346,0.09859085,0,0,0,0,100,0),
(@PATH,5,344.8755,995.5682,0.1175807,0,0,0,0,100,0),
(@PATH,6,352.806,975.4109,0.1175807,0,0,0,0,100,0),
(@PATH,7,363.8622,953.5993,0.09014606,0,0,0,0,100,0),
(@PATH,8,372.2463,937.2328,0.125,0,0,0,0,100,0),
(@PATH,9,372.9088,917.9118,0.1091633,0,0,0,0,100,0),
(@PATH,10,377.7089,897.1395,0.03409362,0,0,0,0,100,0),
(@PATH,11,372.9088,917.9118,0.1091633,0,0,0,0,100,0),
(@PATH,12,372.2463,937.2328,0.125,0,0,0,0,100,0),
(@PATH,13,363.8622,953.5993,0.09014606,0,0,0,0,100,0),
(@PATH,14,352.806,975.4109,0.1175807,0,0,0,0,100,0),
(@PATH,15,344.8755,995.5682,0.1175807,0,0,0,0,100,0),
(@PATH,16,330.5126,1003.346,0.09859085,0,0,0,0,100,0),
(@PATH,17,320.8901,1010.327,0.4315987,0,0,0,0,100,0),
(@PATH,18,314.0029,1018.994,0.3412666,0,0,0,0,100,0),
(@PATH,19,308.9486,1033.944,0.125,0,0,0,0,100,0),
(@PATH,20,296.0644,1047.966,0.04598331,0,0,0,0,100,0),
(@PATH,21,271.4892,1054.584,0.04598331,0,0,0,0,100,0),
(@PATH,22,296.0644,1047.966,0.04598331,0,0,0,0,100,0);
-- 0x2041004700177EC0001C8700007ECDE6 .go xyz 308.9486 1033.944 0.125

DELETE FROM `creature_formations` WHERE `leaderGUID`= 313381;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(313381, 313381, 0, 0, 515, 0, 0),
(313381, 313380, 4, 90, 515, 10, 22),
(313381, 313379, 4, 270, 515, 10, 22);


-- Pathing for  Entry: 23586 'TDB FORMAT' 
SET @NPC := 339121;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-192.125,`position_y`=1214.88,`position_z`=0.6278254 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-192.125,1214.88,0.6278254,0,0,0,0,100,0),
(@PATH,2,-177.1632,1235.759,0.9326949,0,0,0,0,100,0),
(@PATH,3,-142.623,1206.931,1.125,0,0,0,0,100,0),
(@PATH,4,-136.4357,1188.629,0.125,0,0,0,0,100,0),
(@PATH,5,-130.6683,1163.229,0.5926514,0,0,0,0,100,0),
(@PATH,6,-138.8937,1149.043,0.1249832,0,0,0,0,100,0),
(@PATH,7,-134.65,1118.2,0.5295404,0,0,0,0,100,0),
(@PATH,8,-152.4376,1100.244,0.3881829,0,0,0,0,100,0),
(@PATH,9,-174.2288,1083.737,0.08392616,0,0,0,0,100,0),
(@PATH,10,-187.5354,1094.549,1.733951,0,0,0,0,100,0),
(@PATH,11,-203.6665,1117.767,0.02158606,0,0,0,0,100,0),
(@PATH,12,-215.368,1135.62,-1.786696,0,0,0,0,100,0),
(@PATH,13,-215.9582,1155.653,-1.911696,0,0,0,0,100,0),
(@PATH,14,-206.0561,1178.538,-0.5679002,0,0,0,0,100,0),
(@PATH,15,-202.0117,1194.369,-0.2317162,0,0,0,0,100,0),
(@PATH,16,-192.125,1214.88,0.6278254,0,0,0,0,100,0);
-- 0x2041004700170880001C8700007ECDE6 .go xyz -192.125 1214.88 0.6278254


-- Pathing for  Entry: 23586 'TDB FORMAT' 
SET @NPC := 339170;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-148.2395,`position_y`=1214.866,`position_z`=0.9919434 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-148.2395,1214.866,0.9919434,0,0,0,0,100,0),
(@PATH,2,-141.0977,1192.989,0.125,0,0,0,0,100,0),
(@PATH,3,-135.5854,1173.052,0.1290283,0,0,0,0,100,0),
(@PATH,4,-141.5868,1124.066,0.1249994,0,0,0,0,100,0),
(@PATH,5,-153.2677,1218.847,3.023193,0,0,0,0,100,0),
(@PATH,6,-164.584,1238.172,1.875,0,0,0,0,100,0),
(@PATH,7,-182.968,1245.258,2.638261,0,0,0,0,100,0),
(@PATH,8,-198.5412,1252.48,0.5489058,0,0,0,0,100,0),
(@PATH,9,-200.3488,1263.651,1.302935,0,0,0,0,100,0),
(@PATH,10,-196.0485,1276.635,1.288582,0,0,0,0,100,0),
(@PATH,11,-194.7303,1299.047,1.715461,0,0,0,0,100,0),
(@PATH,12,-195.2259,1319.58,1.362702,0,0,0,0,100,0),
(@PATH,13,-197.6909,1338.085,0.1685638,0,0,0,0,100,0),
(@PATH,14,-207.5255,1358.867,-0.005558491,0,0,0,0,100,0),
(@PATH,15,-208.0637,1379.98,0.008210659,0,0,0,0,100,0),
(@PATH,16,-207.2668,1356.247,-0.005558491,0,0,0,0,100,0),
(@PATH,17,-197.7613,1336.673,0.3465424,0,0,0,0,100,0),
(@PATH,18,-195.1887,1319.176,1.353913,0,0,0,0,100,0),
(@PATH,19,-194.7753,1288.607,1.478035,0,0,0,0,100,0),
(@PATH,20,-199.9926,1259.637,1.181962,0,0,0,0,100,0),
(@PATH,21,-191.1317,1241.622,0.7102828,0,0,0,0,100,0),
(@PATH,22,-170.5444,1241.329,1.623613,0,0,0,0,100,0);
-- 0x2041004700170880001C870000FECDE8 .go xyz -148.2395 1214.866 0.9919434
