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
- Sound removed;

Before the weapon, the ban value for both teams is indicated.
![Menu](http://hlmod.ru/attachments/upload_2017-10-9_22-34-34-png.26198)

Most cvars in the new version are the same as the old one.

The general configuration  weapon_restrict.cfg* is automatically created in the default configuration folder of sourcemod.

- `sm_restrict _*_ct` - Disable the value for CT;
- `sm_restrict _*_t` - Value for prohibition T;

***Where * is the name of the weapon. (AK-47, M4A1, etc)***

- A value of -1 means full access to weapons; **(Pattern)**
- A value of 0 means that there are no weapons;

Numbers greater than 1 and above mean the maximum number of units selected by a team simultaneously from a given weapon;

- `sm_allow_restricted_pickup "0"` - Enables / disables the ban;
- `sm_weapon_restrict_immunity "0"` - Enables / disables immunity for administrators;

To change the immunity flag, set the required flag for the `sm_restrict_immunity_level` command in **admin_overrides.cfg**.

## Cvars
- `sm_weapon_restrict_print_delay "5.0"` - Interval between prohibition messages.
- `sm_perplayer_restrict "1"` - Enables / Disables the weapon ban, depending on the number of players on the team.
- `sm_perplayer_bots "1"` - Account bots.
- `sm_perplayer_specs "1"` - Count of observers.
- `sm_weapon_restrict_remove_weapon "0"` - Removal of prohibited weapons when trying to take.

### Cvars Counter-Strike: Source:
- `sm_weapon_restrict_max_money "16000"` - The maximum amount of funds a player has.

## Credits
- [Dr!fter](https://forums.alliedmods.net/showthread.php?p=950174) - Original version of the plugin; ***(https://forums.alliedmods.net/showthread.php?p=950174)***
- [Someone](https://github.com/SomethingFromSomewhere) Project Fork [Weapon Restrict](https://github.com/SomethingFromSomewhere/Weapon-Restrict-Forked);
