#SingleInstance Force ; just makes my life easier. removes  the pop up about having many of the same script running and deletes the duplicate
CoordMode, Mouse, Screen ; the coordinates are made for a little bit less than fullscreen, but as the game has insane inventory hitboxes it doesnt matter
SendMode,Input ;removes movement between clicks
i := 1 ;used to scroll ahead the coordinate selection, resets after the loop finishes
SleepTime := 100 ;Modify this depending on server lag, it will always skip a few tough, the servers are shit lol, or maybe if i add
InventoryLocationsX:= [700,789,847,500,550,600,650,700,750,800]
InventoryLocationsY:= [700,703,703,641,641,641,641,641,641,641]
^b::
	MouseGetPos,StartingX,StartingY
	Send, A
	sleep,75
	Send, D ;I added SendA and SendD because the game doesnt let the script trow items, this bypasses it and doesnt move the player for some reason.
	Send, R
	sleep, 25
	MouseClick,Left,StartingX,StartingY
	Loop % InventoryLocationsX.maxindex()
	{
	Sleep, %SleepTime%
	MouseClick, Left, InventoryLocationsX[i],InventoryLocationsY[i]
	Send, R
	Sleep, %SleepTime%
	Click,%StartingX%, %StartingY%
	i++
	}
	i := 1 ;resets it to 1 to begin the cycle again
	return
^x::ExitApp

/*
InventoryLocationsX:= [262,335,332,396,261,335,327]
InventoryLocationsY:= [514,516,578,581,640,639,705] Body not gloves only standart
393,703 - 458 - 521 - 582 - 789 - 847 Bottom inventory row not counting arms, 703 on everyone
Toolbelt 1-6 500,550,600,650,700,750 For bag slot just +50
					641,641,641,641,641,641

X - 874,634 close bag/toolbelt
262,335,332,396,261,335,327,393,521,500,550,600,650,700,750,874,582,500,550,600,650,700,750,800,874,789,847
514,516,578,581,640,639,705,703,703,641,641,641,641,641,641,634,703,641,641,641,641,641,641,641,643,703,703 Full inv not keycard or trow toolbelt and bag, only contents also not gloves

650,700    Both hands
700,700

700,789,847,500,550,600,650,700,750,800 Bag and pockets
700,703,703,641,641,641,641,641,641,641
*/
