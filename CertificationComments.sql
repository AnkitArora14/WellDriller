

drop table if exists CertComm;

select wd.REGISTRATION_NUMBER as certificationNumber, wd.driller_actor_id as drillerActorId, dr.ACTOR_NAME as drillerName ,wd.COMPANY_ACTOR_ID as companyActorId,
a.ACTOR_NAME as companyName, combo.activity_id activityId,
  activity.ACTIVITY_START_DATE activityStartDate, activity.ACTIVITY_COMPLETED_DATE activityCompletedDate,
  act_type.ACTIVITY_TYPE_NAME activityTypeName
  into CertComm
from wells_well_driller wd
  left join ara_combo combo on combo.actor_id=wd.driller_actor_id
  left join ara_activity activity on activity.activity_id = combo.activity_id
  left join ara_activity_type act_type on activity.ACTIVITY_TYPE_ID = act_type.ACTIVITY_TYPE_ID
  left join src.ara_actor a on a.ACTOR_ID=wd.COMPANY_ACTOR_ID
  left join src.ara_actor dr on dr.ACTOR_ID=wd.driller_actor_id
  left join ara_comments com on com.COMBO_ID=combo.COMBO_ID
where combo.activity_id is not null
  --and act_type.ACTIVITY_TYPE_NAME in ('PAYMENT RECEIVED', 'REG COMPLETED', 'OTHER', 'ENFORCEMENT TAKEN')
  --and activity.ACTIVITY_START_DATE >= ADD_MONTHS(TRUNC(SYSDATE), -12 * 10)


  CREATE NONCLUSTERED INDEX IX_CertComm_CertificationNumber
ON dbo.CertComm (certificationNumber);




