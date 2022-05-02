## Character Respawn

This component prevents "Game Over" screen on protagonist character death (including petrification), situations when all party members are charmed and some plot related situations (fail to cure Marek's poison on time, refusing arrest in Candlekeep).

Regarding first point, Protagonist is now never really dead. The minimum HP cap of 1 is introduced to prevent real death (maximum HP is also increased by 1 to "give back" occupied point). When Protagonist HP reach value of 1, respawn process is triggered by scripts. As side effect of this approach, effects that previously drop target HP to 1 now leaves 2 HP. In case of instant kill effects (like petrification), Protagonist is immune to effect itself, but instead respawn process is triggered.

Since Infinity Engine provides many ways to kill character, not all of them are properly handled at current stage of component development. At this point, all ways that can cause death in non-modded game should be handled properly, with the exception of reducing character stat below 1 (currently Protagonist is simply protected aginst it).

"Game over" when entire party is charmed seems to be performed by engine itself, however it can be conifigured per location. This component prevents "game over" in such situations for every location in the game (included those from mods). Situation when entire party is charmed is detected by scripts and triggers respawn process.

For plot related "game over" situations, component tries to recover game in arguably most sensible way. If you die from Marek's poison you will respawn normally and another ten days would be given for you to stop this poison. If you die in Candlekeep after you will be marekd as "criminal", you will respawn in Candlekeep prison and game will continue from there as you would be normally arrested. Note, that since attacking Iron Throne leaders mark you as criminal, you have only one chance to deal with this encounter.

All possible respawn points are configured in [this 2da table](../config/respawn_points.2da). Configuration includes areas and players positon after respawn. Plot related respawn points are hardcoded and always take precedence, however you can configure nearest respawn point for master areas with [this 2da table](../config/respawn_points_nearest.2da). If newly visited master area do not have respawn point configured here, the value of previously visited master area would be used. Note that all changes to those 2da tables must be performed before component is installed.

During respawn process all party members are resurrected and healed. After respawn Protagonist should be in state that would be the case after death and resurrection, although this part was not deeply tested and probably not work correctly in some cases. Healing process, that is applied to every party member, include all effects of normal heal, restoration and dispel magic. It also makes party fully rest.

After respawn, Protagonist should have all equipment that was possesed in moment of "death", however equipment of dead companions is still on battlefield (unless it was pickuped meanwhile by Protagonist or other party member). Please note, that in case when battlefield is far enough from respawn point, this can cause equipment disappear before you will be able to recover it. Some equipment loss can also take place in case when you cannot go back to place of party member death (e.g. fight with Iron Throne leaders in Candlekeep).

Each respawn has consequence in certain penalty of gold and XP. Amount of gold that is taken from the party depends on current party gold and it is configured in [this 2da table](../config/respawn_penalty_gold.2da). XP penalty is applied on each party member separately and it depends on character current XP, it is configured in [this 2da table](../config/respawn_penalty_xp.2da). Note that all changes to those 2da tables must be performed before component is installed. In case you change configuration, you should also avoid reducing character's XP below 0, which is not handled properly by the engine. XP penalty does not affect character level, it just delays getting next level.

---

[< Back to README](./index.md#character-respawn-alpha)
