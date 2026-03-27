#!/usr/bin/env bash

# Install open prebuilt/secureboot-signed Kernel driver
zypper in nvidia-open-driver-G07-signed-cuda-kmp-default

# Make sure userspace CUDA/Desktop drivers will be in sync with just installed open prebuilt/secureboot-signed Kernel driver
version=$(rpm -qa --queryformat '%{VERSION}\n' nvidia-open-driver-G07-signed-cuda-kmp-default | cut -d "_" -f1 | sort -u | tail -n 1)

# Install CUDA drivers
zypper in nvidia-compute-utils-G07 == ${version} nvidia-persistenced == ${version}
# Install Desktop drivers
zypper in nvidia-video-G07 == ${version}
