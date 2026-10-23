# High quality music for Fallout 1 and 2

[![Build status](https://github.com/BGforgeNet/Fallout2-HQ-music/actions/workflows/package.yml/badge.svg)](https://github.com/BGforgeNet/Fallout2-HQ-music/actions/workflows/package.yml)

[![Telegram](https://img.shields.io/badge/telegram-join%20%20%20%20%E2%9D%B1%E2%9D%B1%E2%9D%B1-darkorange?logo=telegram)](https://t.me/bgforge)
[![Discord](https://img.shields.io/discord/420268540700917760?logo=discord&label=discord&color=blue&logoColor=FEE75C)](https://discord.gg/4Yqfggm)
[![IRC](https://img.shields.io/badge/%23IRC-join%20%20%20%20%E2%9D%B1%E2%9D%B1%E2%9D%B1-darkorange)](https://bgforge.net/irc)

[**Download**](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest)
| [**Installation**](#installation)
| [**Report issues**](#bug-reports-feature-requests)

Standard Fallout 1/2 music is 22 kHz `.acm`. In this repo you can find the following alternatives:

- **High quality**: 44.1 kHz `.acm`. ~350Mb. (Already included into [Restoration Project, updated](https://github.com/BGforgeNet/Fallout2_Restoration_Project)).
- **Lossless**: highest quality there is. Wav version is uncompressed, ~1Gb. WavPack and Flac are ~0.5Gb, but require corresponding codecs.

## Installation

1. [Sfall](#sfall)
1. [HQ](#hq) | [Lossless](#lossless).
1. Extra tips: [Fallout 1](#fallout-1), [Linux](#linux).

### Sfall

Sfall is required for any HQ/Lossless option.

1. You need [sfall](https://github.com/sfall-team/sfall) (`ddraw.dll`) version 4.3.7+. Download [here](https://github.com/sfall-team/sfall/releases).
   If you use [UPU](https://github.com/BGforgeNet/Fallout2_Unofficial_Patch) or [RPU](https://github.com/BGforgeNet/Fallout2_Restoration_Project) version 30+, you already have it.
2. In `fallout2.cfg`, find and set the following:
   ```ini
   [sound]
   music_path1=data\sound\music\
   ```

### HQ

1. Download the `hq` package from the [latest release page](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest).
2. Extract files into `data\sound\music`.

### Lossless

Same as HQ, but download the lossless package instead.

Also, in `ddraw.ini`, find and set the following:

```ini
[Sound]
AllowDShowSound=1
```

- For **Wav**, no additional configuration is required.
- For **WavPack**, you will need to install the [WavPack](https://www.wavpack.com/downloads.html) DirectShow Filter.
- For **Flac**, you will need [flac](https://www.xiph.org/dshow/) codecs.

## Fallout 1

You can't use HQ/Lossless in Fallout **1** directly, but you can use it in [Fallout1in2](https://github.com/rotators/Fo1in2). The procedure is the same.

## Linux

- Make sure to install `gstreamer-plugins-good`, with architecture matching `WINEARCH`.
- For WavPack/Flac, also install the corresponding packages.

## Bug reports, feature requests

Go to [github issues](https://github.com/BGforgeNet/Fallout2-HQ-music/issues) or the [forum thread](https://forums.bgforge.net/viewtopic.php?f=34&t=286).

## Additional info

[**Changelog**](docs/changelog.md)
