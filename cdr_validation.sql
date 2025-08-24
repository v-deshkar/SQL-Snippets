-- Detect duplicate events (by consumer, start time, bytes) in detailed_usage_data
SELECT consumer_number, event_start, bytes, COUNT(*) AS dup_count
FROM detailed_usage_data
GROUP BY consumer_number, event_start, bytes
HAVING COUNT(*) > 1;
