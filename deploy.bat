SET Environment=prod

SET APP_NAME=tbs-docs
SET STACK_NAME=%APP_NAME%-%Environment%

call aws cloudformation deploy ^
--template-file template.yaml ^
--stack-name %APP_NAME%-%Environment% ^
--capabilities CAPABILITY_NAMED_IAM ^
--region us-east-1 --parameter-overrides ^
Environment=%Environment% ^
--no-fail-on-empty-changeset ^
--tags Environment=%Environment% StackName=%STACK_NAME% Product=%APP_NAME% ^
--profile thebetterstore

