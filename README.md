
# 📦 Padavan 4.4 固件自动构建（支持多设备 / 插件 / 超频）

基于 [TurBoTse](https://github.com/TurBoTse/padavan) 的 Padavan 项目，支持多目标设备编译、插件定制、Nano 精简版构建等，完全通过 GitHub Actions 云端构建，无需本地环境！

- 修改好固件配置文件再点击  [Actions](../../actions) → [Custom Build](../../actions/workflows/build_padavan.yml) → Run workflow 

  ![run workflow](public/run-workflow.webp)


## 🧩 功能特点 | Features

- ✅ 支持多设备并行构建（K2P、R2100、MI-R3G 等）
- ✅ 支持定制默认 IP / WiFi / 管理账号等
- ✅ 可选插件编译（如 Shadowsocks、Xray、SmartDNS 等）
- ✅ 支持 MT7621 CPU 超频（最高至 1200MHz）
- ✅ Nano 精简固件构建模式
- ✅ 自动上传至 Releases，支持旧版本清理

## 🚀 快速开始 | Quick Start

### ✅ 1. 点击 GitHub Actions → 选择 "Custom Multi-Target Build"


### 📝 2. 填写构建参数 | Fill in Build Inputs

| 输入项 | 说明 | 示例 |
|--------|------|------|
| `targets` | 路由器型号（逗号分隔）| `K2P,R2100` |
| `toolchain` | 工具链选择 | `mipsel-linux-musl` |
| `cpufreq` | 启用 CPU 超频 | `true/false` |
| `mt7621_oc` | 超频频率代码 | `1000Mhz=0x312 1100Mhz=0x362 1120Mhz=0x372 1200Mhz=0x3B2` |
| `plugins` | 插件 JSON 配置 | `{"ss":"y","xray":"n"}` |
| `customization` | 固件定制（默认 IP、密码等） | `{"lanip":"192.168.2.1"}` |
| `nanoversion` | 是否构建精简版 | `false` |
| `release` | 上传到 Release | `true` |
| `oldreleases` | 删除旧 Release | `true` |
| `oldworkflow` | 删除旧 Workflow | `true` |


### ⚙️ 3. 等待构建完成 | Wait for Build


### 📥 4. 下载固件 | Download Firmware


在右侧的 **Releases** 页面中下载对应路由器的 `.trx` 固件文件：

命名格式如下：

```
TurBoTse-K2P-4.4-mipsel-linux-musl-nano-cpufreq-0x362-20250520.trx
```


## 🔧 JSON 插件配置示例 | Plugin JSON Example

```json
{
  "ss": "y",
  "v2ray": "n",
  "xray": "y",
  "trojan": "y",
  "ssobfs": "y",
  "smartdns": "y",
  "vlmcsd": "y",
  "ttyd": "n",
  "iperf3": "n"
}
```

## 🛠️ 自定义设置 | Customization JSON 示例

```json
{
  "lanip": "192.168.2.1",
  "signaccount": "admin",
  "signpassword": "admin",
  "wifi2gssid": "Padavan",
  "wifi2gpsk": "1234567890",
  "wifi5gssid": "Padavan-5G",
  "wifi5gpsk": "1234567890"
}
```

## 💡 常见问题 | FAQ

- **插件无效？** 请确认 `plugins` JSON 正确、配置项拼写无误。
- **构建失败？** 检查 config.log 日志（已自动上传为 Artifact）。
- **怎么添加新设备？** 只需在 `targets` 中添加设备代码，并确保对应 `.config` 文件存在。

## 🙏 致谢 | Credits

- [TurBoTse](https://github.com/TurBoTse)
- [Padavan Project](https://github.com/hanwckf/rt-n56u)
- [GitHub Actions](https://github.com/features/actions)
