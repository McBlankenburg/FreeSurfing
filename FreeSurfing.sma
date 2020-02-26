#include <amxmodx>
#include <amxmisc>
#include <fun>
#include <cstrike>
#include <hamsandwich>
#include <fakemeta>


#define PLUGIN "Free Surfing"
#define VERSION "0.1"
#define AUTHOR "McBlankenburg" // L.Nachos





public plugin_init() 
{
    register_plugin(PLUGIN, VERSION, AUTHOR);


    register_clcmd( "say /freesurf",  "FreeSurf"); //ogolna komenda
    register_clcmd( "say /free",  "FreeSurf");	//skrot 
    
}



public FreeSurf(id) 
{
		//client_print(id, print_chat, "[Free Surfing] Turn On");
		set_user_godmode(id, 1 ); //1 - ON, 0 - OFF
		set_user_footsteps(id, 1);
		set_user_health(id, 1); // ilosc  hp
		set_user_rendering(id, kRenderFxNone, 0,0,0, kRenderTransAlpha, 1); //Ustawia niewidzialnosc (przezroczystosc) na wartosc 1
		strip_user_weapons(id);
		give_item(id, "weapon_knife");
		
		
		//user_silentkill(id);  // cicho zabija
		
}