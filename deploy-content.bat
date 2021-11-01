SET AWS_ACCOUNT_ID=048116471576
SET ENVIRONMENT=prod

call npm run build

call aws s3 sync ./build s3://docs-us-east-1-%AWS_ACCOUNT_ID%-tbs-%ENVIRONMENT% --profile thebetterstore
call aws cloudfront list-distributions --output json --query "DistributionList.Items[?Comment=='docs.thebetterstore.net'].Id" | awk -F '"' '{print $2}' | xargs -I{} aws cloudfront create-invalidation --distribution-id {} --paths "/*"
