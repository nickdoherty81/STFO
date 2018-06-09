#!/bin/bash

############################################################
# OPEN BUILD DIR                                           #
############################################################
cd ~/DUOfficial/o8x-caf

############################################################
# SET KERNEL GOV'N                                         #
############################################################
echo evie1407 | sudo -S cpupower frequency-set -g performance

############################################################
# SET EXPORTS                                              #
############################################################
export USE_CCACHE=1
prebuilts/misc/linux-x86/ccache/ccache -M 60G

export DU_BUILD_TYPE=RC

############################################################
# BUILD ROM                                                #
############################################################
. build/envsetup.sh && lunch du_dumpling-user && make -j32 bootimage

############################################################
# COPY ROM TO DU-Official FOLDER                           #
############################################################
cp ~/DUOfficial/o8x-caf/out/target/product/dumpling/boot.img ~/DUOfficial/dumpling/boot

############################################################
# LET ME KNOW BUILD IS DONE                                #
############################################################
echo -e "\n"

echo 'Kernel Build completed successfully!'

############################################################
# RETURN GOV'N TO POWERSAVE AND GO HOME                    #
############################################################
echo evie1407 | sudo -S cpupower frequency-set -g powersave

cd ~/DUOfficial/Build

echo 'Build another or Exit, Dont just leave me hanging'
