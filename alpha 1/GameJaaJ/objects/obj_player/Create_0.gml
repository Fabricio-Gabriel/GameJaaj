count = 1 // contador para o Step/Region IR PARA FASE 2
spd = 4 // Velocidade do player
hspd = 0
vspd = 0
municao = 10

#region VIDA
switch(room) // Evita que a vida resete quando muda de fase
{
	case 1:
		global.life = 4
		break;
	default:
		alarm[1] = 60*3
		break;
}
#endregion

function disparar(){
	if municao > 0 
	{
		instance_create_layer(x,y, "instances", obj_bulletPlayer)
		municao--
	}
}