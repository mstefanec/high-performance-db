 select 
 request_session_id,
 resource_type,
 resource_database_id,
 request_mode,
 request_type,
 request_status,
 request_owner_type
 from sys.dm_tran_locks lck
 join
 sys.dm_exec_sessions ec
 on ec.session_id=lck.request_session_id

 --SELECT @@SPID AS 'ID', SYSTEM_USER AS 'Login Name', USER AS 'User Name';  
 --https://docs.microsoft.com/en-us/sql/relational-databases/system-dynamic-management-views/sys-dm-tran-locks-transact-sql?view=sql-server-ver15