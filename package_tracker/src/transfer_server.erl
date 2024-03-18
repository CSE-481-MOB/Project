-module(transfer_server).
-behaviour(gen_server).

%% API
-export([start_link/0, transfer_pkg/2]).

%% GenServer callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

transfer_pkg(Location_ID, Package_ID) ->
    gen_server:cast(?MODULE, {transfer_pkg, Location_ID, Package_ID}).

init([]) ->
    {ok, #{}}.

handle_cast({transfer_pkg, Location_ID, Package_ID}, State) ->
    _Response = db_api:pkg_transfer(Location_ID, Package_ID),
    {noreply, State};

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.