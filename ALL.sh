#!/bin/bash

cd /opt/rt-n56u/trunk
#####################################################################################
sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' .config #删除配置项MENTOHUST
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_SERVER/d' .config #删除配置项SOFTETHERVPN
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CLIENT/d' .config #删除配置项SOFTETHERVPN
sed -i '/CONFIG_FIRMWARE_INCLUDE_SOFTETHERVPN_CMD/d' .config #删除配置项SOFTETHERVPN
sed -i '/CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT/d' .config #删除配置项SCUTCLIENT
sed -i '/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS/d' .config #删除配置项SS plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_SSSERVER/d' .config #删除配置项SS server
sed -i '/CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER/d' .config #删除配置项DNSFORWARDER
sed -i '/CONFIG_FIRMWARE_INCLUDE_ADBYBY/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPC/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_FRPS/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_TUNSAFE/d' .config #删除配置项adbyby plus+
sed -i '/CONFIG_FIRMWARE_INCLUDE_ALIDDNS/d' .config #删除配置项阿里DDNS
sed -i '/CONFIG_FIRMWARE_INCLUDE_SMARTDNS/d' .config
sed -i '/CONFIG_FIRMWARE_INCLUDE_SRELAY/d' .config
######################################################################
##科学上网##
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y" >> .config #科学上网插件，选择n后全部有关插件都不集成
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=y" >> .config #集成v2ray执行文件，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=y" >> .config #集成trojan执行文件，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_KUMASOCKS=y" >> .config #socks5服务端
##科学上网##
##广告管理##
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=y" >> .config #adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=y" >> .config #KP广告过滤
##广告管理##
##DNS服务##
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=y" >> .config #smartdns
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=y" >> .config #adg DNS去AD
##DNS服务##
##文件管理##
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=y" >> .config #在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=y" >> .config #集成caddu执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用
##文件管理##
##音乐解锁##
echo "CONFIG_FIRMWARE_INCLUDE_WYY=y" >> .config #网易云解锁
echo "CONFIG_FIRMWARE_INCLUDE_WYYBIN=y" >> .config #网易云解锁GO版本执行文件（2M多）注意固件超大小
##音乐解锁##
##内网穿透服务##
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=y" >> .config #zerotier ~1.3M
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=y" >> .config #aliddns
##内网穿透服务##
####################################################################################
sed -i 's/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=n/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=y/g' .config

exit 0