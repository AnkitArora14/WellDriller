use WellDriller;


drop table if exists src.ara_actor;
select * into src.ara_actor from openquery(awstepic,'select * from ara.actor')

drop table if exists src.ara_group_location;
select * into src.ara_group_location from openquery(awstepic,'select * from ara.group_location')

drop table if exists src.ara_info;
select * into src.ara_info from openquery(awstepic,'select * from ara.info')

drop table if exists src.ara_location;
select * into src.ara_location from openquery(awstepic,'select * from ara.location')

drop table if exists src.view_well_driller;
select * into src.view_well_driller from openquery(awstepic,'select * from wells.view_Well_driller')
