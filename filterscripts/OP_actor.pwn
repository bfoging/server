/*=================[FS] Система актёров v9.0====================================
_____________ При публикации просьба указывать автора Oleg_Petrow ______________

  +==========+ +==========+ +==========+ +==========+    +======+  +==+      +==+     +==+
  ||        || ||                ||      ||        ||  //       \\  \  \     |  |    /  /
  ||        || ||                ||      ||        || ||         ||  \  \    |  |   /  /
  ||=========+ |+========+       ||      ||=\\======+ ||         ||   \  \   |  |  /  /
  ||           ||                ||      ||   \\      ||         ||    \  \  |  | /  /
  ||           ||                ||      ||     \\     \\       //      \  \/   \/  /
  ||           |+=========+      ||      ||       \\    +======+         \_________/

	Обновления в версии 1.1:
	- Не нужны инклуды dc_cmd и mxINI.

	Обновления в версии 2.0:
	- Добавлена система поворота актёра.
	- Исправлен большой баг с удалением актёров.
	- Теперь при удалении обновляются все актёры.
	- Поставленно ограничение на создание актёров (максимальное число: 50).
	- Добавлена функция сохранения актёров. Они сохраняются в папку scriptfiles. Файл: op_actors.pwn
	- Показывается номер скина в "Изменении скина"
	
	Обновления в версии 3.0:
	- Добавлена функция изменения виртуального мира актёра.
	- При создании актёра ему даётся вирт.мир такой же, как и у игрока.
	- Теперь команда /actor доступна только Rcon-администратору.
	- Максимальное количество актёров теперь 100.
	- Теперь использование скрипта более удобно (я про диалог)
	- Из-за пункта выше количество строк и количество диалогов уменьшилось.
	
	Обновление в версии 3.1:
	- Исправлен маленький баг с вирт.миром
	
	Обновление в версии 4.0:
	- Теперь при сохранении сохраняется ещё и вирт.мир актёра.
	- Добавлена функция "передвигать актёра".
	- В меню управления актёром можно задать актёру анимацию. Пока что это пробная версия, поэтому пока что только анимации из библиотеки DANCING.
	- При сохранении актёров их анимации тоже сохраняются.
	
	Обновление в версии 4.1:
	- Добавлены 3 библиотеки анимаций.

	Обновление в версии 4.2:
	- Добавлены ещё 3 библиотеки анимаций.
	
	Обновление в версии 5.0:
	- Теперь максимальное количество актёров равно его лимиту в клиенте SA-MP (1000 актёров).
	- Исправлен небольшой баг при создании актёра на одном месте.
	- Теперь вместо клавиши 'Пробел' нужно нажать 'с' (по умолчанию - присесть). Причиной тому стало то, что на Пробел игроки бегают, и не удобно использовать.
	- Нельзя создать актёра, сидя в машине.
	- Теперь актёр создаётся не в мерте от Вас, а на вашем месте. После создания актёра - Вас ТПшит на расстояние метра от актёра.
	- Сидя в машине нельзя переместить/повернуть актёра.
	- Теперь снова нужен инклуд mxINI (как в версии 1.0, но там он был бесполезен).
	- Теперь функция "Сохранение актёров" - не для вставки в мод.
	- Добавлена функция загрузки актёров - загружаются они после сохранения (пункт выше).
	- Исправлены текстовые ошибки.
	- Добавлена функция удаления всех актёров.
	
	Обновление в версии 5.1:
	- Исправлен крупный баг с командами (у многих команды сервера не работали).
	- Исправлен баг с удалением всех актёров (раньше не удаляло).
	
	Обновление в версии 6.0:
	- Добавлены имена актёрам. Имена отображаются над головой актёра (так же как и ник у игрока).
	- Добавлена смена имён.
	- Стандартные имена (даётся при создании актёра): мужское - Олежка; женское - Викуля.
	- Добавлена функция изменение цвета имени.
	- Стандартный цвет (при создании) - белый.
	- Добавлено сохранение/загрузка цвета.
	
	Обновление в версии 6.1:
	- Теперь в просмотре актёров, если актёры не созданы - будет писаться, типа "Актёры ещё не созданы".
	- То же самое, но с удалением и с сохранением.
	
	Обновление в версии 6.2:
	- Исправлен баг с удалением актёра (оставалось его имя над головой).
	
	Обновление в версии 7.0:
	- Добавлен рандомный выбор цвета, при создании актёра (раньше первый цвет давался только белый).
	- Имена актёрам теперь даются из файлов, которые находятся в scriptfiles.
	- Мужским скинам даются мужские имена (из файла "OP_Actors_Names_M.cfg")
	- Женским скинам даются женские имена (из файла "OP_Actors_Names_W.cfg")
	- Теперь, если в scriptfiles нет файлов: "OP_Actors.cfg", "OP_Actors_Names_M.cfg" и "OP_Actors_Names_W.cfg", то автоматически будут создаваться эти файлы.
	
	Обновление в версии 8.0:
	- Если в файлах с именами отсутствуют некоторые числа (между самым меньшим и самым большим), то эти числа будут создаваться автоматически при запуске мода.
	- Исправлена небольшая недоработка версии 7.0 (когда файлы не закрывались системой, после создания)
	- При отключении скрипта от сервера (через RCON или выключение сервера) теперь автоматически удаляются актёры и их имена (которые 3D текстом над ними)
	
	Обновление в версии 8.1:
	- Теперь при просмотре всех актёров будут показываться их имена.
	
	Обновление в версии 9.0:
	- Добавлено изменение количества имён.
	- В пункт 'Меню' добавлены 'Настройки'.
	- В меню настроек добавлена функция показа/скрытия имени актёра.
	- Добавлена функция вывода ID актёра вместе с именем (в квадратных скобках, как ID игрока) - включить и отключить её можно в настройках.
	- Пункты "Переместить актёра" и "Повернуть актёра" объединены в один раздел.
	- В новом разделе "Переместить/Повернуть актёра" добавлена функция Перемещения и Поворота актёра одновременно.

																																																												*/
#include <a_samp>
#include <a_actor>
#include <mxINI>

#define COLOR_WHITE 	0xFFFFFFAA

new MAXACT = -1;
new MAXMN = 10;
new MAXWN = 10;
new pokas = 1;
new pokasid = 0;

enum aInfo
{
	aID,
	aSkin,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	aVirt,
	bool:aPol,
	aColor,
	aName[MAX_PLAYER_NAME],
	Text3D:Text3D
};
new ActorInfo[1000][aInfo];

