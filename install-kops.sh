#!/usr/bin/env bash

wget https://github.com/kubernetes/kops/releases/download/v1.18.0-alpha.3/kops-linux-amd64

chmod +x kops-linux-amd64

mv kops-linux-amd64 /usr/local/bin/kops
