sed -i 's/^  schedule:/ # schedule:/' ./.github/workflows/run-*.yml
sed -i 's/^    - cron:/   # - cron:/' ./.github/workflows/run-*.yml
sd 'danklinux ""' 'danklinux "noble"' ./.github/workflows/run-ppa.yml
sd 'master' 'glostis' ./.github/workflows/run-ppa.yml
sed -i "/# In CI, skip if same version/,/fi/s/^/#/" ./distro/scripts/ppa/ppa-upload.sh
sd '~avengemedia' '~glostis' ./.github/workflows/run-ppa.yml ./distro/scripts/ppa/ppa-*.sh
sd 'questing' 'noble' ./distro/scripts/ppa/ppa-upload.sh
sd 'Avenge Media <AvengeMedia.US@gmail.com>' 'Guillaume Lostis <glostis@gmail.com>' ./distro/scripts/ppa/ppa-*.sh
sd 'ppa:avengemedia' 'ppa:glostis' ./distro/scripts/ppa/ppa-*.sh
sd 'cargo' 'cargo-1.85' ./distro/ubuntu/niri/debian/control ./distro/ubuntu/xwayland-satellite/debian/control
sd 'rustc' 'rustc-1.85' ./distro/ubuntu/niri/debian/control ./distro/ubuntu/xwayland-satellite/debian/control
sd 'libdisplay-info2' 'libdisplay-info1' ./distro/ubuntu/niri/debian/control
sed -i '1a\export PATH = /usr/lib/rust-1.85/bin/:/usr/bin' ./distro/ubuntu/niri/debian/rules
sed -i '1a\export PATH = /usr/lib/rust-1.85/bin/:/usr/bin' ./distro/ubuntu/xwayland-satellite/debian/rules
