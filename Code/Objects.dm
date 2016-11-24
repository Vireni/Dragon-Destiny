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
				usr.icon = 'Base_ArcosianFriezaBase.dmi'
				usr.icon_state = "standing"
				usr.Race = "Arcosians"
				winshow(usr,"Character",1)
				var/icon/I = Fuse_Icons(usr)
				winset(usr,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
	LoadGame
		icon = 'Load.dmi'
		layer = OBJ_LAYER+1
		pixel_y = 15
		pixel_x = 13
	//	Click()
	//		usr.Loadplayer()

	loginscreen
		icon = 'Login.jpg'