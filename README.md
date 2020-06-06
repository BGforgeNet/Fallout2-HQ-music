# Fallout 1/2 HQ music

[![Build Status](https://travis-ci.org/BGforgeNet/Fallout2-HQ-music.svg?branch=master)](https://travis-ci.org/BGforgeNet/Fallout2-HQ-music)
[![Discord chat](https://img.shields.io/discord/420268540700917760?logo=discord)](https://discord.gg/4Yqfggm)

[__Download__](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest)
| [__Install__](#installation)
| [__Report issues__](https://github.com/BGforgeNet/Fallout2-HQ-music/issues)

High quality music for Fallout 1 and 2.

## Installation

### High quality
1. Download HQ version from the [latest release page](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest).
1. Extract into `data\sound\music`.
1. In `fallout2.cfg` (or `fallout.cfg` for F1), find `[sound]` section and set `music_path1=data\sound\music\`.

Note: HQ version is already included into [Restoration Project](https://github.com/BGforgeNet/Fallout2_Restoration_Project), you don't need to install it separately if you use RPU. (But if you want UHQ, see below.)

### Ultra high quality
1. Make sure you have [sfall](https://github.com/phobos2077/sfall/) (`ddraw.dll`) version no less than 4.1.1.
1. Download UHQ version from the [latest release page](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest).
1. Extract into `data\sound\music`.
1. In `fallout2.cfg` find `[sound]` section and set `music_path1=data\sound\music\`.
1. In `ddraw.ini`, find `[Sound]` section and set `AllowDShowSound=2`.

**Note:** you can't use UHQ in Fallout **1** directly, but you can use it in [Fallout1in2](https://github.com/rotators/Fo1in2).
