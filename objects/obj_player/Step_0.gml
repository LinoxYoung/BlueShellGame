x += spd
if place_meeting(x+spd,y,obj_wall)
{
	while !place_meeting(x+sign(spd),y,obj_wall)
	{
		x+=sign(spd)	
	}
	spd = spd * -1
}
x += spd

if place_meeting(x,y+vsp,obj_wall)
{
	while !place_meeting(x,y+sign(vsp),obj_wall)
	{
		y+=sign(vsp)	
	}
	vsp=0
}

y += vsp

if place_meeting(x,y+1,obj_wall)
{
	if keyboard_check(vk_up)
	{
	vsp=jspd
	}
}

else
{
vsp+=grav 
}