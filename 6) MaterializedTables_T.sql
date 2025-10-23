USE [WellDriller];

--Script-1
INSERT INTO [WellDriller].[dbo].[CertificatePaymentInfo_Materialized]([activityId],[paymentInfo])
SELECT [activityId],[paymentInfo]
FROM [WellDriller].[dbo].[V_paymentInfo]
 
--Script-2
INSERT INTO [WellDriller].[dbo].[CertificateActivityComments_Materialized] ([activityId],[comments])
SELECT [activityId],[comments]
FROM [WellDriller].[dbo].[V_ActivityComments]