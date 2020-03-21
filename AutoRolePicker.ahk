
coordmode,Mouse,Screen
sendmode,input
returner:
msgbox, available characters, decide on one before continuing, use these names in the next section, not case sensitive. `n Captain HoP QM CT Miner Bartender Cook Botanist Janitor `n Clown Mime Curator Lawyer Chaplain CE Engineer AT CMO MD `n Chemist Geneticist Virologist RD Scientist Roboticist HoS Warden `n Detective SecurityOfficer
inputbox,chosenprofession,OwO what's this, Choose your character 
inputbox, Answer, VibeCheck, are you shure? You chose ---%chosenprofession%--- type no if you want to go back
if (Answer ="no")
	Gosub, returner


array1linenames:=["Captain","HoP","QM","CT","Miner","Bartender","Cook","Botanist","Janitor","Clown","Mime","Curator","Lawyer","Chaplain"]
array2linenames:=["CE","Engineer","AT","CMO","MD","Chemist","Geneticist","Virologist","RD","Scientist","Roboticist","HoS","Warden","Detective","SecurityOfficer"]
i:=1
loop
{
sleep,500
PixelGetColor,Colorforcheck,850,135
if(Colorforcheck=0x332725)
	{
	loop
	{
		if(chosenprofession=array1linenames[i])
		{
		loop 50
			{
				sleep,100
				MouseClick,L,600,200+25*i 
			}
		ExitApp
		}
		else
		{
			if (i<array1linenames.maxindex())
			{
			i++
			}
			else 
			{
				i:=1
				loop
				{
				if(chosenprofession=array2linenames[i])
				{
					loop 50
					{
						sleep,100
						MouseClick,L,770,175+25*i
					}
					ExitApp
				}
				else if(i<array2linenames.maxindex())
				{
					i++
				}
				else
				{
					msgbox,Your profession doesn't exist, either you have made a mistake, or there is a new profession so go edit the script and add it yourself you dork.
				ExitApp
				}
				}
			}
					
		}
		
	}
	}
}
^x::exitapp
	
