-module(transfer_h).
-export([transfer/2]).

transfer(Location_ID, Package_ID) ->
    erpc:cast(bus_log, transfer_server, transfer_pkg, [Location_ID, Package_ID]).