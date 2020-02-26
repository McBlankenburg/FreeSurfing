#include <amxmodx>
#include <amxmisc>
#include <fun>
#include <cstrike>
#include <hamsandwich>
#include <fakemeta>


#define PLUGIN "Free Surfing"
#define VERSION "0.1"
#define AUTHOR "McBlankenburg"


public plugin_init() 
{
    register_plugin(PLUGIN, VERSION, AUTHOR);


    register_clcmd( "say /freesurf",  "FreeSurf")
    
}



public FreeSurf(id) 
{
		
		
		user_silentkill(id);
		set_pev( id, pev_takedamage, DAMAGE_AIM );
		
}
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ deff0{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ lang1045\\ f0\\ fs16 \n\\ par }
*/
