# Weapon Restrict
Restrict the use of weapons.

**Main Changes:**
- Removed ***all*** natives by speed. I doubt that many have used it, if at all;
- Control completely removed over training and special rounds. This is a plugin to control the amount of weapons and more;
- Better performance of the whole plugin, it is now less demanding;
- The routings have been changed, which means that plugins for another version may not be compatible with this one;
- Transition to the new syntax;
- The menu is slightly changed;
- Added native to issue immunity;
- Changed the name of the file ***include***; **(restrict > weapon_restrict)**.
- Changed the folder name from ***source code***; **(restrictinc > weapon_restrict)**.
- Sound removed; You already used?

Before the weapon, the ban value for both teams is indicated.
![Menu](http://hlmod.ru/attachments/upload_2017-10-9_22-34-34-png.26198)

Most cvars in the new version are the same as the old one.

The general configuration  weapon_restrict.cfg* is automatically created in the default configuration folder of sourcemod.

- `sm_restrict _*_ct` - Disable the value for CT;
- `sm_restrict _*_t` - Value for prohibition T;

***Where * is the name of the weapon. (ak-47, m4a1)***

- A value of -1 means full access to weapons; **(Pattern)**
- A value of 0 means that there are no weapons;

Numbers greater than 1 and above mean the maximum number of units selected by a team simultaneously from a given weapon;

- `sm_allow_restricted_pickup` - Enables / disables the ban; [0]
- `sm_weapon_restrict_immunity` - Enables / disables immunity for administrators; [0]

To change the immunity flag, set the required flag for the `sm_restrict_immunity_level` command in ***admin_overrides.cfg***. **[The default flag is `"a"`]**

- `sm_weapon_restrict_print_delay` - Interval between prohibition messages. 0 - hang up. [5.0]
- `sm_perplayer_restrict` - Enables / Disables the weapon ban, depending on the number of players on the team. [ 1 ]
- `sm_perplayer_bots` - Account bots. [ 1 ]
- `sm_perplayer_specs` - Count of observers. [ 1 ]
- `sm_weapon_restrict_remove_weapon` - Removal of prohibited weapons when trying to take. [0]

Cvars Counter-Strike: Source:

- sm_weapon_restrict_max_money - The maximum amount of funds a player has. [16000]

## Credits
- [Dr!fter](https://forums.alliedmods.net/showthread.php?p=950174) - Original version of the plugin; ***(https://forums.alliedmods.net/showthread.php?p=950174)***
- [Someone](https://github.com/SomethingFromSomewhere) Project Fork [Weapon Restrict](https://github.com/SomethingFromSomewhere/Weapon-Restrict-Forked);
