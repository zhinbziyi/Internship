IF NOT EXISTS (
  SELECT 1 FROM sys.indexes
  WHERE name = 'IX_SubTasks_TopTask_Id'
    AND object_id = OBJECT_ID('dbo.SubTasks')
)
  CREATE NONCLUSTERED INDEX IX_SubTasks_TopTask_Id ON dbo.SubTasks(TopTask_Id);

IF NOT EXISTS (
  SELECT 1 FROM sys.indexes
  WHERE name = 'IX_WorkHours_SubTask_Id'
    AND object_id = OBJECT_ID('dbo.WorkHours')
)
  CREATE NONCLUSTERED INDEX IX_WorkHours_SubTask_Id ON dbo.WorkHours(SubTask_Id);
