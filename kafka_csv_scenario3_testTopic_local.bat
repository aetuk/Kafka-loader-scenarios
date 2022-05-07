java -Dlogging.level=ON -cp csvjdbc-1.0-37.jar;HashRelMap-0.0.1-SNAPSHOT-jar-with-dependencies.jar client.Ddsloader ^
-licensekey KloadNG92-2L52-OYMS-V5VU-6H8R-O7TS-STLP-I61A ^
-sourcequery "SELECT CUSTID as CUSTIDTMP_dot_SAMP_, TRANSTYPE as TransType_dot_SAMP_, TRANSVALUE as TransValue_dot_SAMP_ FROM Sampleoutputforstreaming" ^
-sourcereadintervalinimillisecs 5000 ^
-targettopic "test" ^
-tablekeys "tablekey[0][0]=return CUSTIDTMP;SAMP" ^
-sourcedburl "jdbc:relique:csv:." ^
-sourcedriver "org.relique.jdbc.csv.CsvDriver" ^
-sourceusername "jdbc_source_username" ^
-sourceuserpassword "jdbc_source_password" ^
-targetkeys CUSTIDTMP ^
-targeturl localhost:9093 ^
-targetdbtable data.ddstest_11b6429df8735b13d70808652d560be2 ^
-targetusername dnode_ext ^
-targetpassword dnode_ext ^
-dbfetchsize 1 ^
-bulkloaderthreads 1 ^
-setdatasources "top_ eq SAMP" ^
-setcolumnmappings "CUSTIDTMP eq customerid"
pause