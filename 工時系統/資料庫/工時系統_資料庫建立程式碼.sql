CREATE DATABASE TimesheetSystem_new;
GO

USE TimesheetSystem_new;
GO

-- 員工資料表
CREATE TABLE Employees (
    id INT PRIMARY KEY IDENTITY,           -- 員工主鍵，自動遞增
    Name NVARCHAR(100) NOT NULL,           -- 員工姓名
    IsActive BIT NOT NULL                  -- 是否在職中（1=在職, 0=離職）
);
GO

-- 專案（TopTasks）資料表
CREATE TABLE TopTasks (
    id INT PRIMARY KEY IDENTITY,           -- 專案主鍵
    Name NVARCHAR(100) NOT NULL,           -- 專案簡稱
    Description NVARCHAR(MAX),             -- 專案描述
    Budget DECIMAL(10,2),                  -- 預算（萬元）
    Manager_Id INT,                        -- 專案經理（員工 ID）
    CreatedById INT,                       -- 建立人員 ID
    UpdatedById INT,                       -- 最後修改人員 ID
    CreatedAt DATETIME,                    -- 建立時間
    UpdatedAt DATETIME,                    -- 最後更新時間
    IsDeleted BIT,                         -- 是否已刪除
    DeletedById INT,                       -- 刪除人員 ID
    DeletedAT DATETIME                     -- 刪除時間
);
GO

-- 子任務（SubTasks）資料表
CREATE TABLE SubTasks (
    id INT PRIMARY KEY IDENTITY,           -- 子任務主鍵
    Parent_Id INT NOT NULL,                -- 上層任務 ID，若為最上層則為 0
    TopTask_Id INT NOT NULL,               -- 所屬專案 ID
    Name NVARCHAR(200) NOT NULL,           -- 任務名稱
    Description NVARCHAR(MAX),             -- 任務說明
    Estimated_Hours DECIMAL(5,2),          -- 預估工時
    Assignee_Id INT,                       -- 負責人員 ID
    Status NVARCHAR(20),                   -- 狀態
    CreatedById INT,                       -- 建立人員 ID
    UpdatedById INT,                       -- 最後修改人員 ID
    CreatedAt DATETIME,                    -- 建立時間
    UpdatedAt DATETIME,                    -- 最後更新時間
    IsDeleted BIT,                         -- 是否已刪除
    DeletedById INT,                       -- 刪除人員 ID
    DeletedAT DATETIME                     -- 刪除時間
);
GO

-- 工時紀錄（WorkHours）資料表
CREATE TABLE WorkHours (
    id INT PRIMARY KEY IDENTITY,           -- 工時紀錄主鍵
    SubTask_Id INT,                        -- 所屬子任務 ID
    Employee_Id INT,                       -- 員工填報 ID
    Work_Hour DECIMAL(5,2),                -- 工時（小時）
    Word_Description NVARCHAR(MAX),        -- 工作內容描述
    CreatedAt DATETIME,                    -- 建立時間
    UpdatedAt DATETIME                     -- 最後修改時間
);
GO
