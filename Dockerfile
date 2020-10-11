FROM archlinux

# use faster mirror to speed up the image build
RUN echo 'Server = https://mirror.pkgbuild.com/$repo/os/$arch' > /etc/pacman.d/mirrorlist

# install packages
RUN pacman -Syu --noconfirm --needed base base-devel
# split third-party as to make the layer smaller for now
RUN pacman -S --noconfirm --needed git vim zsh bazel python

# clean up
RUN find /var/cache/pacman/ -type f -delete
