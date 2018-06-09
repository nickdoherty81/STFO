#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

export LANG=C

export PATH=~/bin:$PATH

export PATH=$PATH:/opt/android-sdk/tools/

export PATH=$PATH:/opt/android-sdk/platform-tools/

export USE_CCACHE=1

export CCACHE_DIR=~/.ccache

export JAVA_HOME=/usr/lib/jvm/java

export DU_BUILD_TYPE=RC

# moar alias
# Quick Build Calls
alias rcpush='cd  ~/DUOfficial/Build && . pushrc.sh'
alias rc='cd  ~/DUOfficial/Build && . dumprc.sh'
alias brc='cd  ~/DUOfficial/Build && . dumpboot.sh'
alias drcpush='cd  ~/DUOfficial/Build && . dirtypushrc.sh'
alias drc='cd  ~/DUOfficial/Build && . dirtydumprc.sh'
alias rs='cd ~/DUOfficial/o8x-caf && repo sync --force-sync -j16'
alias env='cd ~/DUOfficial/o8x-caf && prebuilts/misc/linux-x86/ccache/ccache -M 60G && . build/envsetup.sh'
alias mk='make -j16 bacon'
#DIR Calls
alias o8x='cd ~/DUOfficial/o8x-caf'
alias dump='cd ~/DUOfficial/o8x-caf/device/oneplus/dumpling'
alias common='cd ~/DUOfficial/o8x-caf/device/oneplus/msm8998-common'
alias kernel='cd ~/DUOfficial/o8x-caf/kernel/oneplus/msm8998'
alias vendor='cd ~/DUOfficial/o8x-caf/vendor/oneplus'
alias build='cd  ~/DUOfficial/Build'
alias rs='cd ~/DUOfficial/o8x-caf && repo sync --force-sync -j16'
alias env='cd ~/DUOfficial/o8x-caf && . build/envsetup.sh'
alias mk='make -j16 bacon'
alias archey='archey'
alias as='cd /usr/local/android-studio/bin && . studio.sh'
alias uv='sudo undervolt --core -150 --cache -150 --gpu -50 | echo evie1407'

screenfetch
#echo evie1407 | sudo -S undervolt --core -150 --cache -150 --gpu -50

