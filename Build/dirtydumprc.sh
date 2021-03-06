!/bin/bash

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
. build/envsetup.sh && lunch du_dumpling-user && make -j32 bacon

############################################################
# COPY ROM TO EXT FOLDER AND DRIVE                         #
############################################################
cp ~/DUOfficial/o8x-caf/out/target/product/dumpling/du_dumpling-v*.zip ~/DUOfficial/dumpling/rc

############################################################
# LET ME KNOW BUILD IS DONE                                #
############################################################
echo -e "\n"

echo 'Build completed successfully, copied over to DUOfficial/dumpling'

############################################################
# REMOVE THE ZIP FROM OUT                                  #
############################################################
cd ~/DUOfficial/o8x-caf/out/target/product/dumpling/
rm -rf du_dumpling-v*.zip

############################################################
# RETURN GOV'N TO POWERSAVE AND GO HOME                    #
############################################################
echo evie1407 | sudo -S cpupower frequency-set -g powersave

cd ~/DUOfficial/Build

echo 'Build another or Exit, Dont just leave me hanging'
