#!/bin/bash
##########################################
# Количество FPS на сервере, Доброград работает на 16
tickrate="16"
# Порт, на котором будет запущен сервер, 27018 для сервера разработки
port="27015"
# Steam API-ключ, можно получить тут: https://steamcommunity.com/dev/apikey
apikey="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
# ID Workshop-коллекции, которая будет скачана на сервер (но не на клиенты)
workshop="570795184"
# Максимальное количество игроков
players="16"
# Гейммод, указать название папки в gamemodes
gamemode="darkrp"
# Карта, без добавления .bsp
map="rp_eastcoast_v4c"
# Адрес страницы для загрузочного экрана
loadingurl="http://www.octothorp.team/static/rp/dobrograd/loading/"
##########################################

# Запуск сервера, тут ничего не трогаем
./srcds_run -tickrate "$tickrate" -port "$port" -console -game "garrysmod" +gmod_language "ru" -authkey "$apikey" +host_workshop_collection "$workshop" +gamemode "$gamemode" +map "$map" +maxplayers "$players" +sv_loadingurl "$loadingurl"
