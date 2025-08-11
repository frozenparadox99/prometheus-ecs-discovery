module github.com/teralytics/prometheus-ecs-discovery

go 1.22

require (
	github.com/aws/aws-sdk-go-v2 v1.32.7
	github.com/aws/aws-sdk-go-v2/config v1.28.7
	github.com/aws/aws-sdk-go-v2/credentials v1.17.48
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.16.22
	github.com/aws/aws-sdk-go-v2/service/ec2 v1.194.0
	github.com/aws/aws-sdk-go-v2/service/ecs v1.53.0
	github.com/aws/aws-sdk-go-v2/service/sts v1.33.8
	github.com/aws/smithy-go v1.22.1
	gopkg.in/yaml.v2 v2.4.0
)
