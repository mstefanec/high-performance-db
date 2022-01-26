 select 
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