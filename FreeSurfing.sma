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


    register_clcmd( "say /freesurf",  "FreeSurf")//general command
    register_clcmd( "say /free",  "FreeSurf")	//shortcut
    
}



public FreeSurf(id) 
{
		
		
		user_silentkill(id);
		set_pev( id, pev_takedamage, DAMAGE_AIM );
		
}