#!/usr/bin/env bash

# Install NVIDIA repos
zypper in openSUSE-repos-Tumbleweed-NVIDIA

# Install open prebuilt/secureboot-signed Kernel driver and related packages
zypper in nvidia-open-driver-G07-signed-kmp-meta
