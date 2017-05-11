﻿/*  New Query  */
select  
timegenerated, 
      EXTRACT_TOKEN(Strings,1,'|') AS User,
      EXTRACT_TOKEN(Strings,2,'|') AS Host,
      EXTRACT_TOKEN(Strings,5,'|') AS ComputerNam,
      EXTRACT_TOKEN(Strings,4,'|') AS EvtID,
      EventID,
      ComputerName

FROM '*.evtx'
WHERE EventID = '4720'

