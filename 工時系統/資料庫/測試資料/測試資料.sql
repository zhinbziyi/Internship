SET NOCOUNT ON;
BEGIN TRAN;
-- ==== Employees ====
SET IDENTITY_INSERT dbo.Employees ON;
INSERT INTO dbo.Employees (id, Name, IsActive) VALUES (1, N'陳志明', 1);
INSERT INTO dbo.Employees (id, Name, IsActive) VALUES (2, N'林雅筑', 1);
INSERT INTO dbo.Employees (id, Name, IsActive) VALUES (3, N'黃志偉', 1);
INSERT INTO dbo.Employees (id, Name, IsActive) VALUES (4, N'王小安', 1);
INSERT INTO dbo.Employees (id, Name, IsActive) VALUES (5, N'李佩珊', 1);
INSERT INTO dbo.Employees (id, Name, IsActive) VALUES (6, N'周柏宇', 1);
SET IDENTITY_INSERT dbo.Employees OFF;

-- ==== TopTasks ====
SET IDENTITY_INSERT dbo.TopTasks ON;
INSERT INTO dbo.TopTasks (id, Name, Description, Budget, Manager_Id, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (1, N'CRM 系統開發', N'用於客戶管理的系統', 300.00, 1, 2, 3, '2025-07-12 10:00:00', '2025-08-06 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.TopTasks (id, Name, Description, Budget, Manager_Id, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (2, N'行銷官網改版', N'品牌形象與SEO優化', 180.00, 2, 2, 3, '2025-07-02 10:00:00', '2025-08-09 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.TopTasks (id, Name, Description, Budget, Manager_Id, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (3, N'內部報表平台', N'整合多來源報表', 250.00, 3, 2, 3, '2025-06-22 10:00:00', '2025-08-10 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.TopTasks (id, Name, Description, Budget, Manager_Id, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (4, N'AI 菜單系統', N'得來FOOD核心專案', 500.00, 1, 2, 3, '2025-06-02 10:00:00', NULL, 0, NULL, NULL);
INSERT INTO dbo.TopTasks (id, Name, Description, Budget, Manager_Id, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (5, N'ERP 導入', N'採購與庫存模組', 420.00, 2, 2, 3, '2025-07-22 10:00:00', NULL, 0, NULL, NULL);
SET IDENTITY_INSERT dbo.TopTasks OFF;

-- ==== SubTasks ====
SET IDENTITY_INSERT dbo.SubTasks ON;
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (1, 0, 1, N'需求訪談與規劃', N'與業務、客戶討論需求，產出規格書', 8.00, 2, N'進行中', 2, 3, '2025-07-17 10:00:00', '2025-08-06 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (2, 1, 1, N'後端 API 設計', N'設計資料庫與 API 規格', 12.00, 3, N'待開始', 2, 3, '2025-07-22 10:00:00', '2025-08-06 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (3, 0, 1, N'前端介面切版', N'建立元件與頁面流程', 10.00, 4, N'待開始', 2, 3, '2025-07-30 10:00:00', '2025-08-05 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (4, 0, 2, N'資訊架構重整', N'導覽與內容層級', 6.00, 5, N'進行中', 2, 3, '2025-07-24 10:00:00', '2025-08-09 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (5, 4, 2, N'SEO 優化', N'關鍵字與結構化資料', 9.00, 5, N'待開始', 2, 3, '2025-08-01 10:00:00', '2025-08-09 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (6, 0, 2, N'GA4 事件設計', N'轉換漏斗追蹤', 5.00, 6, N'待開始', 2, 3, '2025-08-03 10:00:00', '2025-08-09 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (7, 0, 3, N'資料來源串接', N'ERP 與 CRM 串接', 14.00, 3, N'進行中', 2, 3, '2025-07-28 10:00:00', '2025-08-10 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (8, 7, 3, N'報表模板設計', N'月報、季報模板', 7.00, 2, N'待開始', 2, 3, '2025-07-30 10:00:00', '2025-08-10 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (9, 0, 3, N'權限與審核', N'角色權限與操作日誌', 8.00, 1, N'待開始', 2, 3, '2025-07-30 10:00:00', '2025-08-10 10:00:00', 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (10, 0, 4, N'PDF 解析模組', N'上傳體脂計報告解析', 16.00, 3, N'進行中', 2, 3, '2025-07-12 10:00:00', NULL, 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (11, 10, 4, N'再生機制', N'菜單針對勾選餐點再生', 12.00, 4, N'待開始', 2, 3, '2025-07-13 10:00:00', NULL, 0, NULL, NULL);
INSERT INTO dbo.SubTasks (id, Parent_Id, TopTask_Id, Name, Description, Estimated_Hours, Assignee_Id, Status, CreatedById, UpdatedById, CreatedAt, UpdatedAt, IsDeleted, DeletedById, DeletedAT) VALUES (12, 0, 5, N'採購流程盤點', N'現況與差異分析', 6.00, 6, N'進行中', 2, 3, '2025-08-02 10:00:00', NULL, 0, NULL, NULL);
SET IDENTITY_INSERT dbo.SubTasks OFF;

-- ==== WorkHours (15) ====
SET IDENTITY_INSERT dbo.WorkHours ON;
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (1, 1, 2, 2.50, N'需求訪談與會議紀錄整理', '2025-08-10 10:00:00', '2025-08-10 11:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (2, 1, 2, 1.00, N'設計 ERD 與關聯', '2025-08-09 09:00:00', '2025-08-09 10:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (3, 2, 3, 3.00, N'撰寫 API 規格書', '2025-08-08 08:00:00', '2025-08-08 09:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (4, 3, 4, 2.00, N'切版與元件化', '2025-08-07 07:00:00', '2025-08-07 08:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (5, 4, 5, 1.50, N'Breadcrumb 與導覽修正', '2025-08-06 06:00:00', '2025-08-06 07:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (6, 5, 5, 2.00, N'撰寫結構化資料', '2025-08-05 10:00:00', '2025-08-05 11:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (7, 6, 6, 1.00, N'設計 GA4 事件', '2025-08-04 09:00:00', '2025-08-04 10:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (8, 7, 3, 2.50, N'資料串接測試', '2025-08-03 08:00:00', '2025-08-03 09:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (9, 8, 2, 1.50, N'報表 SQL 調校', '2025-08-02 07:00:00', '2025-08-02 08:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (10, 9, 1, 1.00, N'權限規則討論', '2025-08-01 06:00:00', '2025-08-01 07:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (11, 10, 3, 2.00, N'PDF 版面解析規則', '2025-07-31 10:00:00', '2025-07-31 11:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (12, 11, 4, 2.50, N'再生機制邏輯設計', '2025-07-30 09:00:00', '2025-07-30 10:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (13, 12, 6, 1.50, N'採購流程盤點會議', '2025-07-29 08:00:00', '2025-07-29 09:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (14, 3, 4, 1.50, N'庫存同步測試', '2025-07-28 07:00:00', '2025-07-28 08:00:00');
INSERT INTO dbo.WorkHours (id, SubTask_Id, Employee_Id, Work_Hour, Word_Description, CreatedAt, UpdatedAt) VALUES (15, 7, 3, 1.00, N'工時系統 API 設計', '2025-07-27 06:00:00', '2025-07-27 07:00:00');
SET IDENTITY_INSERT dbo.WorkHours OFF;

COMMIT;