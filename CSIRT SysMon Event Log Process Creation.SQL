/*  SysMon Event Log  */

SELECT 
 TimeGenerated, 
 EventID,
 EXTRACT_TOKEN(Strings,1,'|') AS ProcessGuid,
 EXTRACT_TOKEN(Strings,2,'|') AS ProcessID,
 EXTRACT_TOKEN(Strings,3,'|') AS Image,
 EXTRACT_TOKEN(Strings,4,'|') AS CommandLine,
 EXTRACT_TOKEN(Strings,5,'|') AS CurrentDirectory,
 EXTRACT_TOKEN(Strings,6,'|') AS User,
 EXTRACT_TOKEN(Strings,7,'|') AS LogonGuid,
 EXTRACT_TOKEN(Strings,9,'|') AS TerminalSessionID,
 EXTRACT_TOKEN(Strings,10,'|') AS IntegrityLevel,
 EXTRACT_TOKEN(Strings,11,'|') AS MD5Sum,
 EXTRACT_TOKEN(Strings,13,'|') AS ParentProcessID,
 EXTRACT_TOKEN(Strings,14,'|') AS ParentImage,
 EXTRACT_TOKEN(Strings,15,'|') AS ParentCommandLine




FROM '[LOGFILEPATH]'
WHERE EventID=1
ORDER BY timegenerated 
