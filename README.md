# High quality music for Fallout 1 and 2.

[![Build Status](https://github.com/BGforgeNet/Fallout2-HQ-music/workflows/package/badge.svg)](https://github.com/BGforgeNet/Fallout2-HQ-music/actions?query=workflow%3Apackage)
[![Discord chat](https://img.shields.io/discord/420268540700917760?logo=discord)](https://discord.gg/4Yqfggm)

[__Download__](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest)
| [__Installation__](#installation)
| [__Forum__](https://forums.bgforge.net/viewtopic.php?f=34&t=286)


Standard Fallout 1/2 music is 22Khz `.acm`. In this repo you can find the following alternatives:
- __High quality__: 44.1Khz `.acm`. (Already included into [Restoration Project](https://github.com/BGforgeNet/Fallout2_Restoration_Project)).
- __Ultra HQ `.wav`__: lossess, uncompressed. ~1Gb.
- __Ultra HQ WavPack__: lossless. ~0.5Gb, but requires WavPack codec.

## Installation
1. [Sfall](#sfall)
1. [HQ](#hq) | [UHQ wav](#uhq-wav) | [UHQ WavPack](#uhq-wavpack)
1. Extra tips: [Fallout 1](#fallout-1), [Linux](#linux).

### Sfall
Sfall is required for any HQ/UHQ option.

1. You need [sfall](https://github.com/phobos2077/sfall) (`ddraw.dll`) version 4.2.9+. Download [here](https://github.com/phobos2077/sfall/releases).
  If you use [UPU](https://github.com/BGforgeNet/Fallout2_Unofficial_Patch) or [RPU](https://github.com/BGforgeNet/Fallout2_Restoration_Project) version 19+, you already have it.
2. In `fallout2.cfg`, find and set the following:
    ```ini
    [sound]
    music_path1=data\sound\music\
    ```

### HQ
1. Download `hq` package from the [latest release page](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest).
1. Extract into `data\sound\music`.

### UHQ (wav)
Same as HQ, but download `uhq_wav` package instead.

Also, in `ddraw.ini`, find and set the following:
```ini
[Sound]
AllowDShowSound=2
```

### UHQ (WavPack)
Same as UHQ (wav), but download `uhq_wavpack` package instead.
Also, you will need to install [WavPack](https://www.wavpack.com/downloads.html) DirectShow Filter.

## Fallout 1
You can't use HQ/UHQ in Fallout **1** directly. But you can use it in [Fallout1in2](https://github.com/rotators/Fo1in2). The procedure is the same.

## Linux
- Make sure to install `gstreamer-plugins-good`, with architecture matching `WINEARCH`.
- For UHQ (WavPack), also install WavPack.
