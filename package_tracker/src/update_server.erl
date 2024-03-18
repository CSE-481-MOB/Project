-module(update_server).
-behaviour(gen_server).

%% API
-export([start_link/0, update_loc/3]).

%% GenServer callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

update_loc(Location_ID, Latitude, Longitude) ->
    gen_server:call(?MODULE, {update_loc, Location_ID, Latitude, Longitude}).

init([]) ->
    {ok, #{}}.

handle_call({update_loc, Location_ID, Latitude, Longitude}, _From, State) ->
    Response = db_api:pkg_update(Location_ID, Latitude, Longitude),
    {reply, Response, State};

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.