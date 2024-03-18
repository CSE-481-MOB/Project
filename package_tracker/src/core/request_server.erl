-module(request_server).
-behaviour(gen_server).

%% API
-export([start_link/0, get_loc/1]).

%% GenServer callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

%% API functions
start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

get_loc(Pack_ID) ->
    gen_server:call(?MODULE, {get_loc, Pack_ID}).

%% GenServer functions
init([]) ->
    {ok, #{}}.

handle_call({get_loc, Pack_ID}, _From, State) ->
    {reply, db_api:pkg_request(Pack_ID), State};
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
