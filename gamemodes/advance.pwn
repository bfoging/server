#include <a_samp>
#include "streamer"
#include "a_actor"
#include "mysql"
#include "dc_cmd"
#include "sscanf2"

//================================================================ДЕФАЙНЫ==============================================================================

#define SERVER_NAME "Advance RP | by Bfoging"//Название сервера

//----------------Дефаны команд–----------------------

#define SCM SendClientMessage
#define SPD ShowPlayerDialog
#define DSL DIALOG_STYLE_LIST
#define SPI SetPlayerInterior

//-----------------Дефайны цвета------------------------

#define COLOR_GREY 0xAFAFAFAA
#define COLOR_PORPUL 0x8B2EF3FF

//================================================================ГЛОБАЛЬНЫЕ ПЕРЕМЕННЫЕ===========================================================================

//------------Переменные ВХОД/ВЫХОД-------------------

new vhodmeriya;

//=====================================================================================================================================================
main()
{
	print("\n----------------------------------");
	print("------------Advance RP------------");
	print("----------------------------------\n");
}

public OnGameModeInit()
{
	DisableInteriorEnterExits();
	EnableStuntBonusForAll(0);
	SetGameModeText("Advance RP v0.02");
	SendRconCommand("hostname "SERVER_NAME);
	SendRconCommand("Language Russian");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	
//------------------------Пикапы—-------------------------

	vhodmeriya = CreatePickup(1318, 23,1481.1349,-1771.6619,18.7958,0);

//------------------------Машины------------------------

	CreateVehicle(559,1759.0234,-1894.9308,14.5558,270.6985,232,0,-1,0);

//------------------------------------------------------
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid,0x8B2EF3FF,"Добро пожаловать на сервер Advance RP by Bfoging");
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerPos (playerid, 1759.0234,-1894.9308,13.5558);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	if(pickupid == vhodmeriya)
	{
		SCM(playerid, COLOR_PORPUL, "Вы вошли в мерию");
	}
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
//===================================================================СТОКИ===============================================================================

stock PlaerName(playerid)
{
	new novoeimya[MAX_PLAYER_NAME];
	GetPlayerName(playerid, novoeimya, sizeof(novoeimya));
	return 1;
}

//=======================================================================================================================================================
ALTX:mm("/menu");
CMD:mm(playerid,params[])
{
	SPD(playerid, 1, DSL,"{40E1A9}Команды", "{F7FFA8}1. Статисктика персонажа\n{F7FFA8}2. Настройки аккаунта\n{F7FFA8}3. Оружие\n{F7FFA8}4. Телепорты\n{F7FFA8}5. Машины\n{F7FFA8}6. Аксессуры\n{F7FFA8}7. Помощь администрации", "{999999}Выбрать","{999999}Закрыть");
	return 1;
}
CMD:tpi(playerid, params[])
{
	if(sscanf(params,"ui", params[0], params[1])) return SCM (playerid,COLOR_GREY,"Введите /tpi [ID] [ID интерьера]");
	new string[128];
	format(string, sizeof(string), "Вы телепортировали игрока %s с id (%i) и id интерьера (%i)", PlaerName(params[0]),params[0], params[1]);
	SCM(playerid, COLOR_PORPUL, string);
	SetPlayerInterior(params[0], params[1]);
	return 1;
}