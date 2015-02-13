/*
This script was created by Visual Studio on 13-02-2015 at 01:11.
Run this script on SM-MBP\SQLEXPRESS.Patient (sm-MBP\sm) to make it the same as SM-MBP\SQLEXPRESS.patient_ (sm-MBP\sm).
This script performs its actions in the following order:
1. Disable foreign-key constraints.
2. Perform DELETE commands. 
3. Perform UPDATE commands.
4. Perform INSERT commands.
5. Re-enable foreign-key constraints.
Please back up your target database before running this script.
*/
SET NUMERIC_ROUNDABORT OFF
GO
SET XACT_ABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
/*Pointer used for text / image updates. This might not be needed, but is declared here just in case*/
DECLARE @pv binary(16)
BEGIN TRANSACTION
ALTER TABLE [dbo].[medicalprocedure] DROP CONSTRAINT [FK__medicalpr__follo__21B6055D]
ALTER TABLE [dbo].[conducts] DROP CONSTRAINT [FK__conducts__physic__25869641]
ALTER TABLE [dbo].[conducts] DROP CONSTRAINT [FK__conducts__proced__267ABA7A]
ALTER TABLE [dbo].[conducts] DROP CONSTRAINT [FK__conducts_visits]
ALTER TABLE [dbo].[visits] DROP CONSTRAINT [FK__visits__patienti__1BFD2C07]
ALTER TABLE [dbo].[visits] DROP CONSTRAINT [FK__visits__physicia__1CF15040]
ALTER TABLE [dbo].[patient] DROP CONSTRAINT [FK__patient__insuran__1920BF5C]
ALTER TABLE [dbo].[patient] DROP CONSTRAINT [FK__patient__primary__145C0A3F]
ALTER TABLE [dbo].[insurance] DROP CONSTRAINT [FK__insurance__cardh__182C9B23]
INSERT INTO [dbo].[insurance] ([cardholder], [company], [copay]) VALUES (2, N'Nopay', 20.00)
INSERT INTO [dbo].[insurance] ([cardholder], [company], [copay]) VALUES (5, N'Till Death', 25.00)
INSERT INTO [dbo].[insurance] ([cardholder], [company], [copay]) VALUES (7, N'Exclaim Insurers', 15.00)
INSERT INTO [dbo].[insurance] ([cardholder], [company], [copay]) VALUES (9, N'Copay Surprise', NULL)
SET IDENTITY_INSERT [dbo].[patient] ON
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (1, N'Jane', N'Doe', N'F', 1, '19720823', 2)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (2, N'Jack', N'Doe', N'M', 1, '19710224', 2)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (3, N'Jack', N'Doe Jr.', N'M', 1, '19981113', 2)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (4, N'Earl', N'Jackson', N'M', NULL, '19560101', NULL)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (5, N'Fred', N'Smith', N'M', 3, NULL, 5)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (6, N'Sara', N'Smith', N'F', 2, '19670809', 5)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (7, N'Pat', N'Rosenberg', NULL, 3, '19700517', 7)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (8, N'George', N'Jones', N'M', 3, '19651123', 9)
INSERT INTO [dbo].[patient] ([patientid], [firstname], [lastname], [gender], [primaryphysician], [birthday], [insurance]) VALUES (9, N'Melissa ', N'Franklin', N'F', 3, '19620517', 9)
SET IDENTITY_INSERT [dbo].[patient] OFF
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (2, '20041215', 1)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (2, '20050119', 3)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (3, '20050405', 1)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (3, '20050426', NULL)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (3, '20050802', 2)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (4, '20040329', 2)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (4, '20050118', NULL)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (5, '20041125', 3)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (5, '20051125', 2)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (7, '20041012', 3)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (7, '20041115', 2)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (7, '20050302', 3)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (7, '20050627', 1)
INSERT INTO [dbo].[visits] ([patientid], [visitdate], [physicianid]) VALUES (8, '20050102', 2)
SET IDENTITY_INSERT [dbo].[physician] ON
INSERT INTO [dbo].[physician] ([physicianid], [name], [salary]) VALUES (1, N'Edward Scalpelhands           ', 100000.00)
INSERT INTO [dbo].[physician] ([physicianid], [name], [salary]) VALUES (2, N'Ann Ethesiologist             ', 134000.00)
INSERT INTO [dbo].[physician] ([physicianid], [name], [salary]) VALUES (3, N'Jane Doe                      ', NULL)
INSERT INTO [dbo].[physician] ([physicianid], [name], [salary]) VALUES (4, N'Neal Natology                 ', 167000.00)
SET IDENTITY_INSERT [dbo].[physician] OFF
SET IDENTITY_INSERT [dbo].[conducts] ON
INSERT INTO [dbo].[conducts] ([patientid], [visitdate], [procedureid], [physicianid], [charge]) VALUES (2, '20041215', N'DRUGS', 1, 10.00)
INSERT INTO [dbo].[conducts] ([patientid], [visitdate], [procedureid], [physicianid], [charge]) VALUES (3, '20050405', N'DRUGS', 1, 12.00)
INSERT INTO [dbo].[conducts] ([patientid], [visitdate], [procedureid], [physicianid], [charge]) VALUES (3, '20050405', N'STICH', 1, 45.00)
INSERT INTO [dbo].[conducts] ([patientid], [visitdate], [procedureid], [physicianid], [charge]) VALUES (3, '20050426', N'RMSTC', 3, 60.00)
INSERT INTO [dbo].[conducts] ([patientid], [visitdate], [procedureid], [physicianid], [charge]) VALUES (4, '20050118', N'RMSTC', 2, 110.00)
INSERT INTO [dbo].[conducts] ([patientid], [visitdate], [procedureid], [physicianid], [charge]) VALUES (5, '20041125', N'STICH', 3, 50.00)
INSERT INTO [dbo].[conducts] ([patientid], [visitdate], [procedureid], [physicianid], [charge]) VALUES (7, '20041012', N'DRUGS', 4, 12.00)
SET IDENTITY_INSERT [dbo].[conducts] OFF
INSERT INTO [dbo].[medicalprocedure] ([procedureid], [name], [followup], [risk], [price]) VALUES (N'BNDAD', N'Bandage', NULL, N'Minimal             ', 25.00)
INSERT INTO [dbo].[medicalprocedure] ([procedureid], [name], [followup], [risk], [price]) VALUES (N'DRUGS', N'Medicate', NULL, N'High                ', 15.00)
INSERT INTO [dbo].[medicalprocedure] ([procedureid], [name], [followup], [risk], [price]) VALUES (N'RDPBF', N'Reduce % Body Fat for $', NULL, N'Certain Death       ', NULL)
INSERT INTO [dbo].[medicalprocedure] ([procedureid], [name], [followup], [risk], [price]) VALUES (N'RMSTC', N'Remove Stitches', NULL, N'Moderate            ', 100.00)
INSERT INTO [dbo].[medicalprocedure] ([procedureid], [name], [followup], [risk], [price]) VALUES (N'STICH', N'Stitch', N'RMSTC', N'Moderate            ', 50.00)
ALTER TABLE [dbo].[medicalprocedure]
    ADD CONSTRAINT [FK__medicalpr__follo__21B6055D] FOREIGN KEY ([followup]) REFERENCES [dbo].[medicalprocedure] ([procedureid])
