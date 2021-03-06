USE DBALogging 
GO
DROP TABLE 
--this syntax is 2016 only
IF EXISTS 
[dbo].[SessionsAndRequestsLog]
go

CREATE TABLE [dbo].[SessionsAndRequestsLog](
	[timestamp] [datetimeoffset](7) NOT NULL,
	[session_id] [smallint] NOT NULL,
	[host_name] [nvarchar](256) NULL,
	[program_name] [nvarchar](256) NULL,
	[session_status] [nvarchar](60) NULL,
	[request_status] [nvarchar](60) NULL,
	[request_id] [int] NULL,
	[blocking_these] [varchar](1000) NULL,
	[blocked_by] [smallint] NULL,
	[wait_type] [nvarchar](120) NULL,
	[wait_resource] [nvarchar](120) NULL,
	[last_wait_type] [nvarchar](120) NULL,
	[DBName] [nvarchar](128) NULL,
	[objectid] [int] NULL,
	[command] [nvarchar](32) NULL,
	[login_time] [datetime] NOT NULL,
	[login_name] [nvarchar](256) NULL,
	[client_interface_name] [nvarchar](64) NULL,
	[request_start_time] [datetime] NULL,
	[tot_time_s] [decimal](19, 2) NULL,
	[wait_time_s] [decimal](19, 2) NULL,
	[cpu_time_s] [decimal](19, 2) NULL,
	[reads] [bigint] NULL,
	[writes] [bigint] NULL,
	[logical_reads] [bigint] NULL,
	[percent_complete] [decimal](9, 4) NULL,
	[estimated_remaining_time_HHMMSS] [varchar](31) NULL,
	[offsettext] [nvarchar](max) NULL,
	[Input_Buffer_Text_Event_Info] [nvarchar](max) NULL,
	[Input_Buffer_Event_Type] [nvarchar](256) NULL,
	[cacheobjtype] [nvarchar](35) NULL,
	[QueryPlan] [xml] NULL,
	[request_transaction_isolation_level] [varchar](15) NULL,
	[session_transaction_isolation_level] [varchar](15) NULL,
	[plan_handle] [varbinary](64) NULL,
	[plan_execution_count] [bigint] NULL,
	[plan_total_worker_time_s] [numeric](30, 11) NULL,
	[plan_last_worker_time_s] [numeric](30, 11) NULL,
	[plan_total_elapsed_time_s] [numeric](30, 11) NULL,
	[plan_last_elapsed_time_s] [numeric](30, 11) NULL,
	[plan_total_physical_reads] [bigint] NULL,
	[plan_total_logical_writes] [bigint] NULL,
	[plan_total_logical_reads] [bigint] NULL,
	[Governor_Group_Name] [sysname] NULL,
	[Governor_Group_ID] [int] NULL,
	[Governor_Pool_Name] [sysname] NULL,
	[Governor_Pool_ID] [int] NULL,
	[EndPointName] [sysname] NULL,
	[Protocol] [nvarchar](120) NULL,
	[Outstanding_TempDB_Session_Internal_Alloc_pages] [bigint] NULL,
	[Outstanding_TempDB_Session_User_Alloc_pages] [bigint] NULL,
	[Outstanding_TempDB_Task_Internal_Alloc_pages] [bigint] NULL,
	[Outstanding_TempDB_Task_User_Alloc_pages] [bigint] NULL,
	[total_rows] [bigint] NULL,
	[last_rows] [bigint] NULL
) ON [PRIMARY] 
GO

