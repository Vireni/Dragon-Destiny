proc/Fuse_Icons(mob/M)
	var/icon/I = new(M.icon, M.icon_state, M.dir, 1)
	for(var/X in M.overlays)
		var/icon/A = new(X:icon, X:icon_state, X:dir, 1)
		I.Blend(A, ICON_OVERLAY)
	return I


mob
	verb
		Next()
			set hidden = 1
			if(src.icon == 'Base_ArcosianFriezaBase.dmi')
				src.icon = 'Base_BrownHumanAdult.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "DemiGods"
				winset(src,"Character.background","image=\ref['DemiGod.jpg']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
			else if(src.icon == 'Base_BrownHumanAdult.dmi')
				src.icon = 'Base_GenieAdult.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "Genies"
				winset(src,"Character.background","image=\ref['Genie.png']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
			else if(src.icon == 'Base_GenieAdult.dmi')
				src.icon = 'Base_TanHumanAdult.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "Humans"
				winset(src,"Character.background","image=\ref['Human.png']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
			else if(src.icon == 'Base_TanHumanAdult.dmi')
				src.icon = 'Base_MetamoranAdult.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "Metamorans"
				winset(src,"Character.background","image=\ref['Metamoran.jpg']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
			else if(src.icon == 'Base_MetamoranAdult.dmi')
				src.icon = 'Base_PiccoloNamekianAdult.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "Namekians"
				winset(src,"Character.background","image=\ref['Namekian.jpg']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
			else if(src.icon == 'Base_PiccoloNamekianAdult.dmi')
				usr.icon = 'Base_OgreAdult.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "Ogres"
				winset(src,"Character.background","image=\ref['Ogre.png']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
			else if(src.icon == 'Base_OgreAdult.dmi')
				usr.icon = 'Base_SpiritDoll.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "SpiritDolls"
				winset(src,"Character.background","image=\ref['SpiritDoll.jpg']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
			else if(src.icon == 'Base_SpiritDoll.dmi') //spirit doll was last
				usr.icon = 'Base_ArcosianFriezaBase.dmi'
				var/icon/I = Fuse_Icons(src)
				src.Race = "Arcosians"
				winset(src,"Character.background","image=\ref['Arcosian.png']")
				winset(src,"Character.chardisplay","image=\ref[fcopy_rsc(I)]")
		Done()
			set hidden = 1
			winshow(usr,"Character",0)
			src.loc = locate(1,1,1)
			src.sight &= ~BLIND


