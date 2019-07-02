-- use OpenCSVSerde to escape surrounding double-quotes: 
-- https://cwiki.apache.org/confluence/display/Hive/CSV+Serde

CREATE EXTERNAL TABLE dim_achievement (
                    xxx int,
                    xxx string)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES 
(
"separatorChar" = ",",
"quoteChar" = "\""
)

STORED AS TEXTFILE

LOCATION '/xxx/xxx/xxx/xxx/xxx/xxx'
--If your file have Header Line add this property
tblproperties ("skip.header.line.count"="1");
