-- Simple replication latency indicator (sample)
SELECT TOP 20
  publication,
  subscriber,
  latency AS seconds_lag,
  last_distsync
FROM dbo.replication_monitor_view
ORDER BY seconds_lag DESC;
