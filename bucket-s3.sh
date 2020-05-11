#!/usr/bin/env bash

aws s3api create-bucket --bucket k8s-iteris-kops --region ${REGION}

aws s3api put-bucket-versioning --bucket k8s-iteris-kops --versioning-configuration Status=Enabled
