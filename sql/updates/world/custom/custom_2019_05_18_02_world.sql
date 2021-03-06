-- Diseased Vulture SAI
SET @ENTRY := 47202;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY) AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,0,11,87965,2,0,0,0,0,1,0,0,0,0,0,0,0,"Diseased Vulture - On Death - Cast '87965'");
 
-- Remove npcflags. Quest is not offered by the npc
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=47202;
 
-- Remove quest starter
DELETE FROM `creature_queststarter` WHERE `quest`=27940;
 
-- Condition for source Quest available condition type Quest taken
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceGroup`=0 AND `SourceEntry`=27940 AND `SourceId`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 27940, 0, 1, 14, 0, 27928, 0, 0, 0, 0, 0, '', 'Quest Dirty Birds available if quest A Favor for the Furrier has not not been taken.'),
(19, 0, 27940, 0, 1, 14, 0, 27939, 0, 0, 0, 0, 0, '', 'Quest Dirty Birds available if quest The Desert Fox has not not been taken.');

DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_gen_launch_quest' AND `spell_id`= 87965;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(87965, 'spell_gen_launch_quest');

-- Creature Mangy Hyena 45202 SAI
SET @ENTRY := 45202;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 12000, 11, 85415, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "When in combat and timer at the begining between 5000 and 8000 ms (and later repeats every 12000 and 12000 ms) - Self: Cast spell Mangle (85415) on Victim // Mangy Hyena - In Combat - Cast 'Mangle'"),
(@ENTRY, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 84437, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Cast spell Launch Quest (84437) on Self // ");
