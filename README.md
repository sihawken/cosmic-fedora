# Vanadium

A ublue-os inspired distribution with cosmic de, cachy-os kernel and packages, and additional akmod hardware support. 

> [!WARNING]
> I built this image for me. Feel free to install, however any support requests may go unanswered for an extended period of time if I am unavailable. I will happily accept pull requests for any fixes or suggested improvements.

## Features:

My system: Framework Laptop 13 (12th Gen Intel)

- Base Image: quay.io/fedora-ostree-desktops/cosmic-atomic:43
- kernel-cachyos-lto: https://copr.fedorainfracloud.org/coprs/bieszczaders/kernel-cachyos-lto/
- Ublue akmods (hardware support): https://copr.fedorainfracloud.org/coprs/ublue-os/akmods/
- Non-free multimedia packages
- A small list of default packages
- Flathub and cosmic flatpak repos replacing the default fedora flatpak repo
- Ublue-os non-free firmware: https://github.com/ublue-os/bazzite-firmware-nonfree
- Zsh default terminal with autosuggestion, syntax highlighting, and history substring terminal

## Installation instructions:

Install any atomic Fedora distribution (Silverblue, Kinoite, Bazzite, Aurora, ...)

Run:
`rpm-ostree rebase ostree-image-signed:docker://ghcr.io/sihawken/vanadium`

