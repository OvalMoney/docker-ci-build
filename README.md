# Docker CI build
[![Docker Automated build](https://img.shields.io/docker/automated/ovalmoney/ci-build.svg)](https://hub.docker.com/r/ovalmoney/ci-build/)
[![Docker Pulls](https://img.shields.io/docker/pulls/ovalmoney/ci-build.svg)](https://hub.docker.com/r/ovalmoney/ci-build/)
[![Docker Build Status](https://img.shields.io/docker/build/ovalmoney/ci-build.svg)](https://hub.docker.com/r/ovalmoney/ci-build/)

Toolset to build Docker images and push to AWS ECR

## Requirements

Credentials must be set using Environment variables or using Config file.

Env
```
AWS_ACCESS_KEY_ID=<access_key>
AWS_SECRET_ACCESS_KEY=<secret_key>
```

Config file `~/.aws/credentials`
```
[default]
aws_access_key_id=<access_key>
aws_secret_access_key=<secret_key>
```

## Example usage

```
# Login on AWS ECR
$(aws ecr get-login --no-include-email --region eu-west-1)

# Pull previous image if exist
docker pull ${AWS_ID}.dkr.ecr.eu-west-1.amazonaws.com/myapp:latest || true

# Build using previous image as cache
docker build \
--cache-from ${AWS_ID}.dkr.ecr.eu-west-1.amazonaws.com/myapp:latest \
-t ${AWS_ID}.dkr.ecr.eu-west-1.amazonaws.com/myapp:latest \
.

# Push on AWS ECR
docker push ${AWS_ID}.dkr.ecr.eu-west-1.amazonaws.com/myapp:latest
```