ALTER TABLE [dbo].[conducts]
    ADD CONSTRAINT [FK__conducts__physic__25869641] FOREIGN KEY ([physicianid]) REFERENCES [dbo].[physician] ([physicianid])
ALTER TABLE [dbo].[conducts]
    ADD CONSTRAINT [FK__conducts__proced__267ABA7A] FOREIGN KEY ([procedureid]) REFERENCES [dbo].[medicalprocedure] ([procedureid])
ALTER TABLE [dbo].[conducts]
    ADD CONSTRAINT [FK__conducts_visits] FOREIGN KEY ([patientid], [visitdate]) REFERENCES [dbo].[visits] ([patientid], [visitdate])
ALTER TABLE [dbo].[visits]
    ADD CONSTRAINT [FK__visits__patienti__1BFD2C07] FOREIGN KEY ([patientid]) REFERENCES [dbo].[patient] ([patientid])
ALTER TABLE [dbo].[visits]
    ADD CONSTRAINT [FK__visits__physicia__1CF15040] FOREIGN KEY ([physicianid]) REFERENCES [dbo].[physician] ([physicianid])
ALTER TABLE [dbo].[patient]
    ADD CONSTRAINT [FK__patient__insuran__1920BF5C] FOREIGN KEY ([insurance]) REFERENCES [dbo].[insurance] ([cardholder])
ALTER TABLE [dbo].[patient]
    ADD CONSTRAINT [FK__patient__primary__145C0A3F] FOREIGN KEY ([primaryphysician]) REFERENCES [dbo].[physician] ([physicianid])
ALTER TABLE [dbo].[insurance]
    ADD CONSTRAINT [FK__insurance__cardh__182C9B23] FOREIGN KEY ([cardholder]) REFERENCES [dbo].[patient] ([patientid])
COMMIT TRANSACTION
