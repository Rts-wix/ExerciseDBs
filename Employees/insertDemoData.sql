/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------

*/

/*
-- Først den originale, kommenteret ud
INSERT INTO departments VALUES ('ADMIN', 'Administration', NULL, NULL);
INSERT INTO departments VALUES ('ACCNT', 'Accounting', NULL, 'ADMIN');
INSERT INTO departments VALUES ('CNSLT', 'Consulting', NULL, 'ADMIN');
INSERT INTO departments VALUES ('HDWRE', 'Hardware', NULL, 'CNSLT');

INSERT INTO employees VALUES (1, 'Al', 'Betheleader', 'ADMIN', 70000);
INSERT INTO employees VALUES (2, 'PI', 'Rsquared', 'ACCNT', 40000);
INSERT INTO employees VALUES (3, 'Harry', 'Hardware', 'HDWRE', 50000);
INSERT INTO employees VALUES (4, 'Sussie', 'Software', 'CNSLT', 60000);
INSERT INTO employees VALUES (5, 'Abe', 'Advice', 'CNSLT', 30000);
INSERT INTO employees VALUES (6, 'Hardly', 'Aware', NULL, 65000);

UPDATE departments SET managerid = 1 WHERE code = 'ADMIN';
UPDATE departments SET managerid = 2 WHERE code = 'ACCNT';
UPDATE departments SET managerid = 3 WHERE code = 'HDWRE';
UPDATE departments SET managerid = 4 WHERE code = 'CNSLT';

INSERT INTO projects VALUES ('EMPHAPPY', 'ADMIN', 'Employee Moral', '2002-03-14', NULL, 0);
INSERT INTO projects VALUES ('ROBOSPSE', 'CNSLT', 'Robotic Spouse', '2002-03-14', NULL, 200000);
INSERT INTO projects VALUES ('ADT4MFIA', 'ACCNT', 'Mofia Audit', '2003-07-3', '2003-11-30', 100000);
INSERT INTO PROJECTS VALUES ('DNLDCLNT', 'CNSLT', 'Download Client', '2005-02-03', NULL, 15000);

INSERT INTO workson VALUES (2, 'ADT4MFIA', 0.50);
INSERT INTO workson VALUES (3, 'ROBOSPSE', 0.75);
INSERT INTO workson VALUES (4, 'ROBOSPSE', 0.75);
INSERT INTO workson VALUES (5, 'ROBOSPSE', 0.50);
INSERT INTO workson VALUES (5, 'ADT4MFIA', 0.60);
INSERT INTO workson VALUES (3, 'DNLDCLNT', 0.25);
*/

-- Her kommer så m$ versionen. 'Meget' mere læselig ... hrmmmf

ALTER TABLE [dbo].[employees]  DROP CONSTRAINT [FK__employees__deptc__145C0A3F]
GO
ALTER TABLE [dbo].[departments] DROP CONSTRAINT [FK__departmen__subde__1367E606]
GO

SET IDENTITY_INSERT [dbo].[employees] ON 
GO
INSERT [dbo].[employees] ([employeeid], [firstname], [lastname], [deptcode], [salary]) VALUES (1, N'Al', N'Betheleader', N'ADMIN', CAST(70000.00 AS Numeric(9, 2)))
GO
INSERT [dbo].[employees] ([employeeid], [firstname], [lastname], [deptcode], [salary]) VALUES (2, N'PI', N'Rsquared', N'ACCNT', CAST(40000.00 AS Numeric(9, 2)))
GO
INSERT [dbo].[employees] ([employeeid], [firstname], [lastname], [deptcode], [salary]) VALUES (3, N'Harry', N'Hardware', N'HDWRE', CAST(50000.00 AS Numeric(9, 2)))
GO
INSERT [dbo].[employees] ([employeeid], [firstname], [lastname], [deptcode], [salary]) VALUES (4, N'Sussie', N'Software', N'CNSLT', CAST(60000.00 AS Numeric(9, 2)))
GO
INSERT [dbo].[employees] ([employeeid], [firstname], [lastname], [deptcode], [salary]) VALUES (5, N'Abe', N'Advice', N'CNSLT', CAST(30000.00 AS Numeric(9, 2)))
GO
INSERT [dbo].[employees] ([employeeid], [firstname], [lastname], [deptcode], [salary]) VALUES (6, N'Hardly', N'Aware', NULL, CAST(65000.00 AS Numeric(9, 2)))
GO
SET IDENTITY_INSERT [dbo].[employees] OFF
GO

