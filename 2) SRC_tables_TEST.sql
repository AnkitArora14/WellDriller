use WellDriller;

drop table if exists dbo.V_ARA_ACTIVITY_TYPE;
select * into dbo.V_ARA_ACTIVITY_TYPE from openquery(awstepic,'select * from EPERMIT_ONLINE.V_ARA_ACTIVITY_TYPE@LINK_TO_TEPERMIT')

drop table if exists dbo.V_ARA_ACTIVITY;
select * into dbo.V_ARA_ACTIVITY from openquery(awstepic,'select * from EPERMIT_ONLINE.V_ARA_ACTIVITY@LINK_TO_TEPERMIT')

drop table if exists dbo.V_ARA_COMBO;
select * into dbo.V_ARA_COMBO from openquery(awstepic,'select * from EPERMIT_ONLINE.V_ARA_COMBO@LINK_TO_TEPERMIT')

drop table if exists dbo.v_well_driller;
select * into dbo.v_well_driller from openquery(awstepic,'select * from EPERMIT_ONLINE.v_well_driller@LINK_TO_TEPERMIT')

drop table if exists dbo.v_ara_actor;
select * into dbo.v_ara_actor from openquery(awstepic,'select * from EPERMIT_ONLINE.v_ara_actor@LINK_TO_TEPERMIT')
--  select * into dbo.ara_combo from openquery(awstepic,'select * from ara.combo')
 

drop table if exists dbo.ara_activity;
select * into dbo.ara_activity from openquery(awstepic,'select * from ara.activity')


drop table if exists dbo.ara_activity_type;
select * into dbo.ara_activity_type from openquery(awstepic,'select * from ara.activity_type')

drop table if exists dbo.ara_comments;
select * into dbo.ara_comments from openquery(awstepic,'select * from ara.comments')


drop table if exists dbo.wells_well_driller;
select *  into wells_well_driller
  from openquery(awstepic,'select * from wells.well_driller')
  
  
  
  
  
--drop table if exists src.ara_actor;
--select * into src.ara_actor from openquery(awstepic,'select * from ara.actor')

--drop table if exists src.ara_group_location;
--select * into src.ara_group_location from openquery(awstepic,'select * from ara.group_location')

--drop table if exists src.ara_info;
--select * into src.ara_info from openquery(awstepic,'select * from ara.info')

--drop table if exists src.ara_location;
--select * into src.ara_location from openquery(awstepic,'select * from ara.location')

--drop table if exists src.view_well_driller;
--select * into src.view_well_driller from openquery(awstepic,'select * from wells.view_Well_driller')



drop table if exists dbo.ara_combo;
SELECT * 
INTO dbo.ara_combo
FROM OPENQUERY(awstepic, 'SELECT * FROM ara.combo WHERE 1=0');


-- Batch 1: combo_id 1 to 1,000,000
INSERT INTO dbo.ara_combo
SELECT * FROM OPENQUERY(awstepic, '
  SELECT * FROM ara.combo WHERE combo_id BETWEEN 1 AND 1000000
');

-- Batch 2: combo_id 1,000,001 to 2,000,000
INSERT INTO dbo.ara_combo
SELECT * FROM OPENQUERY(awstepic, '
  SELECT * FROM ara.combo WHERE combo_id BETWEEN 1000001 AND 2000000
');

-- Batch 3: combo_id 2,000,001 to 3,000,000
INSERT INTO dbo.ara_combo
SELECT * FROM OPENQUERY(awstepic, '
  SELECT * FROM ara.combo WHERE combo_id BETWEEN 2000001 AND 3000000
');

-- Batch 4: combo_id 3,000,001 to 4,000,000
INSERT INTO dbo.ara_combo
SELECT * FROM OPENQUERY(awstepic, '
  SELECT * FROM ara.combo WHERE combo_id BETWEEN 3000001 AND 4000000
');

-- Batch 5: combo_id 4,000,001 to 5,000,000
INSERT INTO dbo.ara_combo
SELECT * FROM OPENQUERY(awstepic, '
  SELECT * FROM ara.combo WHERE combo_id BETWEEN 4000001 AND 5000000
');

-- Batch 6: combo_id 5,000,001 to 6,000,000
INSERT INTO dbo.ara_combo
SELECT * FROM OPENQUERY(awstepic, '
  SELECT * FROM ara.combo WHERE combo_id BETWEEN 5000001 AND 6000000
');


-- Batch 7: combo_id 6,000,001 to max (catch remaining records)
INSERT INTO dbo.ara_combo
SELECT * FROM OPENQUERY(awstepic, '
  SELECT * FROM ara.combo WHERE combo_id>=6000001
');

