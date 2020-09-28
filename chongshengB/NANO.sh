#!/bin/bash

cd /opt/rt-n56u/trunk
sed -i '12,52d' build_firmware_modify
################################################################################################
#因不同型号配置功能不一样，所以先把配置项删除，如果你自己要添加其他的，也要写上删除这一条，切记！！！
################################################################################################
sed -i '/CONFIG_FIRMWARE_INCLUDE_MENTOHUST/d' .config #删除配置项MENTOHUST
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
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
######################################################################
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> .config #MENTOHUST
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> .config #SCUTCLIENT
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >> .config #SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >> .config # simple-obfs混淆插件
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >> .config #SS server
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=n" >> .config #DNSFORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >> .config #adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=n" >> .config #内网穿透FRPC
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=n" >> .config #内网穿透FRPS
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n" >> .config #TUNSAFE
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >> .config #阿里DDNS
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=n" >> .config #smartdns
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNSBIN=n" >> .config #smartdns二进制文件
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >> .config #集成v2ray执行文件（3.8M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=n" >> .config #集成trojan执行文件(1.1M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=n" >> .config #KP广告过滤
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=n" >> .config #在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=n" >> .config #集成caddu执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=n" >> .config #adg DNS去AD
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> .config #可以不集成
echo "CONFIG_FIRMWARE_INCLUDE_WYY=n" >> .config #网易云解锁
echo "CONFIG_FIRMWARE_INCLUDE_WYYBIN=n" >> .config #网易云解锁GO版本执行文件（4M多）注意固件超大小,不集成会自动下载
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=n" >> .config #zerotier ~1.3M
#########################################################################################
#自定义添加其它功能请参考源码configs/templates/目录下的config文件。按照上面的格式添加即可
#格式如下：
#sed -i '/自定义项/d' .config
#echo "自定义项=n" >> .config
#########################################################################################
sed -i 's/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=n/CONFIG_FIRMWARE_INCLUDE_OPENSSL_EXE=n/g' .config

exit 0