#include <amxmodx>
#include <amxmisc>
#include <fun>
#include <cstrike>
#include <hamsandwich>
#include <fakemeta>
//#include <stripweapons>


#define PLUGIN "Free Surfing"
#define VERSION "0.1"
#define AUTHOR "McBlankenburg" // L.Nachos

new iSwitch[33];

public plugin_init() 
{
    register_plugin(PLUGIN, VERSION, AUTHOR);
    
    register_clcmd( "say /freesurf",  "IsFreeSurf"); //ogolna komenda
    register_clcmd( "say /free",  "IsFreeSurf");	//skrot 
    
}


public IsFreeSurf(id) //funkcja sprawdza czy jestes na freesurfie czy nie
{
	
	if (iSwitch[id]  ==  false) 
	{
	
		iSwitch[id] = true; // przelacznik
		StartFreeSurf(id) // uruchamiamy funkcje
	}
	else //iswitch == true
	{
		ExitFreeSurf(id);
		
	}
	
	
	
}




public  StartFreeSurf(id) 
{
	
	
	/*trzeba wprowadzic ograniczenie czasowe */
	
	
		client_print(id, print_chat, "[Free Surfing] Turn On");
		set_user_godmode(id, 1 ); //1 - ON, 0 - OFF
		set_user_footsteps(id, 1); //1 - ON, 0 - OFF
		set_user_health(id, 1); // ilosc  hp
		set_user_armor(id, 333); // ilosc  armoru
		set_user_rendering(id, kRenderFxNone, 0,0,0, kRenderTransAlpha, 0); //Ustawia niewidzialnosc (przezroczystosc) na wartosc 0
		strip_user_weapons(id); // zabiera wszystkie bronie
		
					
}

		

public ExitFreeSurf(id)
{
		client_print(id, print_chat, "[Free Surfing] Turn OFF");
		set_user_godmode(id, 0 ); //1 - ON, 0 - OFF
		set_user_footsteps(id, 0); //1 - ON, 0 - OFF
		set_user_health(id, 100); // ilosc  hp
		set_user_gravity(id, 1.0); // 1.0 oznacza 800 gravity
		set_user_armor(id, 0); // ilosc  hp
		set_user_rendering(id, kRenderFxNone, 0,0,0, kRenderTransAlpha, 255); //Ustawia niewidzialnosc (przezroczystosc) na wartosc 1
		strip_user_weapons(id); // zabiera wszystkie bronie
		give_item(id, "weapon_knife"); // daje noz
	
		/*cs_reset_user_model(id); // ustawia domyslny model
		give_item(id, "weapon_knife"); // daje noz
		StripWeapons(id, Secondary);
		cs_set_user_team(id, CS_TEAM_T, CS_DONTCHANGE), give_item(id, "weapon_glock18"); // daje bron
		cs_set_user_bpammo(id, CSW_GLOCK18, 90); // daje ammo 
		StripWeapons(id, Secondary);
		cs_set_user_team(id, CS_TEAM_CT, CS_DONTCHANGE), give_item(id, "weapon_usp"); // daje bron
		cs_set_user_bpammo(id, CSW_USP, 90); // daje ammo;*/
	
}
		
		