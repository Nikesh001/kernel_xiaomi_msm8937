#!/bin/bash
echo "WAFF WAFF WAFF WAFF WAFF WAFF WAFF WAFF"
echo "########### LOBO UTILIDADES ###########"
echo "WAFF WAFF WAFF WAFF WAFF WAFF WAFF WAFF"
echo ""
#echo "> Copiando archivo de configuracion"
#cp ../boot_miui_official/msm8940_defconfig .config
#echo "> Copiando ramdisk a arch/arm64/boot"
#cp ../generated_boot_img/initramfs.cpio.gz arch/arm64/boot/boot.img-ramdisk.cpio.gz
echo "> Abriendo archivo de configuracion"
CFLAGS="-mtune=cortex-a53 -march=armv8-a -mcpu=cortex-a53 -O2" ARCH=arm64 CROSS_COMPILE=../aarch64-linux-android-4.9/bin/aarch64-linux-android- make menuconfig
echo "> Iniciando compilacion del kernel usando .config"
CFLAGS="-mtune=cortex-a53 -march=armv8-a -mcpu=cortex-a53 -O2" ARCH=arm64 CROSS_COMPILE=../aarch64-linux-android-4.9/bin/aarch64-linux-android- make -j4
echo ""
#echo "> Eliminando boot.img viejo"
#rm arch/arm64/boot/boot.img
#echo "> EMPAQUETANDO Kernel..."
#./../mkbootimg/mkbootimg --kernel arch/arm64/boot/Image.gz-dtb --ramdisk arch/arm64/boot/boot.img-ramdisk.cpio.gz --cmdline 'console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 buildvariant=eng androidboot.selinux=permissive enforcing=0' --base 0x80000000 -o arch/arm64/boot/boot.img
#echo "> ELIMINANDO MODULOS ANTERIORES"
#rm -rf /media/psf/Home/Desktop/kmodules
#mkdir /media/psf/Home/Desktop/kmodules
#echo "> COPIANDO MODULOS A /media/psf/Home/Desktop/kmodules"
#find . -type f -name "*.ko" -exec cp -fv {} /media/psf/Home/Desktop/kmodules/. \;
#echo "> COPIANDO boot.img a /media/psf/Home/Desktop/"
#cp arch/arm64/boot/boot.img /media/psf/Home/Desktop/.

./../AnyKernel2/build.sh
echo "WAAAAAAAF IS DONE"
