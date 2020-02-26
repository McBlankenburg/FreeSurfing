#include <amxmodx>
#include <amxmisc>
#include <fun>
#include <cstrike>
#include <hamsandwich>
#include <fakemeta>


#define PLUGIN "Free Surfing"
#define VERSION "0.1"
#define AUTHOR "McBlankenburg" // L.Nachos



new bool:switchFreeSurf = false;

public plugin_init() 
{
    register_plugin(PLUGIN, VERSION, AUTHOR);


    register_clcmd( "say /freesurf",  "FreeSurf"); //ogolna komenda
    register_clcmd( "say /free",  "FreeSurf");	//skrot 
    
    
    

    
}






public FreeSurf(id) 
{
	
	
	/*trzeba wprowadzic ograniczenie czasowe */
	
	
	
		
		if(switchFreeSurf == false){ // wejscie do trybu
		switchFreeSurf = true;
	
		client_print(id, print_chat, "[Free Surfing] Turn On");
		set_user_godmode(id, 1 ); //1 - ON, 0 - OFF
		set_user_footsteps(id, 1); //1 - ON, 0 - OFF
		set_user_health(id, 1); // ilosc  hp
		set_user_armor(id, 333); // ilosc  hp
		set_user_rendering(id, kRenderFxNone, 0,0,0, kRenderTransAlpha, 1); //Ustawia niewidzialnosc (przezroczystosc) na wartosc 1
		strip_user_weapons(id); // zabiera wszystkie bronie
		give_item(id, "weapon_knife"); // daje noz
				
		}
		
		else{ //Powrot z trybu
		switchFreeSurf = false;
			
		client_print(id, print_chat, "[Free Surfing] Turn OFF");
		set_user_godmode(id, 0 ); //1 - ON, 0 - OFF
		set_user_footsteps(id, 0); //1 - ON, 0 - OFF
		set_user_health(id, 100); // ilosc  hp
		set_user_gravity(id, 1.0); // 1.0 oznacza 800 gravity
		set_user_armor(id, 0); // ilosc  hp
		set_user_rendering(id, kRenderFxNone, 0,0,0, kRenderTransAlpha, 255); //Ustawia niewidzialnosc (przezroczystosc) na wartosc 1
		strip_user_weapons(id); // zabiera wszystkie bronie
		cs_reset_user_model(id); // ustawia domyslny model
		give_item(id, "weapon_knife"); // daje noz
		give_item(id, "weapon_glock18"); // daje noz
			
		/*
			Trzeba dodac amunicje do broni i rozgraniczenie (inna bron do CT ,a inna do TT. 
		*/
			
		}
		
		
		
		/*
		Jezeli HP gracza jest mniejsze niz 100 oznacza ze otrzymal obrazenia
		a wiec dodamy mu 1 Dead do Score.
		*/
		
		/*if((get_user_health(id)) < 100) 
		{
			cs_set_user_deaths(id, (cs_get_user_deaths(id) + 1))	
		}*/
	
	
		
		
		
		
}

		