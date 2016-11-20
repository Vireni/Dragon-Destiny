obj
	NewGame
		icon = 'New.dmi'
		layer = OBJ_LAYER+1
		pixel_y = 1
		pixel_x = 9
		Click()
			if(fexists("Players/[usr.key].save"))
				usr<< output("Are you sure you wish to start a new game?","output1")
			else
				usr.sight |= BLIND
				winshow(usr,"newchar",1)
				var/icon/I = Fuse_Icons(usr)
				winset(usr,"newchar.chardisplay","image=\ref[fcopy_rsc(I)]")
	LoadGame
		icon = 'Load.dmi'
		layer = OBJ_LAYER+1
		pixel_y = 15
		pixel_x = 13
	//	Click()
	//		usr.Loadplayer()

	loginscreen
		icon = 'Login.jpg'