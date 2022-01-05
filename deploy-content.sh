export AWS_ACCOUNT_ID=048116471576
export ENVIRONMENT=prod

npm run build

aws s3 sync ./build s3://docs-us-east-1-$AWS_ACCOUNT_ID-tbs-$ENVIRONMENT --profile thebetterstore
aws cloudfront list-distributions --profile thebetterstore --output json --query "DistributionList.Items[?Comment=='docs.thebetterstore.net'].Id" | awk -F '"' '{print $2}' | xargs -I{} aws cloudfront create-invalidation --distribution-id {} --paths "/*" --profile thebetterstore
