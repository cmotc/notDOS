packages:
	cd config/package-lists/ && \
	echo "openbox" | tee build.list.chroot && \
	echo "dosbox" | tee -a build.list.chroot && \
	echo "apt-transport-tor" | tee -a build.list.chroot && \
	echo "apt-transport-https" | tee -a build.list.chroot && \
	echo "coreutils" | tee -a build.list.chroot && \
	echo "openrc" | tee -a build.list.chroot && \
	echo "adduser" | tee -a build.list.chroot && \
	echo "apparmor" | tee -a build.list.chroot && \
	echo "apparmor-easyprof" | tee -a build.list.chroot && \
	echo "apparmor-notify" | tee -a build.list.chroot && \
	echo "apparmor-profiles" | tee -a build.list.chroot && \
	echo "apparmor-profiles-extra" | tee -a build.list.chroot && \
	echo "minidlna" | tee -a build.list.chroot && \
	echo "openssh-server" | tee -a build.list.chroot && \
	echo "secure-delete" | tee -a build.list.chroot && \
	echo "suckless-tools" | tee -a build.list.chroot && \
	echo "menu-xdg" | tee -a build.list.chroot && \
	echo "xdg-utils" | tee -a build.list.chroot && \
	echo "xdg-user-dirs" | tee -a build.list.chroot && \
	echo "wicd-curses" | tee -a build.list.chroot && \
	echo "tor" | tee -a build.list.chroot && \
	echo "tor-arm" | tee -a build.list.chroot && \
	echo "firmware-ath9k-htc" | tee -a build.list.chroot && \
	echo "firmware-linux-free" | tee -a nonfree.list.chroot && \
	echo "xserver-xorg" | tee -a build.list.chroot && \
	echo "xserver-common" | tee -a build.list.chroot && \
	echo "xserver-xorg-core" | tee -a build.list.chroot && \
	echo "xserver-xorg-input-all" | tee -a build.list.chroot && \
	echo "xserver-xorg-legacy" | tee -a build.list.chroot && \
	echo "xserver-xorg-video-all" | tee -a build.list.chroot && \
	ln -sf build.list.chroot build.list.binary

nonfree-firmware:
	cd config/package-lists/ && \
	echo "b43-fwcutter" | tee -a nonfree.list.chroot && \
	echo "firmware-b43-installer" | tee -a nonfree.list.chroot && \
	echo "firmware-b43legacy-installer" | tee -a nonfree.list.chroot && \
	echo "dosemu" | tee -a build.list.chroot && \
	ln -sf nonfree.list.chroot nonfree.list.binary
