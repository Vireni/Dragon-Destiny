/*

There are multiple things that happen when you attack someone. When you hit attack, you have a 25% chance for you to attack with your Right
Arm, 25% chance for Left Arm, 25% Chance for right leg, 25% chance for left leg.

AFTER that, you have a 16.6% chance to attack their torso, head, right arm, left arm, right leg, and left leg.

AFTER that, you have a 33% chance to do a weak attack, an average attack, or a strong attack.

If it's a weak attack, you play the sound "weakpunch" or "weakkick" depending on whether you punch or kick. Also, damage is divided by 2.

If it's an average attack, you play the sound "mediumpunch" or "mediumkick". Damage remains untouched.

If it's a strong attack, you play the sound "strongpunch" or "strongkick". Damage is multiplied by 2.


If your opponent dodges the weak attack, the sound "meleemiss1" will play, and the weakpunch/kick will never be played.
If your opponent dodges the average attack, the sound "meleemiss3" will play, and the mediumpunch/kick will never be played.
If your opponent dodges the strong attack, the sound "meleemiss2" will play, and the strongpunch/kick will never be played.

If your opponent blocks any attack, the sound "meleeflash" will play, and spawn the meleeflash icon in ANY coordinate in the view of the
two users, and have their characters be relocated there. The user attacking placed +1,0 next to the flash, and the user being attacked
placed -1,0 next to the flash (those are coordinates btw).Also have the teleport noise play for each user. I'm sure you already know the
blocking mechanics. Have the meleeflash icon deleteafter 2 seconds.


When you attack (and it lands), it'll say

"[usr] punches/kicks [usr2], and it connects on their torso/head/RA/LA/RL/LL!"

When you attack (and they dodge), it'll say

"[usr] tries to punch/kick [usr2], but /he dodges!"

When you attack (and they block), it'll say

"[usr] tries to punch/kick [usr2], but /he dodges!"


Also, here's how knockback works.

When you attack, every 1% damage you do is 1 tile that your opponent will be sent back. If they are knocked back ten tiles or more, play
the sound "swoophit", and spawn blood and have the icon_state be "knockback".The blood will vanish after 5 minutes.

