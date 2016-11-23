﻿USE [tpch_5GB]
GO

-- 
https://msdn.microsoft.com/ja-jp/library/dn935013.aspx
-- 行グループの列ストア化
ALTER INDEX [NCCIX_LINEITEM] ON [dbo].[LINEITEM] REORGANIZE PARTITION = ALL 
WITH (COMPRESS_ALL_ROW_GROUPS = ON) 
GO

-- 小さな行グループの結合
ALTER INDEX [NCCIX_LINEITEM] ON [dbo].[LINEITEM] REORGANIZE PARTITION = ALL 
WITH (COMPRESS_ALL_ROW_GROUPS = ON) 
GO

-- 列ストアインデックスの再構築
ALTER INDEX [NCCIX_LINEITEM] ON [dbo].[LINEITEM] REBUILD PARTITION = ALL 
GO
