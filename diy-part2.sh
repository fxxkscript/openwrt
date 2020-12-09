#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.110/g' package/base-files/files/bin/config_generate

git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone -b master  https://github.com/vernesong/OpenClash.git package/luci-app-openclash

svn co --force https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/luci-app-zerotier && svn revert -R package/luci-app-zerotier
svn co --force https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-softethervpn package/luci-app-softethervpn && svn revert -R package/luci-app-softethervpn
svn co --force https://github.com/kenzok8/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome && svn revert -R package/luci-app-adguardhome
