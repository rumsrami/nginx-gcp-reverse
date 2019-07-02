#!/bin/bash

gcloud kms encrypt \
  --location global \
  --keyring portfolio27031987 \
  --key authservice \
  --plaintext-file assets/conf/nginx.conf \
  --ciphertext-file assets/conf/nginx.enc.conf