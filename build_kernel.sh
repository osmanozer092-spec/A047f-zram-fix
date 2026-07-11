#!/bin/bash

export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s
# $O değişkenini burada tanımlıyoruz ki alttaki cp komutu onu tanısın
export O=$(pwd)/out

# Çıktı dizinini oluştur
mkdir -p $O

# Config ayarları
make ARCH=arm64 O=$O exynos850-a04sxx_defconfig

# Derlemeyi yap
make ARCH=arm64 O=$O -j16

# --- DERLEME BİTTİĞİNDE ---
mkdir -p build_output

# Dosyayı kopyala
cp $O/arch/arm64/boot/Image.gz-dtb build_output/Kernel_Image.gz-dtb

echo "Dosyalar build_output klasörüne hazırlandı."
