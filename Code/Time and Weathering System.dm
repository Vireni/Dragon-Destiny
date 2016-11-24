/*

Basically this is how the time system works.


There are 12 months in a year, each being labeled the respective month names.
Each month passes every 60 minutes. When a month passes, it is nighttime, and the full moon is likely out on most planets. After 30 minutes
it becomes daytime. During nighttime there is a dark overlay everywhere except in buildings. There is also a sound effect for nighttime.

Daytime is 30 minutes, so is nighttime. After 15 minutes of daylight, the sunset icon_state will overlay the screen (except inside
buildings),
and after fifteen minutes of nighttime, the sunrise icon_state will overlay the screen.

When you're near water turfs, you'll hear the water sound effect.


Game starts at Year 1 of course.

When the months change, it'll say

"It is now [MonthName] of Year [insertyear#here]."


There is also a weathering system.

When it's January, February and December, have the snow icon_state play during the daytime, and Night snow icon_state during the nighttime.
Also have all grass turfs be replaced with snow turfs. The only exception to this is Arcose, since it will have a blizzard no matter what
time of year it is, and Planet Vegeta, since there will be no snow there.

For blizzards, have the blizzard sound play.

During March, have it rain during the daytime. There will be a sound effect for rain.
During April, have it storm during the daytime. There will be a sound effect for thunderstorms.
During May, June, July, August, September, October and November have no weather effects except for nighttime.





