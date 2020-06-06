# Fallout 1/2 HQ music

[![Build Status](https://travis-ci.org/BGforgeNet/Fallout2-HQ-music.svg?branch=master)](https://travis-ci.org/BGforgeNet/Fallout2-HQ-music)
[![Discord chat](https://img.shields.io/discord/420268540700917760?logo=discord)](https://discord.gg/4Yqfggm)

[__Download__](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest)
| [__Install__](#installation)
| [__Report issues__](https://github.com/BGforgeNet/Fallout2-HQ-music/issues)

High quality music for Fallout 1 and 2.

## Installation

### High quality
- Download HQ version from the [latest release page](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest).
- Extract into `data\sound\music`.
- In `fallout2.cfg` (or `fallout.cfg` for F1), find `[sound]` section and set `music_path1=data\sound\music\`.

Note: HQ version is already included into [Restoration Project](https://github.com/BGforgeNet/Fallout2_Restoration_Project), you don't need to install it separately if you use RPU. (But if you want UHQ, see below.)

### Ultra high quality
- Download UHQ version from the [latest release page](https://github.com/BGforgeNet/Fallout2-HQ-music/releases/latest).
- Extract into `data\sound\music`.
- In `fallout2.cfg` (or `fallout.cfg` for F1), find `[sound]` section and set `music_path1=data\sound\music\`.
- In `ddraw.ini`, find `[Sound]` section and set `AllowDShowSound=2`.
