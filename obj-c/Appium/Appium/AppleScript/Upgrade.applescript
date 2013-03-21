on run argv
	set dmgPath to item 1 of argv
	set mountPath to item 2 of argv
	set source to item 3 of argv
	set destination to item 4 of argv
	do shell script "hdiutil attach \"" & dmgPath & "\""
	do shell script "sudo cp -rvp \"" & source & "\" \"" & destination & "\"" with administrator privileges
	do shell script "hdiutil detach \"" & mountPath & "\""
end run