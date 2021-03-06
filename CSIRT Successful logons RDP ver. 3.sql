﻿SELECT 
timegenerated, 
      EXTRACT_TOKEN(Strings,6,'|') AS Domain, 
      RESOLVE_SID(EXTRACT_TOKEN(Strings,5,'|')) AS User, 
      EXTRACT_TOKEN(Strings,8,'|') AS TYPE,
      EXTRACT_TOKEN(Strings,11,'|') AS ClientHostname,
      EXTRACT_TOKEN(Strings,18,'|') AS IP,
      EventID,
      EventTypeName
FROM '*.evtx'
ORDER BY timegenerated 
