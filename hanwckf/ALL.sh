#!/bin/bash

cd /opt/rt-n56u/trunk
sed -i '/cp -f configs/d' build_firmware_modify
#####################################################################################
sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_GDUT_DRCOM/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DOGCOM/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MINIEAP/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NAPT66/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_VLMCSD/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TTYD/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_LRZSZ/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_HTOP/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_NANO/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_IPERF3/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_DUMP1090/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_RTL_SDR/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SMBD36/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MTR/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOCAT/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' .config
######################################################################
echo "/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_GDUT_DRCOM=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_DOGCOM=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_MINIEAP=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_NJIT_CLIENT=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_NAPT66=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SSSERVER=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_VLMCSD=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_TTYD=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_LRZSZ=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_HTOP=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_NANO=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_IPERF3=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_DUMP1090=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_RTL_SDR=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SMBD36=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_MTR=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SOCAT=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_SRELAY=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_MENTOHUST=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_FRPC=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_FRPS=y" >> .config
echo "/CONFIG_FIRMWARE_INCLUDE_TUNSAFE=y" >> .config
####################################################################################
sed -i 's/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=n/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=y/g' .config

exit 0