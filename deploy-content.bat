REM SET AWS_ACCOUNT_ID=??
SET ENVIRONMENT=prod

rem call npm run build

call aws s3 sync ./build s3://docs-us-east-1-%AWS_ACCOUNT_ID%-tbs-%ENVIRONMENT% --profile thebetterstore

