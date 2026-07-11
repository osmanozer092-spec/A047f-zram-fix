#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s

# Çıktı dizinini oluştur
mkdir -p out

# Config ayarlarını out klasörüne yap (sed değişikliğini buraya uygula)
make ARCH=arm64 O=out exynos850-a04sxx_defconfig

# Derlemeyi out dizinine yap
make ARCH=arm64 O=out -j16
