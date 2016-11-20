mob
	Login()
		src.loc = locate(15,13,2)
		world << output("Test","output1")
		src.sight &= ~BLIND
/*
For each race, have the imaged correlate with it in the background, and there are titles for each race written in DBZ font that I want
in the center. Also note I want the picture with the red Z as the login screen.
When you login, the song “Dragon Soul” will automatically play for the person logging in. This is where they’ll see the “New” and “Load”
prompts, and there will be the login picture. If they click new, display the first race. Have arrows on the right and left side so people
can go to different races to select them. On the center of the screen, it will have the race name, and when they click it, it’ll pull up
the race description, and they can either click “Select” or “Cancel.” If they click cancel, bring them back to the load screen. If they
click select, put in a prompt for


Alien- Put in a prompt to select what type of alien they want.
Kuri Type
Akai Type
Hariken Type
Taimu Type
Noido Type
Makyos
Hera
Gijutsu Type
Sukushi Type
Shibo Type
Neko Type
Jikan Type
If one chose any of those, give them a gender prompt (Male/Female/Neuter).
If one chose Hariken, Noido, Hera, Gijutsu or Sukushi type, give them a prompt to choose their hairstyle and color (color hexagon), and eye
color.
After that, ask them for their name, then have them spawn on Planet X (Don’t code spawning yet)


Arcosian- Put in a prompt to select what type of Arcosian they want
Cooler Type
Chilled Type
King Cold Type
Frost Type
Frieza Type
Then prompt gender, then prompt name, then spawn on Arcose


Demi-God- Prompt gender, prompt hair and color, and eye color prompt name, then spawn on Planet X


Genie- Prompt gender, prompt name, then spawn on Earth


Human- Prompt gender, prompt hair and color,eye color, prompt skin color(base icons), prompt name, then spawn on Earth




Kai- Prompt gender, prompt hair and color,eye color, prompt skin color(hexagon), prompt name, then spawn on Sacred Kai Planet


Metamoran- Prompt gender, prompt name, then spawn on Metamor


Namekian- Prompt Class (Healer or Fighter),eye color, prompt name, then spawn on Namek


Ogre- Prompt gender, prompt name, then spawn on Checkpoint


Saiyan- RandomClassGenerator, Prompt gender,prompt hair (All Saiyan hair black by default..Only full-blooded ones though), prompt name, then spawn on
 Vegeta


Spirit Doll- Prompt gender, prompt name, then spawn on Earth


Tuffle- Prompt gender, hair and hair color,eye color prompt name, then spawn on Vegeta


Wizard- Prompt gender, prompt name, then spawn on Planet X


Yardrat- Prompt gender, prompt name, then spawn on Yardrat


Zeno- Prompt name, then spawn on Zeno Planet


If they pressed load, simply load their character to their last location. Have the game autosave characters and saves turfs and other stuff during month changes, which’ll be hourly.


I’ll icon the other planet maps soon, and Saiyans/Tuffles will have a specific spawn coordinate, the rest will be randomized.
*/
