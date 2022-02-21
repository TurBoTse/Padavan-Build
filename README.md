# Padavan 固件自定义修改并全自动编译

直接 Fork 修改好之后点击 Star 按钮即可开始自动编译 ( 自己点击 Star 才会运行 请不要重复点击 点一次运行一次 ) 

点击 [Actions](https://github.com/TurBoTse/Padavan-Build/actions) 按钮查看项目运行状态 编译好的固件也在里面 

Vb1980_kvr_CI 源码使用 [vb1980](https://github.com/vb1980/Padavan-KVR.git)

Hanwckf_CI 源码使用 [Hanwckf](https://github.com/hanwckf/rt-n56u.git)

Hanwckf_4.4_kernal_CI 源码使用 [Hanwckf](https://github.com/hanwckf/padavan-4.4.git)

MeIsReallyBa_4.4_kernal_CI 源码使用 [MeIsReallyBa](https://github.com/MeIsReallyBa/padavan-4.4.git)

用户名: admin

登录密码: admin

IP地址: 192.168.2.1

WiFi名称: 2G: Padavan

WiFi名称: 5G: Padavan_5G

WiFi密码: 1234567890

如要修改请编辑 [public.sh](https://github.com/TurBoTse/Padavan-Build/blob/main/hanwckf/scripts/public.sh) 

宽带账号和密码 默认AP模式 打开桥接 超频 集成插件等更多请参考[K2P.sh](https://github.com/TurBoTse/Padavan-Build/blob/main/hanwckf/scripts/K2P.sh)

( 注: 每个设备需要不同的IP地址 WiFi名称等请不要合并编译修改如下 )

示例:    打开 [Padavan_CI.yml](https://github.com/TurBoTse/Padavan-Build/blob/main/.github/workflows/Hanwckf_CI.yml) 修改

          - build_variant: "mt7620"
            targets: "PSG1208 PSG1218 NEWIFI-MINI MI-MINI MI-3 OYE-001 5K-W20"

修改为: 

          - build_variant: "mt7620"
            targets: "PSG1208"
          - build_variant: "mt7620"
            targets: "PSG1218"
          - build_variant: "mt7620"
            targets: "NEWIFI-MINI"

编译脚本带有启用和禁用插件设置  ( 先执行这项再执行自定义的 )


启用和禁用插件也可以修改 *.config 放在 [hanwckf/config](https://github.com/TurBoTse/Padavan-Build/tree/main/hanwckf/config)
