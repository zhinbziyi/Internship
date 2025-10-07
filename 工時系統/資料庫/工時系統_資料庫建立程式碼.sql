CREATE DATABASE TimesheetSystem_new;
GO

USE TimesheetSystem_new;
GO

-- ���u��ƪ�
CREATE TABLE Employees (
    id INT PRIMARY KEY IDENTITY,           -- ���u�D��A�۰ʻ��W
    Name NVARCHAR(100) NOT NULL,           -- ���u�m�W
    IsActive BIT NOT NULL                  -- �O�_�b¾���]1=�b¾, 0=��¾�^
);
GO

-- �M�ס]TopTasks�^��ƪ�
CREATE TABLE TopTasks (
    id INT PRIMARY KEY IDENTITY,           -- �M�ץD��
    Name NVARCHAR(100) NOT NULL,           -- �M��²��
    Description NVARCHAR(MAX),             -- �M�״y�z
    Budget DECIMAL(10,2),                  -- �w��]�U���^
    Manager_Id INT,                        -- �M�׸g�z�]���u ID�^
    CreatedById INT,                       -- �إߤH�� ID
    UpdatedById INT,                       -- �̫�ק�H�� ID
    CreatedAt DATETIME,                    -- �إ߮ɶ�
    UpdatedAt DATETIME,                    -- �̫��s�ɶ�
    IsDeleted BIT,                         -- �O�_�w�R��
    DeletedById INT,                       -- �R���H�� ID
    DeletedAT DATETIME                     -- �R���ɶ�
);
GO

-- �l���ȡ]SubTasks�^��ƪ�
CREATE TABLE SubTasks (
    id INT PRIMARY KEY IDENTITY,           -- �l���ȥD��
    Parent_Id INT NOT NULL,                -- �W�h���� ID�A�Y���̤W�h�h�� 0
    TopTask_Id INT NOT NULL,               -- ���ݱM�� ID
    Name NVARCHAR(200) NOT NULL,           -- ���ȦW��
    Description NVARCHAR(MAX),             -- ���Ȼ���
    Estimated_Hours DECIMAL(5,2),          -- �w���u��
    Assignee_Id INT,                       -- �t�d�H�� ID
    Status NVARCHAR(20),                   -- ���A
    CreatedById INT,                       -- �إߤH�� ID
    UpdatedById INT,                       -- �̫�ק�H�� ID
    CreatedAt DATETIME,                    -- �إ߮ɶ�
    UpdatedAt DATETIME,                    -- �̫��s�ɶ�
    IsDeleted BIT,                         -- �O�_�w�R��
    DeletedById INT,                       -- �R���H�� ID
    DeletedAT DATETIME                     -- �R���ɶ�
);
GO

-- �u�ɬ����]WorkHours�^��ƪ�
CREATE TABLE WorkHours (
    id INT PRIMARY KEY IDENTITY,           -- �u�ɬ����D��
    SubTask_Id INT,                        -- ���ݤl���� ID
    Employee_Id INT,                       -- ���u��� ID
    Work_Hour DECIMAL(5,2),                -- �u�ɡ]�p�ɡ^
    Word_Description NVARCHAR(MAX),        -- �u�@���e�y�z
    CreatedAt DATETIME,                    -- �إ߮ɶ�
    UpdatedAt DATETIME                     -- �̫�ק�ɶ�
);
GO
