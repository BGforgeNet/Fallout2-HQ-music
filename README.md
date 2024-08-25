# High quality music for Fallout 1 and 2.

[![Build Status](https://github.com/BGforgeNet/Fallout2-HQ-music/workflows/package/badge.svg)](https://github.com/BGforgeNet/Fallout2-HQ-music/actions?query=workflow%3Apackage)
[![Discord chat](https://img.shields.io/discord/420268540700917760?logo=discord)](https://discord.gg/4Yqfggm)

[**Download**](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest)
| [**Installation**](#installation)
| [**Forum**](https://forums.bgforge.net/viewtopic.php?f=34&t=286)

Standard Fallout 1/2 music is 22 kHz `.acm`. In this repo you can find the following alternatives:

- **High quality**: 44.1 kHz `.acm`. ~350Mb. (Already included into [Restoration Project](https://github.com/BGforgeNet/Fallout2_Restoration_Project)).
- **Lossless**: highest quality there is. Lossess. Wav version is uncompressed, ~1Gb. WavPack and Flac are ~0.5Gb, but require corresponding codecs.

## Installation

1. [Sfall](#sfall)
1. [HQ](#hq) | [Lossless](#lossless).
1. Extra tips: [Fallout 1](#fallout-1), [Linux](#linux).

### Sfall

Sfall is required for any HQ/Lossless option.

1. You need [sfall](https://github.com/phobos2077/sfall) (`ddraw.dll`) version 4.2.9+. Download [here](https://github.com/sfall-team/sfall/releases).
   If you use [UPU](https://github.com/BGforgeNet/Fallout2_Unofficial_Patch) or [RPU](https://github.com/BGforgeNet/Fallout2_Restoration_Project) version 19+, you already have it.
2. In `fallout2.cfg`, find and set the following:
   ```ini
   [sound]
   music_path1=data\sound\music\
   ```

### HQ

1. Download `hq` package from the [latest release page](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest).
1. Extract files into `data\sound\music`.

### Lossless

Same as HQ, but download corresponding lossless package instead.

Also, in `ddraw.ini`, find and set the following:

```ini
[Sound]
AllowDShowSound=2
```

- For **Wav**, no additional configuration required.
- For **WavPack**, you will need to install [WavPack](https://www.wavpack.com/downloads.html) DirectShow Filter.
- For **Flac**, you will need [flac](https://www.xiph.org/dshow/) codecs.

## Fallout 1

You can't use HQ/Lossless in Fallout **1** directly. But you can use it in [Fallout1in2](https://github.com/rotators/Fo1in2). The procedure is the same.

## Linux

- Make sure to install `gstreamer-plugins-good`, with architecture matching `WINEARCH`.
- For WavPack/Flac, also install corresponding packages.
