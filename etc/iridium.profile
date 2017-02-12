# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/chromium.local

# Iridium browser profile
noblacklist ~/.config/iridium
noblacklist ~/.cache/iridium
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc

# chromium/iridium is distributed with a perl script on Arch
# include /etc/firejail/disable-devel.inc
#

netfilter

whitelist ${DOWNLOADS}
mkdir ~/.config/iridium
whitelist ~/.config/iridium
mkdir ~/.cache/iridium
whitelist ~/.cache/iridium
mkdir ~/.pki
whitelist ~/.pki

# lastpass, keepass
# for keepass we additionally need to whitelist our .kdbx password database
whitelist ~/.keepass
whitelist ~/.config/keepass
whitelist ~/.config/KeePass
whitelist ~/.lastpass
whitelist ~/.config/lastpass

include /etc/firejail/whitelist-common.inc
