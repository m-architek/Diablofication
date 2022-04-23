# Diablofication

**Version:** v0.1 ([Download](https://github.com/m-architek/Diablofication/releases))  
**Game**: BG1 EE v2.6 without SoD  
**Platform:** Windows  
**Language:** Universal (no new lines added)  


## Overview

Diablofication is Infinity Enigne modification that aims to implement some of the mechanics known from Diablo II into Baldur's Gate games series.

Diablo II and Baldur's Gate are two very different games. Diablofication doesn't try to change that by being total conversion mod. Instead, it tries to understand why certain mechanic is fun in Diablo II and introduce changes to Baldur's Gate to obtain the same result, without turning game balance upside down. 

Consequently, Diablofication is tweak collection mod that focus on following aspects of gameplay:

- Improve immersion by adding facilities for "no reload" gameplay, including ones that make this style of playing available for less experienced players.

- Increase replayability by randomization of game content.

- Enhance hack'n'slash aspect by introducing certain quality of life features and rules tweaks, especially ones focused on "no reload" solo playthrough.

See [components list](#components) for more details about mod content.

Although some of the changes brought by Diablofication have major impact on game exepriance, this modification tries to maintain compatibility with other mods by following "maximum effect at minimum cost" rule (obviously together with best modding practices). See [compatibility section](#compatibility) for more details.


## Installation

Unpack mod archive in main game directory. Run setup-Diablofication.exe and follow instructions on the screen. To make this mod work properly starting new game is required.

For deinstallation reverse steps of installation process. Run setup-Diablofication.exe and choose [U]ninstall option. After process finish, you can remove mod files from your game directory. Please note, that after mod deinstallation, using saves made when mod was yet installed can lead to unexpected issues.

See [here](https://www.gibberlings3.net/forums/topic/33164-a-new-player%E2%80%99s-guide-to-installing-and-playing-mods) for more details about installing and playing Inifnity Engine modifications.


## Compatibility

Diablofication is using WeiDU for patching game files in a way that will be compatible with patches done by other WeiDU based modifications. However, this "technical" compatibility not guarantee flawless in-game experiance so please read following notes about cross-mod compatibility and installation order.

Diablofication is tweak collection mod and should be installed possibly late in mod installation process (preferably as the last mod). It tries to detect changes done by other modifications and acts accordingly to provide best compatibility.

Each Diablofication component makes changes in different aspect of the game, detail compatibility notes are maintaied per each component indyvidually, please read them before installation. Moreover, some Diablofication components will refuse to install if they will detect incompatibility with one of already installed mod (this feature is obviously limited only to some of the most popular modifications).


## Components

Diablofication mod consists of following components. All components are optional and independent from each other.

### Character Respawn (Alpha)

In case of Protagonist death, entire party will be ressurected in nearest temple (or in other sensible place if temple is currently unavailable). This will however has consequence in certain amount of gold and experience points loss.

**Motivation:** This component is designed to allow "no reload" play style for less experianced players. You can now play "no realod" and your character death will have certain consequences, but it will not end your playtrough. If you always wanted start playing "no realod", but you were intimidated by too severe consequence of your eventual mistake, this component is exactly for you. It can also be useful if you already play "no reload" and enjoy it, but you want to make it more casual and open for experiments.

**Compatibility:** This component should be installed after every mod that add new areas, items or spells. Resolving respawn place cannot work perfect in mod-added areas, it is advised to visit closest non-mod area before traveling there. Sometimes this component can produce strange results together with mods that add complex plot (e.g. when you die in mod-added area that is no longer reacheble from nearest temple, what makes impossible to finish your quest). In case of such problems, you can always fallback to standard "reload" approach for this part of the game. In general, taking into account current stage of development, it is advised to save game normally, and just not reload it, unless some unpredicted problem occurs. This component is not compatible with mods that make changes related to Protagonist death like "Death Cam" component of [Tweaks Anthology](https://www.gibberlings3.net/mods/tweaks/tweaks/) or [Protagonist Can Die](https://www.gibberlings3.net/forums/topic/28910-protagonist-can-die/page/2/#comment-280191) tweak.

See [here](docs/character_respawn.md) for more details (this can include spoilers).


## Final notes

This mod wouldn't exist without help of [The Gibberlings Three](https://www.gibberlings3.net/) modding community.  
Special thanks goes to:
- [The_Baffled_King](https://www.gibberlings3.net/profile/11489-the_baffled_king/) for groundbreaking technical insights and suggestions.
- [lynx](https://www.gibberlings3.net/profile/2635-lynx/), [Sam.](https://www.gibberlings3.net/profile/3522-sam/), [jmerry](https://www.gibberlings3.net/profile/12457-jmerry/), [Taimon](https://www.gibberlings3.net/profile/2297-taimon/), [argent77](https://www.gibberlings3.net/profile/3876-argent77/), [DavidW](https://www.gibberlings3.net/profile/1067-davidw/), [subtledoctor](https://www.gibberlings3.net/profile/6306-subtledoctor/) for technical help (in order of appearance).
- [Jarno Mikkola](https://www.gibberlings3.net/profile/2129-jarno-mikkola/), [In_A_Graveyard](https://www.gibberlings3.net/profile/12821-in_a_graveyard/), [Endarire](https://www.gibberlings3.net/profile/5772-endarire/), [kijikun](https://www.gibberlings3.net/profile/5820-kijikun/) for interest and suggestions (in order of appearance).

This modification is powered by [WeiDU v249](https://github.com/WeiDUorg/weidu/releases/tag/v249.00). You can find this in every mod readme, but it is not exaguration: thanks Weimer, The Bigg, Wisp and all contributors for creating this!

Infinity Engine related resources that was invaluable help in creating this modification:
- [IESDP](https://gibberlings3.github.io/iesdp/)
- [WeiDU Documentation](https://weidu.org/~thebigg/README-WeiDU.html)
- [Complete Scripting Guide](https://www.pocketplane.net/tutorials/simscript.html)
- Work of other modders, especially [The Tweaks Anthology](https://www.gibberlings3.net/mods/tweaks/tweaks/) and [klatu Tweaks and Fixes](http://www.shsforums.net/files/file/1109-klatu-tweaks-and-fixes/)
- [The Gibberlings Three Forum](https://www.gibberlings3.net/forums/) and [Pocket Plane Group Forum](https://forums.pocketplane.net/index.php)

Infinity Engine related tools that was used for creation of this modification:  
- [WeiDU](https://github.com/WeiDUorg/weidu)
- [NearInfinity](https://github.com/Argent77/NearInfinity)
- [BGforge VS code extension](https://bgforge.net/mls/)

For support visit: [GitHub](https://github.com/m-architek/Diablofication/issues)

License: [GPL v3](LICENSE)

---

## Changelog

### v0.1
- Alpha version of Character Respawn component 
