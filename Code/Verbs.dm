mob
	verb
		Done()
			set hidden = 1
			src.name = winget(src, "newchar.name", "text")
			if(src.name == "")
				src.name = src.key
			src.name = "[html_encode(src.name)]"
			var/tmp/C = copytext("[src.icon_state]",1,6)
			src.icon_state = "[C]"
			src.loc = locate(1,1,1)
			src.step_size = 1
			winshow(src,"newchar",0)
			src.sight &= ~BLIND