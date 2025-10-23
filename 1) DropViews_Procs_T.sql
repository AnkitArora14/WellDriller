USE [WellDriller]

DROP VIEW [dbo].[CertificateComments];
DROP VIEW [dbo].[V_ActivityComments]; --used by Sundar
DROP VIEW [dbo].[V_CertificateActivityList];
DROP VIEW [dbo].[V_paymentInfo]; --used by Sundar
DROP VIEW [dbo].[vw_Driller_Demographics];
DROP VIEW [dbo].[vw_Driller_Status];
DROP VIEW [dbo].[vw_New_Driller_Demographics];

DROP PROCEDURE [dbo].[GetDEPTrackingId];
DROP PROCEDURE [dbo].[GetListofCertificateActivityDetails];
DROP PROCEDURE [dbo].[GetListofCertificateActivityDetailsByCertificateId];
DROP PROCEDURE [dbo].[GetListofCertificateDetails];
DROP PROCEDURE [dbo].[GetListofCertificateStatus];
DROP PROCEDURE [dbo].[GetStatusDetails];
DROP PROCEDURE [dbo].[InsertCertificateStatus];
DROP PROCEDURE [dbo].[sp_data_cleanse_pa];
DROP PROCEDURE [dbo].[sp_GetCertificateReportData];
