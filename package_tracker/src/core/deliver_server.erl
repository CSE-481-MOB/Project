-module(deliver_server).
-behaviour(gen_server).

%% API
-export([start_link/0, deliver/1]).

%% GenServer callbacks
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

%% API functions
start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

deliver(Pack_ID) ->
    gen_server:cast(?MODULE, {deliver, Pack_ID}).

%% GenServer functions
init([]) ->
    {ok, #{}}.

handle_cast({deliver, Pack_ID}, State) ->
    case db_api:pkg_deliver(Pack_ID) of
        ok -> {noreply, State};
        {error, Reason} -> {stop, Reason, State}
    end;
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