INSERT [dbo].[departments] ([code], [name], [managerid], [subdeptof]) VALUES (N'ACCNT', N'Accounting', 2, N'ADMIN')
GO
INSERT [dbo].[departments] ([code], [name], [managerid], [subdeptof]) VALUES (N'ADMIN', N'Administration', 1, NULL)
GO
INSERT [dbo].[departments] ([code], [name], [managerid], [subdeptof]) VALUES (N'CNSLT', N'Consulting', 4, N'ADMIN')
GO
INSERT [dbo].[departments] ([code], [name], [managerid], [subdeptof]) VALUES (N'HDWRE', N'Hardware', 3, N'CNSLT')
GO

INSERT [dbo].[projects] ([projectid], [deptcode], [description], [startdate], [enddate], [revenue]) VALUES (N'ADT4MFIA', N'ACCNT', N'Mofia Audit', CAST(N'2003-07-03' AS Date), CAST(N'2003-11-30' AS Date), CAST(100000.00 AS Numeric(12, 2)))
GO
INSERT [dbo].[projects] ([projectid], [deptcode], [description], [startdate], [enddate], [revenue]) VALUES (N'DNLDCLNT', N'CNSLT', N'Download Client', CAST(N'2005-02-03' AS Date), NULL, CAST(15000.00 AS Numeric(12, 2)))
GO
INSERT [dbo].[projects] ([projectid], [deptcode], [description], [startdate], [enddate], [revenue]) VALUES (N'EMPHAPPY', N'ADMIN', N'Employee Moral', CAST(N'2002-03-14' AS Date), NULL, CAST(0.00 AS Numeric(12, 2)))
GO
INSERT [dbo].[projects] ([projectid], [deptcode], [description], [startdate], [enddate], [revenue]) VALUES (N'ROBOSPSE', N'CNSLT', N'Robotic Spouse', CAST(N'2002-03-14' AS Date), NULL, CAST(200000.00 AS Numeric(12, 2)))
GO

INSERT [dbo].[workson] ([employeeid], [projectid], [assignedtime]) VALUES (2, N'ADT4MFIA', CAST(0.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[workson] ([employeeid], [projectid], [assignedtime]) VALUES (3, N'DNLDCLNT', CAST(0.25 AS Decimal(3, 2)))
GO
INSERT [dbo].[workson] ([employeeid], [projectid], [assignedtime]) VALUES (3, N'ROBOSPSE', CAST(0.75 AS Decimal(3, 2)))
GO
INSERT [dbo].[workson] ([employeeid], [projectid], [assignedtime]) VALUES (4, N'ROBOSPSE', CAST(0.75 AS Decimal(3, 2)))
GO
INSERT [dbo].[workson] ([employeeid], [projectid], [assignedtime]) VALUES (5, N'ADT4MFIA', CAST(0.60 AS Decimal(3, 2)))
GO
INSERT [dbo].[workson] ([employeeid], [projectid], [assignedtime]) VALUES (5, N'ROBOSPSE', CAST(0.50 AS Decimal(3, 2)))
GO
--ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [FK__departmen__manag__1273C1CD] FOREIGN KEY([managerid])
--REFERENCES [dbo].[employees] ([employeeid])
--GO
--ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [FK__departmen__manag__1273C1CD]
--GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [FK__departmen__subde__1367E606] FOREIGN KEY([subdeptof])
REFERENCES [dbo].[departments] ([code])
GO
ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [FK__departmen__subde__1367E606]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK__employees__deptc__145C0A3F] FOREIGN KEY([deptcode])
REFERENCES [dbo].[departments] ([code])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK__employees__deptc__145C0A3F]
GO
--ALTER TABLE [dbo].[projects]  WITH CHECK ADD  CONSTRAINT [FK__projects__deptco__173876EA] FOREIGN KEY([deptcode])
--REFERENCES [dbo].[departments] ([code])
--GO
--ALTER TABLE [dbo].[projects] CHECK CONSTRAINT [FK__projects__deptco__173876EA]
--GO
--ALTER TABLE [dbo].[workson]  WITH CHECK ADD  CONSTRAINT [FK__workson__employe__1A14E395] FOREIGN KEY([employeeid])
--REFERENCES [dbo].[employees] ([employeeid])
--GO
--ALTER TABLE [dbo].[workson] CHECK CONSTRAINT [FK__workson__employe__1A14E395]
--GO
--ALTER TABLE [dbo].[workson]  WITH CHECK ADD  CONSTRAINT [FK__workson__project__1B0907CE] FOREIGN KEY([projectid])
--REFERENCES [dbo].[projects] ([projectid])
--GO
--ALTER TABLE [dbo].[workson] CHECK CONSTRAINT [FK__workson__project__1B0907CE]
--GO