-module(deliver_h).
-export([deliver/1]).

deliver(Pack_ID) ->
    erpc:cast(bus_log, deliver_server, pack_deliver, [Pack_ID]).