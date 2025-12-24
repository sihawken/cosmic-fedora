#!/bin/bash

set -ouex pipefail

# Tell wpa_supplicant to handle p2p
echo -e "[device]\nwifi.backend=wpa_supplicant" | tee /etc/NetworkManager/conf.d/p2p.conf