stock GetActorPol(actor)
{
	switch(ActorInfo[actor][aSkin])
	{
		case 1..8,14..30,32..38,42..52,57..62,66..68,70..74,78..84,86,94..128,132..137,142..147,149,153..156,158..168,170,171,173..177,179..189,200,202..204,206,208..213,217,220..223,227..230,234..236,239..242,247..250,252..255,258..262,264..297,299..305,310,311: return ActorInfo[actor][aPol] = false;
		case 9..13,31,39..41,53..56,63..65,69,75.77,85,87..93,129..131,138..141,148,150..152,157,169,172,178,190..199,201,205,207,214..216,218,219,224..226,231..233,237,238,243..246,251,256,257,263,298,306..309: return ActorInfo[actor][aPol] = true;
	}
	return false;
}
public OnFilterScriptInit()
{
	print("+---------------------------------------------+");
	print("|    Скрипт от Oleg_Petrow успешно загружен   |");
	print("| Скриптинг от Oleg_Petrow: vk.com/op_scripts |");
	print("|        Система актёров | Версия: 9.0        |");
	print("|_____________________________________________|");
	new opf = ini_openFile("OP_Actors_Names_M.cfg");
	if(opf < 0)
	{
	    new opfc = ini_createFile("OP_Actors_Names_M.cfg");
	    ini_setInteger(opfc, "MAXMN", 10);
		for(new i; i<MAXMN; i++)
		{
		    new string[3];
		    format(string, sizeof(string), "%d", i);
		    ini_setString(opfc, string, "");
		}
		ini_closeFile(opfc);
		print("[OP_Actors] Файла \"OP_Actors_Names_M.cfg\" не было обнаружено.");
		print("[OP_Actors] Файл \"OP_Actors_Names_M.cfg\" был создан системой.");
	}
	else
	{
		ini_getInteger(opf, "MAXMN", MAXMN);
		if(MAXMN < 10) MAXMN = 10, ini_setInteger(opf, "MAXMN", 10);
		for(new i; i<MAXMN; i++)
		{
		    new string[4], p[MAX_PLAYER_NAME];
		    format(string, sizeof(string), "%d", i);
		    ini_getString(opf, string, p);
	    	if(!strlen(p)) ini_setString(opf, string, "");
		}
		print("[OP_Actors] Файл \"OP_Actors_Names_M.cfg\" успешно загружен.");
	}
	ini_closeFile(opf);
	opf = ini_openFile("OP_Actors_Names_W.cfg");
	if(opf < 0)
	{
	    new opfc = ini_createFile("OP_Actors_Names_W.cfg");
	    ini_setInteger(opfc, "MAXWN", 10);
		for(new i; i<MAXWN; i++)
		{
		    new string[3];
		    format(string, sizeof(string), "%d", i);
		    ini_setString(opfc, string, "");
		}
		ini_closeFile(opfc);
		print("[OP_Actors] Файла \"OP_Actors_Names_W.cfg\" не было обнаружено.");
		print("[OP_Actors] Файл \"OP_Actors_Names_W.cfg\" был создан системой.");
	}
	else
	{
		ini_getInteger(opf, "MAXWN", MAXWN);
		if(MAXWN < 10) MAXWN = 10, ini_setInteger(opf, "MAXWN", 10);
		for(new i; i<MAXWN; i++)
		{
		    new string[4], p[MAX_PLAYER_NAME];
		    format(string, sizeof(string), "%d", i);
		    ini_getString(opf, string, p);
	    	if(!strlen(p)) ini_setString(opf, string, "");
		}
		print("[OP_Actors] Файл \"OP_Actors_Names_W.cfg\" успешно загружен.");
	}
	ini_closeFile(opf);
	LoadActors();
	return 1;
}
public OnFilterScriptExit()
{
	for(new i; i <= MAXACT; i++) DestroyActor(i), Delete3DTextLabel(ActorInfo[i][Text3D]);
	return 1;
}
stock LoadActors()
{
	new iniFile = ini_openFile("OP_Actors.cfg");
	if(iniFile < 0)
	{
		new timeFile = ini_createFile("OP_Actors.cfg");
		new string[7];
		format(string, sizeof(string), "MAXACT");
		ini_setInteger(timeFile, string, MAXACT);
		ini_closeFile(timeFile);
		print("[OP_Actors] Файла \"OP_Actors.cfg\" не было обнаружено.");
		print("[OP_Actors] Файл \"OP_Actors.cfg\" был создан системой.");
		return 1;
	}
	ini_getInteger(iniFile, "MAXACT",MAXACT);
	for(new i = 0; i <= MAXACT; i++)
	{
	    new string[50];
	    format(string, sizeof(string), "[%d] aID", i);
		ini_getInteger(iniFile, string, ActorInfo[i][aID]);
	    format(string, sizeof(string), "[%d] aSkin", i);
		ini_getInteger(iniFile, string, ActorInfo[i][aSkin]);
	    format(string, sizeof(string), "[%d] aVirt", i);
		ini_getInteger(iniFile, string, ActorInfo[i][aVirt]);
	    format(string, sizeof(string), "[%d] aPosX", i);
		ini_getFloat(iniFile, string, ActorInfo[i][aPosX]);
	    format(string, sizeof(string), "[%d] aPosY", i);
		ini_getFloat(iniFile, string, ActorInfo[i][aPosY]);
	    format(string, sizeof(string), "[%d] aPosZ", i);
		ini_getFloat(iniFile, string, ActorInfo[i][aPosZ]);
	    format(string, sizeof(string), "[%d] aPosA", i);
		ini_getFloat(iniFile, string, ActorInfo[i][aPosA]);
	    format(string, sizeof(string), "[%d] aColor", i);
		ini_getInteger(iniFile, string, ActorInfo[i][aColor]);
		format(string, sizeof(string), "[%d] aName", i);
		new nameact[MAX_PLAYER_NAME];
		ini_getString(iniFile, string,nameact);
		format(ActorInfo[i][aName], MAX_PLAYER_NAME, "%s", nameact);
		CreateActor(ActorInfo[i][aSkin], ActorInfo[i][aPosX], ActorInfo[i][aPosY], ActorInfo[i][aPosZ], ActorInfo[i][aPosA]);
		SetActorVirtualWorld(i, ActorInfo[i][aVirt]);
		LoadActorAnim(i);
		if(pokas == 1)
		{
			if(pokasid == 0) ActorInfo[i][Text3D] = Create3DTextLabel(ActorInfo[i][aName], SetActorColor(i,0), ActorInfo[i][aPosX], ActorInfo[i][aPosY], ActorInfo[i][aPosZ]+1.1, 15.0, ActorInfo[i][aVirt], 1);
			else
			{
				new str[MAX_PLAYER_NAME+8];
				format(str, sizeof(str), "%s [%d]", ActorInfo[i][aName], i);
				ActorInfo[i][Text3D] = Create3DTextLabel(str, SetActorColor(i,0), ActorInfo[i][aPosX], ActorInfo[i][aPosY], ActorInfo[i][aPosZ]+1.1, 15.0, ActorInfo[i][aVirt], 1);
			}
		}
	}
	printf("Загружено %d актёров!",MAXACT+1);
	ini_closeFile(iniFile);
	return 1;
}
stock SaveActors()
{
	new iniFile = ini_openFile("OP_Actors.cfg");
	ini_setInteger(iniFile, "MAXACT", MAXACT);
	for(new i = 0; i <= MAXACT; i++)
	{
	    new string[50];
	    format(string, sizeof(string), "[%d] aID", i);
		ini_setInteger(iniFile, string, ActorInfo[i][aID]);
	    format(string, sizeof(string), "[%d] aSkin", i);
		ini_setInteger(iniFile, string, ActorInfo[i][aSkin]);
	    format(string, sizeof(string), "[%d] aVirt", i);
		ini_setInteger(iniFile, string, ActorInfo[i][aVirt]);
	    format(string, sizeof(string), "[%d] aPosX", i);
		ini_setFloat(iniFile, string, ActorInfo[i][aPosX]);
	    format(string, sizeof(string), "[%d] aPosY", i);
		ini_setFloat(iniFile, string, ActorInfo[i][aPosY]);
	    format(string, sizeof(string), "[%d] aPosZ", i);
		ini_setFloat(iniFile, string, ActorInfo[i][aPosZ]);
	    format(string, sizeof(string), "[%d] aPosA", i);
		ini_setFloat(iniFile, string, ActorInfo[i][aPosA]);
	    format(string, sizeof(string), "[%d] aName", i);
		ini_setString(iniFile, string, ActorInfo[i][aName]);
	    format(string, sizeof(string), "[%d] aColor", i);
		ini_setInteger(iniFile, string, ActorInfo[i][aColor]);
	}
	print("Все актёры были успешно сохранены!");
	ini_closeFile(iniFile);
	return 1;
}
stock SetActorColor(actor, type)
{
	new color;
	switch(type)
	{
	    case 0:
	    {
			switch(ActorInfo[actor][aColor])
			{
			    case 0: color = 0xFFFFFFFF;
				case 1: color = 0x0000FFFF;
				case 2: color = 0x000000FF;
				case 3: color = 0xFF0000FF;
				case 4: color = 0xFFFF00FF;
				case 5: color = 0x00FF00FF;
				case 6: color = 0x000066FF;
				case 7: color = 0xFF66FFFF;
				case 8: color = 0x009900FF;
				case 9: color = 0x00FFFFFF;
				default: color = 0xFFFFFFFF;
			}
			return color;
		}
		case 1:
		{
		    new rand = random(10);
			ActorInfo[actor][aColor] = rand;
		    switch(rand)
		    {
			    case 0: color = 0xFFFFFFFF;
				case 1: color = 0x0000FFFF;
				case 2: color = 0x000000FF;
				case 3: color = 0xFF0000FF;
				case 4: color = 0xFFFF00FF;
				case 5: color = 0x00FF00FF;
				case 6: color = 0x000066FF;
				case 7: color = 0xFF66FFFF;
				case 8: color = 0x009900FF;
				case 9: color = 0x00FFFFFF;
				default: color = 0xFFFFFFFF;
		    }
			return color;
		}
	}
	return false;
}
stock GetName(actor)
{
	new string[64], rname = random(10);
	switch(ActorInfo[actor][aPol])
	{
	    case false:
	    {
			new OPAct = ini_openFile("OP_Actors_Names_M.cfg"), nameact[MAX_PLAYER_NAME];
			format(string, sizeof(string), "%d", rname);
			ini_getString(OPAct, string, nameact);
			format(ActorInfo[actor][aName], MAX_PLAYER_NAME, "%s", nameact);
			ini_closeFile(OPAct);
			if(!strlen(ActorInfo[actor][aName])) format(ActorInfo[actor][aName], 7, "Олежка");
	    }
	    case true:
		{
			new OPAct = ini_openFile("OP_Actors_Names_W.cfg"), nameact[MAX_PLAYER_NAME];
			format(string, sizeof(string), "%d", rname);
			ini_getString(OPAct, string, nameact);
			format(ActorInfo[actor][aName], MAX_PLAYER_NAME, "%s", nameact);
			ini_closeFile(OPAct);
			if(!strlen(ActorInfo[actor][aName])) format(ActorInfo[actor][aName], 7, "Викуля");
		}
	}
	if(pokas == 1)
	{
		if(pokasid == 0) ActorInfo[actor][Text3D] = Create3DTextLabel(ActorInfo[actor][aName], SetActorColor(actor,0), ActorInfo[actor][aPosX], ActorInfo[actor][aPosY], ActorInfo[actor][aPosZ]+1.1, 15.0, ActorInfo[actor][aVirt], 1);
		else
		{
			new str[MAX_PLAYER_NAME+8];
			format(str, sizeof(str), "%s [%d]", ActorInfo[actor][aName], actor);
			ActorInfo[actor][Text3D] = Create3DTextLabel(str, SetActorColor(actor,0), ActorInfo[actor][aPosX], ActorInfo[actor][aPosY], ActorInfo[actor][aPosZ]+1.1, 15.0, ActorInfo[actor][aVirt], 1);
		}
	}
	return 1;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case 5100:
		{
	        if(!response) return 1;
			switch(listitem)
			{
				case 0:
				{
				    if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Нельзя создать актёра, сидя в машине!");
					ShowPlayerDialog(playerid, 5101, DIALOG_STYLE_INPUT, "Создание актёра","Введите номер скина, который будет у актёра!", "Далее","Назад");
				}
				case 1:
				{
        			if(MAXACT < 0) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Актёры ещё не созданы!");
					new string[100], stringer[1000];
				    for(new i = 0; i <= MAXACT; i++)
				    {
					    format(string, sizeof(string), "Актёр номер {FF0000}%d{FFFFFF} | Имя: {FF0000}%s\n", i, ActorInfo[i][aName]);
					    strcat(stringer, string);
				    }
					ShowPlayerDialog(playerid, 5150, DIALOG_STYLE_LIST, "Выберите актёра",stringer, "Далее","Назад");
				}
				case 2:
				{
				    if(MAXACT < 0) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Актёры не были созданы!");
				    for(new i = 0; i <= MAXACT; i++)
				    {
				        DestroyActor(i);
						Delete3DTextLabel(ActorInfo[i][Text3D]);
				    }
				    MAXACT = -1;
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Все актёры удалены!");
				}
				case 3:
				{
				    if(MAXACT < 0) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Актёры ещё не созданы!");
				    SaveActors();
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Все актёры сохранены. При следующем запуске мода вместе со скриптом - актёры будут загружены.");
				}
				case 4: ShowPlayerDialog(playerid, 5122, DIALOG_STYLE_LIST, "Настройки","Список рандомных имён\nИзменение количества имён\nПоказ имён\nПоказ номера актёра","Далее","Назад");
			}
		    return 1;
		}
		case 5150:
		{
	        if(!response) return 1;
	        for(new i = 0; i <= MAXACT; i++)
	        {
	            if(listitem == i)
	            {
	                new acid[100];
					SetPVarInt(playerid, "actor", i);
	                format(acid, sizeof(acid), "Актёр номер {FF0000}%d{FFFFFF} | Имя: {FF0000}%s", i, ActorInfo[i][aName]);
	                ShowPlayerDialog(playerid, 5102, DIALOG_STYLE_LIST, acid, "Телепорт к актёру\nИзменить скин актёру\nУдалить актёра\nПереместить/Повернуть актёра\nИзменить вирт.мир актёра\nДобавить анимацию актёру\nИзменить имя актёру\nИзменить цвет имени", "Далее", "Назад");
	            }
	        }
	        return 1;
		}
	    case 5101:
		{
	        if(!response) return OnPlayerCommandText(playerid, "/actor");
	        if(MAXACT >= 999) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] У вас уже максимальное количество актёров!");
			if(!strlen(inputtext)) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Неверный номер скина!");
			if(strval(inputtext) < 1 || strval(inputtext) > 311) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Неверный номер скина!");
			new Float: pX, Float: pY, Float: pZ, Float: pA, Float: pXx, Float: pYy, Float: pZz;
			GetPlayerPos(playerid, pX, pY, pZ);
			for(new i = 0; i <= MAXACT; i++)
			{
				GetActorPos(i, pXx, pYy, pZz);
				if(pX == pXx && pY == pYy) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Актёр уже существует на этом месте!");
			}
			GetPlayerFacingAngle(playerid, pA);
			new string[160];
			MAXACT = CreateActor(strval(inputtext), pX, pY, pZ, pA);
			ActorInfo[MAXACT][aID] = MAXACT;
			ActorInfo[MAXACT][aSkin] = strval(inputtext);
			ActorInfo[MAXACT][aVirt] = GetPlayerVirtualWorld(playerid);
			ActorInfo[MAXACT][aPosX] = pX;
			ActorInfo[MAXACT][aPosY] = pY;
			ActorInfo[MAXACT][aPosZ] = pZ;
			ActorInfo[MAXACT][aPosA] = pA;
			SetActorVirtualWorld(MAXACT, ActorInfo[MAXACT][aVirt]);
			LoadActorAnim(MAXACT);
			SetPlayerPos(playerid, pX, pY+1, pZ);
			GetActorPol(MAXACT);
			GetName(MAXACT);
			SendClientMessage(playerid, 0x00FFFFFF, "Вы создали актёра.");
			format(string, 160, "{00FFFF}Номер: {FFFFFF}%d{FF0000} | {00FFFF}Имя: {FFFFFF}%s{FF0000} | {00FFFF}Вирт.мир: {FFFFFF}%d", MAXACT, ActorInfo[MAXACT][aName], ActorInfo[MAXACT][aVirt]);
			SendClientMessage(playerid, COLOR_WHITE, string);
			return 1;
	    }
		case 5102:
		{
		    if(!response) return 1;
			new i = GetPVarInt(playerid, "actor");
		    switch(listitem)
		    {
		        case 0:
				{
				    if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SetPlayerPos(playerid, ActorInfo[i][aPosX], ActorInfo[i][aPosY]+2, ActorInfo[i][aPosZ]);
					SetVehiclePos(GetPlayerVehicleID(playerid), ActorInfo[i][aPosX], ActorInfo[i][aPosY]+3, ActorInfo[i][aPosZ]);
				}
				case 1: ShowPlayerDialog(playerid, 5103, DIALOG_STYLE_INPUT, "Изменить скин актёру","Введите номер скина", "Сменить","Назад");
				case 2:
				{
	                DestroyActor(i);
					Delete3DTextLabel(ActorInfo[i][Text3D]);
				    for(new o = 0; o <= MAXACT; o++)
				    {
				        if(o <= i) continue;
						DestroyActor(o);
						ActorInfo[o-1][aID] = CreateActor(ActorInfo[o][aSkin], ActorInfo[o][aPosX], ActorInfo[o][aPosY], ActorInfo[o][aPosZ], ActorInfo[o][aPosA]);
						ActorInfo[o-1][aSkin] = ActorInfo[o][aSkin];
						ActorInfo[o-1][aVirt] = ActorInfo[o][aVirt];
						ActorInfo[o-1][aPosX] = ActorInfo[o][aPosX];
						ActorInfo[o-1][aPosY] = ActorInfo[o][aPosY];
						ActorInfo[o-1][aPosZ] = ActorInfo[o][aPosZ];
						ActorInfo[o-1][aPosA] = ActorInfo[o][aPosA];
						ActorInfo[o-1][aColor] = ActorInfo[o][aColor];
						format(ActorInfo[o-1][aName], MAX_PLAYER_NAME, ActorInfo[o][aName]);
						SetActorVirtualWorld(ActorInfo[o-1][aID], ActorInfo[o-1][aVirt]);
						Delete3DTextLabel(ActorInfo[o][Text3D]);
						if(pokas == 1)
						{
							if(pokasid == 0) ActorInfo[o-1][Text3D] = Create3DTextLabel(ActorInfo[o-1][aName], SetActorColor(o-1,0), ActorInfo[o-1][aPosX], ActorInfo[o-1][aPosY], ActorInfo[o-1][aPosZ]+1.1, 15.0, ActorInfo[o-1][aVirt], 1);
							else
							{
								new str[MAX_PLAYER_NAME+8];
								format(str, sizeof(str), "%s [%d]", ActorInfo[o-1][aName], o-1);
								ActorInfo[o-1][Text3D] = Create3DTextLabel(str, SetActorColor(o-1,0), ActorInfo[o-1][aPosX], ActorInfo[o-1][aPosY], ActorInfo[o-1][aPosZ]+1.1, 15.0, ActorInfo[o-1][aVirt], 1);
							}
						}
						LoadActorAnim(o-1);
				    }
				    MAXACT --;
	        		SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы успешно удалили актёра. Все актёры обновлены!");
				}
				case 3: ShowPlayerDialog(playerid, 5125, DIALOG_STYLE_LIST, "Повернуть/Переместить актёра","Повернуть актёра\nПеревестить актёра\nПовернуть и переместить актёра","Выбрать","Назад");
				case 4: ShowPlayerDialog(playerid, 5104, DIALOG_STYLE_INPUT, "Изменение вирт.мира актёра","Введите вирт.мир актёра \n\nвирт.мир не может быть меньше 0 и больше 1000.", "Далее","Назад");
				case 5: ShowPlayerDialog(playerid, 5105, DIALOG_STYLE_LIST, "Анимации","Очистить анимацию\nDANCING\nBAR\nBEACH\nBOMBER\nBUDDY\nCAMERA\nped","Далее","Назад");
				case 6:
				{
				    if(pokas == 0) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] У Вас отключён показ имён!");
					ShowPlayerDialog(playerid, 5113, DIALOG_STYLE_INPUT, "Изменить имя актёру","Введите новое имя","Далее","Отмена");
				}
				case 7: ShowPlayerDialog(playerid, 5114, DIALOG_STYLE_LIST, "Цвет имени актёра","{FFFFFF}Белый\n{0000FF}Синий\n{000000}Чёрный\n{FF0000}Красный\n{FFFF00}Жёлтый\n{00FF00}Ярко-зелёный\n{000066}Тёмно-синий\n{FF66FF}Розовый\n{009900}Зелёный\n{00FFFF}Голубой","Далее","Отмена");
		 	}
		    return 1;
		}
	    case 5103:
	    {
	        if(!response) return OnPlayerCommandText(playerid, "/actor");
			if(!strlen(inputtext) || strval(inputtext) < 1 || strval(inputtext) > 311) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Неверный номер скина!");
			new i = GetPVarInt(playerid, "actor"), string[100];
			DestroyActor(i);
			CreateActor(strval(inputtext), ActorInfo[i][aPosX], ActorInfo[i][aPosY], ActorInfo[i][aPosZ], ActorInfo[i][aPosA]);
			SetActorVirtualWorld(i, ActorInfo[i][aVirt]);
			ActorInfo[i][aSkin] = strval(inputtext);
			LoadActorAnim(i);
			format(string, sizeof(string), "[{0000FF}OP_Actor{FFFFFF}] Новый скин актёра номер {00FF00}%d{FFFFFF}: {FF0000}%d",i, ActorInfo[i][aSkin]);
			SendClientMessage(playerid, COLOR_WHITE, string);
			return 1;
	    }
		case 5104:
		{
			if(!response) return OnPlayerCommandText(playerid, "/actor");
			if(!strlen(inputtext) || strval(inputtext) < 0 || strval(inputtext) > 1000) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Неверный номер вирт.мира!");
			new i = GetPVarInt(playerid, "actor"), string[100];
			SetActorVirtualWorld(i, strval(inputtext));
			ActorInfo[i][aVirt] = strval(inputtext);
			Delete3DTextLabel(ActorInfo[i][Text3D]);
			if(pokas == 1)
			{
				if(pokasid == 0) ActorInfo[i][Text3D] = Create3DTextLabel(ActorInfo[i][aName], SetActorColor(i,0), ActorInfo[i][aPosX], ActorInfo[i][aPosY], ActorInfo[i][aPosZ]+1.1, 15.0, ActorInfo[i][aVirt], 1);
				else
				{
					new str[MAX_PLAYER_NAME+8];
					format(str, sizeof(str), "%s [%d]", ActorInfo[i][aName], i);
					ActorInfo[i][Text3D] = Create3DTextLabel(str, SetActorColor(i,0), ActorInfo[i][aPosX], ActorInfo[i][aPosY], ActorInfo[i][aPosZ]+1.1, 15.0, ActorInfo[i][aVirt], 1);
				}
			}
			format(string, sizeof(string), "[{0000FF}OP_Actor{FFFFFF}] Новый вирт.мир актёра номер {00FF00}%d{FFFFFF}: {FF0000}%d",i, ActorInfo[i][aVirt]);
			SendClientMessage(playerid, COLOR_WHITE, string);
			LoadActorAnim(i);
			return 1;
		}
		case 5105:
		{
			if(!response) return OnPlayerCommandText(playerid, "/actor");
			new i = GetPVarInt(playerid, "actor");
			switch(listitem)
			{
			    case 0: ClearActorAnimations(i);//, format(ActorInfo[i][aAnimB], 1, ""), format(ActorInfo[i][aAnimN], 1, ""), ActorInfo[i][aAnimP] = 0;
			    case 1: ShowPlayerDialog(playerid, 5106, DIALOG_STYLE_LIST, "Выберите анимацию | {FF0000}DANCING","bd_clap\nbd_clap1\ndance_loops\nDAN_Down_A\nDAN_Left_A\nDAN_Loop_A\nDAN_Right_A\nDAN_Up_A\ndnce_M_a\ndnce_M_b\ndnce_M_c\ndnce_M_d\ndnce_M_e","Далее","Назад");
				case 2: ShowPlayerDialog(playerid, 5107, DIALOG_STYLE_LIST, "Выберите анимацию | {FF0000}BAR","Barcustom_loop\nBARman_idle\nBarserve_bottle\nBarserve_give\nBarserve_glass\nBarserve_loop\ndnk_stndF_loop\ndnk_stndM_loop","Далее","Назад");
				case 3: ShowPlayerDialog(playerid, 5108, DIALOG_STYLE_LIST, "Выберите анимацию | {FF0000}BEACH","bather\nLay_Bac_Loop\nParkSit_M_loop\nParkSit_W_loop\nSitnWait_loop_W","Далее","Назад");
				case 4: ShowPlayerDialog(playerid, 5109, DIALOG_STYLE_LIST, "Выберите анимацию | {FF0000}BOMBER","BOM_Plant\nBOM_Plant_Loop","Далее","Назад");
				case 5: ShowPlayerDialog(playerid, 5110, DIALOG_STYLE_LIST, "Выберите анимацию | {FF0000}BUDDY", "buddy_crouchfire\nbuddy_crouchreload\nbuddy_fire","Далее","Назад");
				case 6: ShowPlayerDialog(playerid, 5111, DIALOG_STYLE_LIST, "Выберите анимацию | {FF0000}CAMERA", "camcrch_cmon\ncamcrch_idleloop\ncamcrch_stay\ncamcrch_to_camstnd\ncamstnd_cmon\ncamstnd_idleloop\ncamstnd_lkabt","Далее","Назад");
				case 7: ShowPlayerDialog(playerid, 5112, DIALOG_STYLE_LIST, "Выберите анимацию | {FF0000}ped", "WALK_armed\nWALK_civi\nWALK_csaw\nWalk_DoorPartial\nWALK_drunk\nWALK_fat\nWALK_fatold\nWALK_gang1\nWALK_gang2\nWALK_old\nWALK_player\nWALK_rocket\nWALK_shuffle\nWALK_start\nWALK_start_armed\nWALK_start_csaw\nWALK_start_rocket\nWalk_Wuzi\nWEAPON_crouch\nXPRESSscratch\nsprint_civi\nsprint_panic\nSprint_Wuzi","Далее","Назад");
			}
			return 1;
		}
		case 5106:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			new i = GetPVarInt(playerid, "actor");
		    switch(listitem)
		    {
		        case 0: ApplyActorAnimation(i, "DANCING", "bd_clap", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "bd_clap"), ActorInfo[i][aAnimP] = 1;
		        case 1: ApplyActorAnimation(i, "DANCING", "bd_clap1", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "bd_clap1"), ActorInfo[i][aAnimP] = 1;
		        case 2: ApplyActorAnimation(i, "DANCING", "dance_loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "dance_loop"), ActorInfo[i][aAnimP] = 1;
		        case 3: ApplyActorAnimation(i, "DANCING", "DAN_Down_A", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "DAN_Down_A"), ActorInfo[i][aAnimP] = 1;
		        case 4: ApplyActorAnimation(i, "DANCING", "DAN_Left_A", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "DAN_Left_A"), ActorInfo[i][aAnimP] = 1;
		        case 5: ApplyActorAnimation(i, "DANCING", "DAN_Loop_A", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "DAN_Loop_A"), ActorInfo[i][aAnimP] = 1;
		        case 6: ApplyActorAnimation(i, "DANCING", "DAN_Right_A", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "DAN_Right_A"), ActorInfo[i][aAnimP] = 1;
		        case 7: ApplyActorAnimation(i, "DANCING", "DAN_Up_A", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "DAN_Up_A"), ActorInfo[i][aAnimP] = 1;
		        case 8: ApplyActorAnimation(i, "DANCING", "dnce_M_a", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "dnce_M_a"), ActorInfo[i][aAnimP] = 1;
		        case 9: ApplyActorAnimation(i, "DANCING", "dnce_M_b", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "dnce_M_b"), ActorInfo[i][aAnimP] = 1;
		        case 10: ApplyActorAnimation(i, "DANCING", "dnce_M_c", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "dnce_M_c"), ActorInfo[i][aAnimP] = 1;
		        case 11: ApplyActorAnimation(i, "DANCING", "dnce_M_d", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "dnce_M_d"), ActorInfo[i][aAnimP] = 1;
		        case 12: ApplyActorAnimation(i, "DANCING", "dnce_M_e", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 8, "DANCING"), format(ActorInfo[i][aAnimN], 30, "dnce_M_e"), ActorInfo[i][aAnimP] = 1;
		    }
		    return 1;
		}
		case 5107:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			new i = GetPVarInt(playerid, "actor");
			switch(listitem)
			{
			    case 0: ApplyActorAnimation(i, "BAR", "Barcustom_loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "Barcustom_loop"), ActorInfo[i][aAnimP] = 1;
			    case 1: ApplyActorAnimation(i, "BAR", "BARman_idle", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "BARman_idle"), ActorInfo[i][aAnimP] = 1;
			    case 2: ApplyActorAnimation(i, "BAR", "Barserve_bottle", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "Barserve_bottle"), ActorInfo[i][aAnimP] = 1;
			    case 3: ApplyActorAnimation(i, "BAR", "Barserve_give", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "Barserve_give"), ActorInfo[i][aAnimP] = 1;
			    case 4: ApplyActorAnimation(i, "BAR", "Barserve_glass", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "Barserve_glass"), ActorInfo[i][aAnimP] = 1;
			    case 5: ApplyActorAnimation(i, "BAR", "Barserve_loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "Barserve_loop"), ActorInfo[i][aAnimP] = 1;
			    case 6: ApplyActorAnimation(i, "BAR", "dnk_stndF_loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "dnk_stndF_loop"), ActorInfo[i][aAnimP] = 1;
			    case 7: ApplyActorAnimation(i, "BAR", "dnk_stndM_loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "BAR"), format(ActorInfo[i][aAnimN], 30, "dnk_stndM_loop"), ActorInfo[i][aAnimP] = 1;
			}
			return 1;
		}
		case 5108:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			new i = GetPVarInt(playerid, "actor");
		    switch(listitem)
		    {
		        case 0: ApplyActorAnimation(i, "BEACH", "bather", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BEACH"), format(ActorInfo[i][aAnimN], 30, "bather"), ActorInfo[i][aAnimP] = 1;
		        case 1: ApplyActorAnimation(i, "BEACH", "Lay_Bac_Loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BEACH"), format(ActorInfo[i][aAnimN], 30, "Lay_Bac_Loop"), ActorInfo[i][aAnimP] = 1;
		        case 2: ApplyActorAnimation(i, "BEACH", "ParkSit_M_loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BEACH"), format(ActorInfo[i][aAnimN], 30, "ParkSit_M_loop"), ActorInfo[i][aAnimP] = 1;
		        case 3: ApplyActorAnimation(i, "BEACH", "ParkSit_W_loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BEACH"), format(ActorInfo[i][aAnimN], 30, "ParkSit_W_loop"), ActorInfo[i][aAnimP] = 1;
		        case 4: ApplyActorAnimation(i, "BEACH", "SitnWait_loop_W", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BEACH"), format(ActorInfo[i][aAnimN], 30, "SitnWait_loop_W"), ActorInfo[i][aAnimP] = 1;
			}
			return 1;
		}
		case 5109:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    new i = GetPVarInt(playerid, "actor");
		    switch(listitem)
		    {
		        case 0: ApplyActorAnimation(i, "BOMBER", "BOM_Plant", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "BOMBER"), format(ActorInfo[i][aAnimN], 30, "BOM_Plant"), ActorInfo[i][aAnimP] = 1;
		        case 1: ApplyActorAnimation(i, "BOMBER", "BOM_Plant_Loop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "BOMBER"), format(ActorInfo[i][aAnimN], 30, "BOM_Plant_Loop"), ActorInfo[i][aAnimP] = 1;
		    }
		    return 1;
		}
		case 5110:
		{
			if(!response) return OnPlayerCommandText(playerid, "/actor");
			new i = GetPVarInt(playerid, "actor");
			switch(listitem)
			{
			    case 0: ApplyActorAnimation(i, "BUDDY", "buddy_crouchfire", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BUDDY"), format(ActorInfo[i][aAnimN], 30, "buddy_crouchfire"), ActorInfo[i][aAnimP] = 1;
			    case 1: ApplyActorAnimation(i, "BUDDY", "buddy_crouchreload", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BUDDY"), format(ActorInfo[i][aAnimN], 30, "buddy_crouchreload"), ActorInfo[i][aAnimP] = 1;
			    case 2: ApplyActorAnimation(i, "BUDDY", "buddy_fire", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 6, "BUDDY"), format(ActorInfo[i][aAnimN], 30, "buddy_fire"), ActorInfo[i][aAnimP] = 1;
			}
			return 1;
		}
		case 5111:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			new i = GetPVarInt(playerid, "actor");
		    switch(listitem)
		    {
		        case 0: ApplyActorAnimation(i, "CAMERA", "camcrch_cmon", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camcrch_cmon"), ActorInfo[i][aAnimP] = 1;
		        case 1: ApplyActorAnimation(i, "CAMERA", "camcrch_idleloop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camcrch_idleloop"), ActorInfo[i][aAnimP] = 1;
		        case 2: ApplyActorAnimation(i, "CAMERA", "camcrch_stay", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camcrch_stay"), ActorInfo[i][aAnimP] = 1;
		        case 3: ApplyActorAnimation(i, "CAMERA", "camcrch_to_camstnd", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camcrch_to_camstnd"), ActorInfo[i][aAnimP] = 1;
		        case 4: ApplyActorAnimation(i, "CAMERA", "camstnd_cmon", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camstnd_cmon"), ActorInfo[i][aAnimP] = 1;
		        case 5: ApplyActorAnimation(i, "CAMERA", "camstnd_idleloop", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camstnd_idleloop"), ActorInfo[i][aAnimP] = 1;
		        case 6: ApplyActorAnimation(i, "CAMERA", "camstnd_lkabt", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camstnd_lkabt"), ActorInfo[i][aAnimP] = 1;
		        case 7: ApplyActorAnimation(i, "CAMERA", "camstnd_to_camcrch", 4.1, 1, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 7, "CAMERA"), format(ActorInfo[i][aAnimN], 30, "camstnd_to_camcrch"), ActorInfo[i][aAnimP] = 1;
	     	}
		    return 1;
		}
		case 5112:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			new i = GetPVarInt(playerid, "actor");
		    switch(listitem)
		    {
		        case 0: ApplyActorAnimation(i, "ped", "WALK_armed", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_armed"), ActorInfo[i][aAnimP] = 0;
		        case 1: ApplyActorAnimation(i, "ped", "WALK_civi", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_civi"), ActorInfo[i][aAnimP] = 0;
		        case 2: ApplyActorAnimation(i, "ped", "WALK_csaw", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_csaw"), ActorInfo[i][aAnimP] = 0;
		        case 3: ApplyActorAnimation(i, "ped", "Walk_DoorPartial", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "Walk_DoorPartial"), ActorInfo[i][aAnimP] = 0;
		        case 4: ApplyActorAnimation(i, "ped", "WALK_drunk", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_drunk"), ActorInfo[i][aAnimP] = 0;
		        case 5: ApplyActorAnimation(i, "ped", "WALK_fat", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_fat"), ActorInfo[i][aAnimP] = 0;
		        case 6: ApplyActorAnimation(i, "ped", "WALK_fatold", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_fatold"), ActorInfo[i][aAnimP] = 0;
		        case 7: ApplyActorAnimation(i, "ped", "WALK_gang1", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_gang1"), ActorInfo[i][aAnimP] = 0;
		        case 8: ApplyActorAnimation(i, "ped", "WALK_gang2", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_gang2"), ActorInfo[i][aAnimP] = 0;
		        case 9: ApplyActorAnimation(i, "ped", "WALK_old", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_old"), ActorInfo[i][aAnimP] = 0;
		        case 10: ApplyActorAnimation(i, "ped", "WALK_player", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_player"), ActorInfo[i][aAnimP] = 0;
		        case 11: ApplyActorAnimation(i, "ped", "WALK_rocket", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_rocket"), ActorInfo[i][aAnimP] = 0;
		        case 12: ApplyActorAnimation(i, "ped", "WALK_shuffle", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_shuffle"), ActorInfo[i][aAnimP] = 0;
		        case 13: ApplyActorAnimation(i, "ped", "WALK_start", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_start"), ActorInfo[i][aAnimP] = 0;
		        case 14: ApplyActorAnimation(i, "ped", "WALK_start_armed", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_start_armed"), ActorInfo[i][aAnimP] = 0;
		        case 15: ApplyActorAnimation(i, "ped", "WALK_start_csaw", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_start_csaw"), ActorInfo[i][aAnimP] = 0;
		        case 16: ApplyActorAnimation(i, "ped", "WALK_start_rocket", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WALK_start_rocket"), ActorInfo[i][aAnimP] = 0;
		        case 17: ApplyActorAnimation(i, "ped", "Walk_Wuzi", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "Walk_Wuzi"), ActorInfo[i][aAnimP] = 0;
		        case 18: ApplyActorAnimation(i, "ped", "WEAPON_crouch", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "WEAPON_crouch"), ActorInfo[i][aAnimP] = 0;
		        case 19: ApplyActorAnimation(i, "ped", "XPRESSscratch", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "XPRESSscratch"), ActorInfo[i][aAnimP] = 0;
		        case 20: ApplyActorAnimation(i, "ped", "sprint_civi", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "sprint_civi"), ActorInfo[i][aAnimP] = 0;
		        case 21: ApplyActorAnimation(i, "ped", "sprint_panic", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "sprint_panic"), ActorInfo[i][aAnimP] = 0;
		        case 22: ApplyActorAnimation(i, "ped", "Sprint_Wuzi", 4.1, 0, 0, 0, 0, 0); //, format(ActorInfo[i][aAnimB], 4, "ped"), format(ActorInfo[i][aAnimN], 30, "Sprint_Wuzi"), ActorInfo[i][aAnimP] = 0;
	     	}
		    return 1;
		}
		case 5113:
		{
			if(!response) return 1;
		    if(!strlen(inputtext)) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы ничего не ввели!");
		    new actor = GetPVarInt(playerid, "actor"), Float:axX, Float:ayY, Float:azZ, string[100];
		    GetActorPos(actor, axX, ayY, azZ);
			if(pokas == 1) Update3DTextLabelText(ActorInfo[actor][Text3D], SetActorColor(actor,0), inputtext);
			format(string, sizeof(string), "[{0000FF}OP_Actor{FFFFFF}] Вы сменили имя актёру. Новое имя: %s.", inputtext);
			SendClientMessage(playerid, COLOR_WHITE, string);
			format(ActorInfo[actor][aName], MAX_PLAYER_NAME, inputtext);
		    return 1;
		}
		case 5114:
		{
			if(!response) return 1;
			new actor = GetPVarInt(playerid, "actor"), string[100];
			switch(listitem)
			{
			    case 0: ActorInfo[actor][aColor] = 0, format(string, sizeof(string), "Вы выбрали белый цвет имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 1: ActorInfo[actor][aColor] = 1, format(string, sizeof(string), "Вы выбрали {0000FF}синий цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 2: ActorInfo[actor][aColor] = 2, format(string, sizeof(string), "Вы выбрали {000000}чёрный цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 3: ActorInfo[actor][aColor] = 3, format(string, sizeof(string), "Вы выбрали {FF0000}красный цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 4: ActorInfo[actor][aColor] = 4, format(string, sizeof(string), "Вы выбрали {FFFF00}жёлтый цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 5: ActorInfo[actor][aColor] = 5, format(string, sizeof(string), "Вы выбрали {00FF00}ярко-зелёный цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 6: ActorInfo[actor][aColor] = 6, format(string, sizeof(string), "Вы выбрали {000066}тёмно-синий цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 7: ActorInfo[actor][aColor] = 7, format(string, sizeof(string), "Вы выбрали {FF66FF}розовый цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 8: ActorInfo[actor][aColor] = 8, format(string, sizeof(string), "Вы выбрали {009900}зелёный цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			    case 9: ActorInfo[actor][aColor] = 9, format(string, sizeof(string), "Вы выбрали {00FFFF}голубой цвет{FFFFFF} имени для актёра {FF0000}%d", actor), SendClientMessage(playerid, COLOR_WHITE, string);
			}
			Update3DTextLabelText(ActorInfo[actor][Text3D],SetActorColor(actor,0), ActorInfo[actor][aName]);
		    return 1;
		}
		case 5115:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    switch(listitem)
		    {
		        case 0:
		        {
					new opf = ini_openFile("OP_Actors_Names_M.cfg");
					if(opf < 0)
					{
					    new opfc = ini_createFile("OP_Actors_Names_M.cfg");
					    ini_setInteger(opfc, "MAXMN", 10);
						for(new i; i<MAXMN; i++)
						{
						    new string[3];
						    format(string, sizeof(string), "%d", i);
						    ini_setString(opfc, string, "");
						}
						ini_closeFile(opfc);
						SetPVarInt(playerid, "polname", 0);
						ShowPlayerDialog(playerid, 5116, DIALOG_STYLE_LIST, "Список мужских имён | Нажмите для настроек","-\n-\n-\n-\n-\n-\n-\n-\n-\n-","Далее","Назад");
					}
					else
					{
						ini_getInteger(opf, "MAXMN", MAXMN);
						if(MAXMN < 10) MAXMN = 10, ini_setInteger(opf, "MAXMN", 10);
						new p[4], name[MAX_PLAYER_NAME], stringer[800];
						for(new i; i<MAXMN; i++)
						{
							new string[50];
						    format(p, sizeof(p), "%d", i);
						    ini_getString(opf, p, name);
					    	if(!strlen(name)) format(string, 4, "-\n");
					    	else format(string, sizeof(string), "%s\n", name);
					    	strcat(stringer, string);
						}
						SetPVarInt(playerid, "polname", 0);
						ShowPlayerDialog(playerid, 5118, DIALOG_STYLE_LIST, "Список мужских имён | Нажмите для настроек",stringer,"Далее","Назад");
					}
					ini_closeFile(opf);
		        }
		        default:
		        {
					new opf = ini_openFile("OP_Actors_Names_W.cfg");
					if(opf < 0)
					{
					    new opfc = ini_createFile("OP_Actors_Names_W.cfg");
					    ini_setInteger(opfc, "MAXWN", 10);
						for(new i; i<MAXWN; i++)
						{
						    new string[3];
						    format(string, sizeof(string), "%d", i);
						    ini_setString(opfc, string, "");
						}
						ini_closeFile(opfc);
						SetPVarInt(playerid, "polname", 1);
						ShowPlayerDialog(playerid, 5116, DIALOG_STYLE_LIST, "Список женских имён | Нажмите для настроек","-\n-\n-\n-\n-\n-\n-\n-\n-\n-", "Далее","Назад");
					}
					else
					{
						ini_getInteger(opf, "MAXWN", MAXWN);
						if(MAXWN < 10) MAXWN = 10, ini_setInteger(opf, "MAXWN", 10);
						new p[4], name[MAX_PLAYER_NAME], stringer[800];
						for(new i; i<MAXWN; i++)
						{
							new string[50];
						    format(p, sizeof(p), "%d", i);
						    ini_getString(opf, p, name);
					    	if(!strlen(name)) format(string, 4, "-\n");
					    	else format(string, sizeof(string), "%s\n", name);
					    	strcat(stringer, string);
						}
						SetPVarInt(playerid, "polname", 1);
						ShowPlayerDialog(playerid, 5118, DIALOG_STYLE_LIST, "Список женских имён | Нажмите для настроек",stringer,"Далее","Назад");
					}
					ini_closeFile(opf);
		        }
		    }
		    return 1;
		}
		case 5116:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    switch(GetPVarInt(playerid, "polname"))
		    {
		        case 0:
				{
					for(new i; i<MAXMN; i++)
					{
					    new zagol[50];
					    format(zagol, sizeof(zagol), "Номер: %d | Имя: -", i);
					    if(listitem == i) SetPVarInt(playerid, "NameStr",i), ShowPlayerDialog(playerid, 5117, DIALOG_STYLE_INPUT, zagol, "Введите новое мужское имя","Ввести","Назад");
					}
				}
				default:
				{
					for(new i; i<MAXWN; i++)
					{
					    new zagol[50];
					    format(zagol, sizeof(zagol), "Номер: %d | Имя: -", i);
					    if(listitem == i) SetPVarInt(playerid, "NameStr",i), ShowPlayerDialog(playerid, 5117, DIALOG_STYLE_INPUT, zagol, "Введите новое женское имя","Ввести","Назад");
					}
				}
		    }
		    return 1;
		}
		case 5117:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    if(!strlen(inputtext)) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы ничего не ввели!");
		    if(strlen(inputtext) < 2 || strlen(inputtext) > 24) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Длина имени не может быть меньше 2-х и больше 24-х символов.");
			switch(GetPVarInt(playerid, "polname"))
			{
				case 0:
				{
					new OPFile = ini_openFile("OP_Actors_Names_M.cfg");
					if(OPFile < 0)
					{
					    new OPFileM = ini_createFile("OP_Actors_Names_M.cfg");
						ini_setInteger(OPFileM, "MAXMN", 10);
						for(new i; i<MAXMN; i++)
						{
						    new string[4];
						    format(string, sizeof(string), "%d", i);
							if(i == GetPVarInt(playerid, "NameStr")) ini_setString(OPFileM, string, inputtext);
							else ini_setString(OPFileM, string, "");
							ini_closeFile(OPFileM);
						}
						ini_closeFile(OPFile);
						new string[100];
						format(string, sizeof(string), "[{0000FF}OP_Actor{FFFFFF}] Вы добавили мужское имя: %s | Строка: %d", inputtext, GetPVarInt(playerid, "NameStr"));
						SendClientMessage(playerid, COLOR_WHITE, string);
						return 1;
					}
					else
					{
					    new string[100];
						format(string, 5, "%d", GetPVarInt(playerid, "NameStr"));
						ini_setString(OPFile, string, inputtext);
						format(string, sizeof(string), "[{0000FF}OP_Actor{FFFFFF}] Вы добавили мужское имя: %s | Строка: %d", inputtext, GetPVarInt(playerid, "NameStr"));
						SendClientMessage(playerid, COLOR_WHITE, string);
						return 1;
					}
				}
				default:
				{
					new OPFile = ini_openFile("OP_Actors_Names_W.cfg");
					if(OPFile < 0)
					{
					    new OPFileM = ini_createFile("OP_Actors_Names_W.cfg");
						ini_setInteger(OPFileM, "MAXWN", 10);
						for(new i; i<MAXWN; i++)
						{
						    new string[4];
						    format(string, sizeof(string), "%d", i);
							if(i == GetPVarInt(playerid, "NameStr")) ini_setString(OPFileM, string, inputtext);
							else ini_setString(OPFileM, string, "");
							ini_closeFile(OPFileM);
						}
						ini_closeFile(OPFile);
						new string[100];
						format(string, sizeof(string), "[{0000FF}OP_Actor{FFFFFF}] Вы добавили женское имя: %s | Строка: %d", inputtext, GetPVarInt(playerid, "NameStr"));
						SendClientMessage(playerid, COLOR_WHITE, string);
						return 1;
					}
					else
					{
					    new string[100];
						format(string, 5, "%d", GetPVarInt(playerid, "NameStr"));
						ini_setString(OPFile, string, inputtext);
						format(string, sizeof(string), "[{0000FF}OP_Actor{FFFFFF}] Вы добавили женское имя: %s | Строка: %d", inputtext, GetPVarInt(playerid, "NameStr"));
						SendClientMessage(playerid, COLOR_WHITE, string);
						return 1;
					}
				}
			}
		    return 1;
		}
		case 5118:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			switch(GetPVarInt(playerid, "polname"))
			{
			    case 0:
			    {
			        for(new i; i<MAXMN; i++) if(listitem == i) SetPVarInt(playerid, "NameStr", i);
			    }
			    default:
			    {
			        for(new i; i<MAXMN; i++) if(listitem == i) SetPVarInt(playerid, "NameStr", i);
			    }
			}
			ShowPlayerDialog(playerid, 5119, DIALOG_STYLE_LIST, "Выберите действие","Изменить имя\nУдалить имя","Далее","Назад");
		    return 1;
		}
		case 5119:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    switch(listitem)
		    {
				case 0: ShowPlayerDialog(playerid, 5120, DIALOG_STYLE_INPUT, "Изменить имя","Введите новое имя","Далее","Назад");
				case 1:
				{
					switch(GetPVarInt(playerid, "polname"))
					{
					    case 0:
				    	{
							new OPFile = ini_openFile("OP_Actors_Names_M.cfg");
							if(OPFile < 0)
							{
								new OPFileM = ini_createFile("OP_Actors_Names_M.cfg");
								ini_setInteger(OPFileM, "MAXMN", 10); MAXMN = 10;
								for(new i; i<MAXMN;i++)
								{
								    new str[4];
								    format(str, sizeof(str), "%d", i);
								    ini_setString(OPFileM, str, "");
								}
								ini_closeFile(OPFileM);
							}
							else
							{
								new str[4];
								format(str, sizeof(str), "%d", GetPVarInt(playerid, "NameStr"));
								SendClientMessage(playerid, -1, str);
								ini_setString(OPFile, str, "");
							}
							ini_closeFile(OPFile);
					    }
						default:
						{
							new OPFile = ini_openFile("OP_Actors_Names_W.cfg");
							if(OPFile < 0)
							{
								new OPFileW = ini_createFile("OP_Actors_Names_W.cfg");
								ini_setInteger(OPFileW, "MAXWN", 10); MAXWN = 10;
								for(new i; i<MAXWN;i++)
								{
								    new str[4];
								    format(str, sizeof(str), "%d", i);
								    ini_setString(OPFileW, str, "");
								}
								ini_closeFile(OPFileW);
							}
							else
							{
								new str[4];
								format(str, sizeof(str), "%d", GetPVarInt(playerid, "NameStr"));
								SendClientMessage(playerid, -1, str);
								ini_setString(OPFile, str, "");
							}
							ini_closeFile(OPFile);
						}
					}
				}
			}
		    return 1;
		}
		case 5120:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    if(!strlen(inputtext)) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы ничего не ввели!");
		    if(strlen(inputtext) < 2 || strlen(inputtext) > 24) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Имя не может быть меньше 2-х и больше 24-х символов!");
			switch(GetPVarInt(playerid, "polname"))
			{
			    case 0:
			    {
					new OPFile = ini_openFile("OP_Actors_Names_M.cfg");
					if(OPFile < 0)
					{
						new OPFileM = ini_createFile("OP_Actors_Names_M.cfg");
						ini_setInteger(OPFileM, "MAXMN", 10); MAXMN = 10;
						for(new i; i<MAXMN;i++)
						{
						    new str[4];
						    format(str, sizeof(str), "%d", i);
						    if(GetPVarInt(playerid, "NameStr") == i) ini_setString(OPFileM, str, inputtext);
						    else ini_setString(OPFileM, str, "");
						}
						ini_closeFile(OPFileM);
					}
					else
					{
						new str[4];
						format(str, sizeof(str), "%d", GetPVarInt(playerid, "NameStr"));
						ini_setString(OPFile, str, inputtext);
					}
					ini_closeFile(OPFile);
					new stringer[150];
					format(stringer, sizeof(stringer), "[{0000FF}OP_Actor{FFFFFF}] Вы успешно изменили мужское имя номер %d. Новое имя: %s", GetPVarInt(playerid, "NameStr"), inputtext);
					SendClientMessage(playerid, COLOR_WHITE, stringer);
					return 1;
			    }
			    default:
			    {
					new OPFile = ini_openFile("OP_Actors_Names_W.cfg");
					if(OPFile < 0)
					{
						new OPFileW = ini_createFile("OP_Actors_Names_W.cfg");
						ini_setInteger(OPFileW, "MAXWN", 10); MAXWN = 10;
						for(new i; i<MAXWN;i++)
						{
						    new str[4];
						    format(str, sizeof(str), "%d", i);
						    if(GetPVarInt(playerid, "NameStr") == i) ini_setString(OPFileW, str, inputtext);
						    else ini_setString(OPFileW, str, "");
						}
						ini_closeFile(OPFileW);
					}
					else
					{
						new str[4];
						format(str, sizeof(str), "%d", GetPVarInt(playerid, "NameStr"));
						ini_setString(OPFile, str, inputtext);
					}
					ini_closeFile(OPFile);
					new stringer[150];
					format(stringer, sizeof(stringer), "[{0000FF}OP_Actor{FFFFFF}] Вы успешно изменили женское имя номер %d. Новое имя: %s", GetPVarInt(playerid, "NameStr"), inputtext);
					SendClientMessage(playerid, COLOR_WHITE, stringer);
					return 1;
			    }
			}
			return 1;
		}
		case 5121:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			if(!strlen(inputtext)) return ShowPlayerDialog(playerid, 5121, DIALOG_STYLE_INPUT, "Изменение количества имён","Вы хотите изменить количество имён.\nКоличество может быть ТОЛЬКО больше 10.\n\nВведите максимальное количество имён!", "Далее","Назад");
			if(strval(inputtext) < 10) return ShowPlayerDialog(playerid, 5121, DIALOG_STYLE_INPUT, "Изменение количества имён","Вы хотите изменить количество имён.\n{FF0000}Количество может быть ТОЛЬКО больше 10.\n\nВведите максимальное количество имён!", "Далее","Назад");
			MAXMN = strval(inputtext);
			MAXWN = strval(inputtext);
			new OPFile = ini_openFile("OP_Actors_Names_M.cfg");
			if(OPFile < 0)
			{
				new OPFileW = ini_createFile("OP_Actors_Names_M.cfg");
				ini_setInteger(OPFileW, "MAXMN", strval(inputtext));
				for(new i; i<MAXMN;i++)
				{
				    new str[4];
				    format(str, sizeof(str), "%d", i);
				    if(GetPVarInt(playerid, "NameStr") == i) ini_setString(OPFileW, str, inputtext);
				    else ini_setString(OPFileW, str, "");
				}
				ini_closeFile(OPFileW);
			}
			else ini_setInteger(OPFile, "MAXMN", strval(inputtext));
			OPFile = ini_openFile("OP_Actors_Names_W.cfg");
			if(OPFile < 0)
			{
				new OPFileW = ini_createFile("OP_Actors_Names_W.cfg");
				ini_setInteger(OPFileW, "MAXWN", strval(inputtext));
				for(new i; i<MAXWN;i++)
				{
				    new str[4];
				    format(str, sizeof(str), "%d", i);
				    if(GetPVarInt(playerid, "NameStr") == i) ini_setString(OPFileW, str, inputtext);
				    else ini_setString(OPFileW, str, "");
				}
				ini_closeFile(OPFileW);
			}
			else ini_setInteger(OPFile, "MAXWN", strval(inputtext));
			return 1;
		}
		case 5122:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
			switch(listitem)
			{
				case 0: ShowPlayerDialog(playerid, 5115, DIALOG_STYLE_LIST, "Список рандомных имён","Мужские имена\nЖенские имена","Далее","Назад");
				case 1: ShowPlayerDialog(playerid, 5121, DIALOG_STYLE_INPUT, "Изменение количества имён","Вы хотите изменить количество имён.\nКоличество может быть ТОЛЬКО больше 10.\n\nВведите максимальное количество имён!", "Далее","Назад");
				case 2:
				{
					if(pokas == 1) ShowPlayerDialog(playerid, 5123, DIALOG_STYLE_MSGBOX, "Показ имён", "Вы хотите отключить показ имён актёров?","Отключить","Отмена");
					else ShowPlayerDialog(playerid, 5123, DIALOG_STYLE_MSGBOX, "Показ имён", "Вы хотите включить показ имён актёров?","Включить","Отмена");
				}
				case 3:
				{
				    if(pokasid == 1) ShowPlayerDialog(playerid, 5124, DIALOG_STYLE_MSGBOX, "Показ номера актёра", "Вы хотите отключить показ номера актёров?","Отключить","Отмена");
				    else ShowPlayerDialog(playerid, 5124, DIALOG_STYLE_MSGBOX, "Показ номера актёра", "Вы хотите включить показ номера актёров?","Включить","Отмена");
				}
			}
			return 1;
		}
		case 5123:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    switch(pokas)
		    {
		        case 0:
		        {
				    for(new i; i<=MAXACT; i++)
				    {
				        if(!strlen(ActorInfo[i][aName]))
						{
							if(ActorInfo[i][aPol] == false) format(ActorInfo[i][aName], MAX_PLAYER_NAME, "Олежка");
							else format(ActorInfo[i][aName], MAX_PLAYER_NAME, "Викуля");
						}
						ActorInfo[i][Text3D] = Create3DTextLabel(ActorInfo[i][aName], SetActorColor(i,0), ActorInfo[i][aPosX], ActorInfo[i][aPosY], ActorInfo[i][aPosZ]+1.1, 15.0, ActorInfo[i][aVirt], 1);
				    }
				    SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы включили показ имён!");
		            pokas = 1;
		        }
				default:
				{
					for(new i; i<=MAXACT; i++) Delete3DTextLabel(ActorInfo[i][Text3D]);
				    SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы отключили показ имён!");
		            pokas = 0;
				}
		    }
		    return 1;
		}
		case 5124:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    switch(pokasid)
		    {
		        case 0:
		        {
		            pokasid = 1;
		            if(pokas == 0) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы включили показ номеров актёров, но у Вас выключена функция показа имён!");
                    SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы включили показ номеров актёров!");
					for(new i; i<=MAXACT; i++)
					{
					    new str[MAX_PLAYER_NAME+8];
					    format(str, sizeof(str), "%s [%d]", ActorInfo[i][aName], i);
						Update3DTextLabelText(ActorInfo[i][Text3D], SetActorColor(i, 0), str);
					}
		        }
		        default:
		        {
					pokasid = 0;
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы выключили показ номеров актёров!");
					if(pokas == 0) return 1;
					for(new i; i<=MAXACT; i++) Update3DTextLabelText(ActorInfo[i][Text3D], SetActorColor(i, 0), ActorInfo[i][aName]);
		        }
		    }
		    return 1;
		}
		case 5125:
		{
		    if(!response) return OnPlayerCommandText(playerid, "/actor");
		    if(IsPlayerInAnyVehicle(playerid)) return SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Нельзя использовать в машине!");
		    switch(listitem)
		    {
		    	case 0:
				{
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Встаньте с таким углом поворота, с каким вы хотите видеть актёра!");
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] После того как Вы встали под таким углом - нажмите 'c' (по умолчанию - присесть)!");
				}
				case 1:
				{
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Встаньте на то место, куда нужно переместить актёра!");
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] После того как Вы встали на то место - нажмите 'c' (по умолчанию - присесть)!");
				}
				case 2:
				{
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Встаньте на то место, куда нужно переместить актёра!");
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Выберите новый угол поворота актёра!");
					SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Для сохранения положения актёра - нажмите 'c' (по умолчанию - присесть)!");
				}
			}
			SetPVarInt(playerid, "vbor", listitem+1);
			return 1;
		}
	}
	return 1;
}
forward LoadActorAnim(actor);
public LoadActorAnim(actor)
{
	ApplyActorAnimation(actor, "DANCING", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "BAR", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "BEACH", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "CAMERA", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "DANCING", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "CAMERA", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "ped", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "BOMBER", "null", 0.0, 0, 0, 0, 0, 0);
	ApplyActorAnimation(actor, "BUDDY", "null", 0.0, 0, 0, 0, 0, 0);
	return 1;
}
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys == KEY_CROUCH && GetPVarInt(playerid, "vbor") > 0)
    {
        if(IsPlayerInAnyVehicle(playerid)) return DeletePVar(playerid, "vbor") && DeletePVar(playerid, "actor") && SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Нельзя использовать в машине!");
        new actor = GetPVarInt(playerid, "actor");
        new Float:fx, Float:fy, Float:fz, Float:fa;
		GetPlayerPos(playerid, fx, fy, fz);
		GetPlayerFacingAngle(playerid, fa);
		DestroyActor(actor);
		switch(GetPVarInt(playerid, "vbor"))
		{
			case 1:
			{
				CreateActor(ActorInfo[actor][aSkin], ActorInfo[actor][aPosX], ActorInfo[actor][aPosY], ActorInfo[actor][aPosZ], fa);
				ActorInfo[actor][aPosA] = fa;
		        SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы успешно повернули актёра!");
			}
			case 2:
			{
				SetPlayerPos(playerid, fx, fy+1, fz);
				CreateActor(ActorInfo[actor][aSkin], fx, fy, fz, ActorInfo[actor][aPosA]);
				ActorInfo[actor][aPosX] = fx;
				ActorInfo[actor][aPosY] = fy;
				ActorInfo[actor][aPosZ] = fz;
				Delete3DTextLabel(ActorInfo[actor][Text3D]);
				if(pokas == 1)
				{
					if(pokasid == 0) ActorInfo[actor][Text3D] = Create3DTextLabel(ActorInfo[actor][aName], SetActorColor(actor,0), ActorInfo[actor][aPosX], ActorInfo[actor][aPosY], ActorInfo[actor][aPosZ]+1.1, 15.0, ActorInfo[actor][aVirt], 1);
					else
					{
						new str[MAX_PLAYER_NAME+8];
						format(str, sizeof(str), "%s [%d]", ActorInfo[actor][aName], actor);
						ActorInfo[actor][Text3D] = Create3DTextLabel(str, SetActorColor(actor,0), ActorInfo[actor][aPosX], ActorInfo[actor][aPosY], ActorInfo[actor][aPosZ]+1.1, 15.0, ActorInfo[actor][aVirt], 1);
					}
				}
		        SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы успешно переместили актёра!");
			}
			case 3:
			{
				SetPlayerPos(playerid, fx, fy+1, fz);
				CreateActor(ActorInfo[actor][aSkin], fx, fy, fz, fa);
				ActorInfo[actor][aPosX] = fx;
				ActorInfo[actor][aPosY] = fy;
				ActorInfo[actor][aPosZ] = fz;
				ActorInfo[actor][aPosA] = fa;
				Delete3DTextLabel(ActorInfo[actor][Text3D]);
				if(pokas == 1)
				{
					if(pokasid == 0) ActorInfo[actor][Text3D] = Create3DTextLabel(ActorInfo[actor][aName], SetActorColor(actor,0), ActorInfo[actor][aPosX], ActorInfo[actor][aPosY], ActorInfo[actor][aPosZ]+1.1, 15.0, ActorInfo[actor][aVirt], 1);
					else
					{
						new str[MAX_PLAYER_NAME+8];
						format(str, sizeof(str), "%s [%d]", ActorInfo[actor][aName], actor);
						ActorInfo[actor][Text3D] = Create3DTextLabel(str, SetActorColor(actor,0), ActorInfo[actor][aPosX], ActorInfo[actor][aPosY], ActorInfo[actor][aPosZ]+1.1, 15.0, ActorInfo[actor][aVirt], 1);
					}
				}
		        SendClientMessage(playerid, COLOR_WHITE, "[{0000FF}OP_Actor{FFFFFF}] Вы успешно переместили и повернули актёра!");
			}
		}
		LoadActorAnim(actor);
		SetActorVirtualWorld(actor, ActorInfo[actor][aVirt]);
		DeletePVar(playerid, "actor");
		DeletePVar(playerid, "vbor");
	}
	return 1;
}
public OnRconLoginAttempt(ip[], password[], success)
{
    if(success)
    {
		for(new i; i<MAX_PLAYERS; i++)
		{
			new gip[16];
			GetPlayerIp(i, gip, 16);
			if(!strcmp(ip, gip, true))
			{
				SendClientMessage(i, COLOR_WHITE, "Система актёров v9.0 успешно загружена и работает. Для вызова меню введите {FF0000}/actor");
				if(MAXACT >= 0)
				{
					new string[30];
					format(string, sizeof(string), "Загружено актёров: {0000FF}%d", MAXACT+1);
					SendClientMessage(i, COLOR_WHITE, string);
				}
			}
		}
    }
	return 0;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
	if(!strcmp(cmdtext, "/actor", true))
	{
		if(!IsPlayerAdmin(playerid)) return 1;
		ShowPlayerDialog(playerid, 5100, DIALOG_STYLE_LIST, "Актёры от Oleg_Petrow","Создать нового актёра\nПросмотр списка актёров\nУдалить всех актёров\nСохранить всех актёров\nНастройки","Далее","Выход");
		return 1;
	}
	return 0;
}
