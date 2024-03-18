-module(update_h).
-export([update/3]).

update(Location_ID, Latitude, Longitude) ->
    erpc:call(bus_log, update_server, loc_update, [Location_ID, Latitude, Longitude]).