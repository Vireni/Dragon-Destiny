proc/Fuse_Icons(mob/M)
	var/icon/I = new(M.icon, M.icon_state, M.dir, 1)
	for(var/X in M.overlays)
		var/icon/A = new(X:icon, X:icon_state, X:dir, 1)
		I.Blend(A, ICON_OVERLAY)
	return I