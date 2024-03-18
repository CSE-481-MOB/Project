-module(pack_req_h).
-export([request/1]).

request(Pack_ID) ->
    erpc:call(bus_log, request_server, pack_req, [Pack_ID]).