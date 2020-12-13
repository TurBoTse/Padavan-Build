#####################################################################
# cd /opt/rt-n56u/trunk 执行在这个目录下
#
# 修改默认参数（不同设备拷贝到相应 *.sh)          by: TurBoTse
#####################################################################

user_name="admin"                                   # 用户名
user_password="admin"                               # 用户密码
lan_ip="192.168.2"                                  # LAN 地址 别写后面的 .1
wifi_2g_ssid="Padavan"                              # 2G 无线名称
wifi_5g_ssid="Padavan_5G"                           # 5G 无线名称
wifi_guest_2g_ssid="Padavan_Guset"                  # 2G 访客无线名称
wifi_guest_5g_ssid="Padavan_Guest_5G"               # 5G 访客无线名称
wifi_password="1234567890"                          # WIFI密码最少8位 空白为不设置
version_time=$(date +%Y%m%d)                        # 更新时版本号时间: 20201212
default_path="./user/shared/defaults.h"             # 默认配置文件

echo "修改 LAN IP 地址"
sed -i "s/192.168.2/$lan_ip/g" $default_path

echo "修改 WIFI 密码"
sed -i "s/1234567890/$wifi_password/g" $default_path

echo "修改用户名"
sed -i 's/SYS_USER_ROOT		"admin"/SYS_USER_ROOT		"'$user_name'"/g' $default_path

echo "修改登陆密码"
sed -i 's/ROOT_PASSWORD	"admin"/ROOT_PASSWORD	"'$user_password'"/g' $default_path

echo "修改 2G 无线名称"
sed -i 's/WLAN_2G_SSID	BOARD_PID "_%s"/WLAN_2G_SSID	"'$wifi_2g_ssid'"/g' $default_path

echo "修改 5G 无线名称"
sed -i 's/WLAN_5G_SSID	BOARD_PID "_5G_%s"/WLAN_5G_SSID	"'$wifi_5g_ssid'"/g' $default_path

echo "修改 2G 访客无线名称"
sed -i 's/WLAN_2G_GSSID	BOARD_PID "_GUEST_%s"/WLAN_2G_GSSID	"'$wifi_guest_2g_ssid'"/g' $default_path

echo "修改 5G 访客无线名称"
sed -i 's/WLAN_5G_GSSID	BOARD_PID "_GUEST_5G_%s"/WLAN_5G_GSSID	"'$wifi_guest_5g_ssid'"/g' $default_path

echo "更新版本号时间"
sed -i "s/FIRMWARE_BUILDS_REV=.*/FIRMWARE_BUILDS_REV=$version_time/g" ./versions.inc
