/*
-----------------------------------------------------------------------------------------------
Commit and push your changes from 06_separate_dev_and_prod_environments.sql to the "dev" branch
This will start the preconfigured CI/CD pipeline and deploy the changes
-----------------------------------------------------------------------------------------------
*/
ALTER USER snemer SET RSA_PUBLIC_KEY='MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsmfzTeCf6LPnfnzU7fvo
GsOfgXBLXzOb2ePDR5IMAcM2sa9eznzPDdljdXH78IRJuvTzLvVZiQ35w9SQ4kx4
7hZT+XwPDi9NQkO4x+fYK/CCLtopHSs5Y3u4Owyq2W6fDVy6qSrIaoZDjBZRQFe/
WalmpDt3OiYhev6SAr4j65ehAxWL3fWCSRGrmbNjt+RLSYviFEjgBMzfoUJBmTCJ
bifXIrkYY5bNRPoG7UE6EmUGhnxS4kORP60GhTPe281YLrijq/4bTV9EIZEKC3pH
jshKctjaJOPmGSdv4q/cb/0sPqIxPGbo7bXgCdtJXvxKWj19GC6oplLI6RlDLngh
gQIDAQAB';


DESC USER snemer
  ->> SELECT SUBSTR(
        (SELECT "value" FROM $1
           WHERE "property" = 'RSA_PUBLIC_KEY_FP'),
        LEN('SHA256:') + 1) AS key;
--use role accountadmin;

-- should return 0 (due to deploy_pipeline_dev.yml)
--show parameters like 'data_retention_time_in_days' in table quickstart_dev.gold.vacation_spots;
-- should return 1 (due to deploy_pipeline_dev.yml)
--show parameters like 'data_retention_time_in_days' in table quickstart_prod.gold.vacation_spots;
