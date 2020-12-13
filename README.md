# Padavan 固件自定义修改并全自动编译

直接 Fork 修改好之后点击 Star 按钮即可开始自动编译 ( 自己点击 Star 才会运行 请不要重复点击 点一次运行一次 ) 

点击 [Actions](https://github.com/TurBoTse/Padavan-Build/actions) 按钮查看项目运行状态 编译好的固件也在里面 

Padavan_CI 源码使用 [本人的 Padavan 源码库](https://github.com/TurBoTse/rt-n56u.git) 和 [Hanwckf](https://github.com/hanwckf/rt-n56u.git) 不定期同步

Hanwckf_Padavan_CI 源码使用 [Hanwckf](https://github.com/hanwckf/rt-n56u.git)

ChongshengB_Padavan_CI 源码使用 [ChongshengB](https://github.com/chongshengB/rt-n56u.git) ( 已修复自定义菜单语言和英文界面下不能重置 )

用户名: admin

登录密码: admin

IP地址: 192.168.2.1

WiFi名称: 2G: Padavan 5G: Padavan_5G

WiFi密码: 1234567890

如要修改请编辑 [public.sh](https://github.com/TurBoTse/Padavan-Build/blob/main/public/public.sh) 宽带账号和密码 默认AP模式 打开桥接 超频 集成插件等更多请参考[PSG1218.sh](https://github.com/TurBoTse/Padavan-Build/blob/main/public/PSG1218.sh)

( 注: 每个设备需要不同的IP地址 WiFi名称等请不要合并编译修改如下 )

示例:    打开 [Padavan_CI.yml](https://github.com/TurBoTse/Padavan-Build/blob/main/.github/workflows/Padavan_CI.yml) 修改

          - build_variant: "mt7620"
            targets: "PSG1208 PSG1218 NEWIFI-MINI MI-MINI MI-3 OYE-001 5K-W20"

修改为: 

          - build_variant: "mt7620"
            targets: "PSG1208"
          - build_variant: "mt7620"
            targets: "PSG1218"
          - build_variant: "mt7620"
            targets: "NEWIFI-MINI"

编译脚本带有启用和禁用插件设置 ENABLED_CFG 为启用 DISABLED_CFG 为禁用 ( 先执行这项再执行自定义的 )

示例:

          ENABLED_CFG: |
            CONFIG_FIRMWARE_INCLUDE_LANG_CN
            CONFIG_FIRMWARE_ENABLE_IPV6
          DISABLED_CFG: |
            CONFIG_FIRMWARE_INCLUDE_LANG_UK
            CONFIG_FIRMWARE_INCLUDE_VLMCSD
            CONFIG_FIRMWARE_INCLUDE_TTYD

启用和禁用插件也可以修改 *.config 放在 [public](https://github.com/TurBoTse/Padavan-Build/tree/main/public) 或  [padavan/config](https://github.com/TurBoTse/Padavan-Build/blob/main/padavan/config)

自定义优先执行 [public](https://github.com/TurBoTse/Padavan-Build/tree/main/public) 公共文件夹下的然后再执行各个源码库对应的文件夹  例如:  [padavan/config](https://github.com/TurBoTse/Padavan-Build/blob/main/padavan/config)    [padavan/scripts](https://github.com/TurBoTse/Padavan-Build/blob/main/padavan/scripts)
