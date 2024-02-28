-module(unit_tests).


-ifdef(EUNIT).
%%
%% Unit tests go here. 
%%
-include_lib("eunit/include/eunit.hrl").

request() -> 
  true.

deliver() ->
  true.

update() ->
  true.

transfer() ->
  true.

request_test() ->
  ExpectedRequestResult = true,
  ActualRequestResult = true,
  ?_assertEqual(ExpectedRequestResult, ActualRequestResult).

deliver_test() ->
  ExpectedDeliverResult = true,
  ActualDeliverResult = true,
  ?_assertEqual(ExpectedDeliverResult, ActualDeliverResult).

update_test() ->
  ExpectedUpdateResult = true,
  ActualUpdateResult = true,
  ?_assertEqual(ExpectedUpdateResult, ActualUpdateResult).

transfer_test() ->
  ExpectedTransferResult = true,
  ActualTransferResult = true,
  ?_assertEqual(ExpectedTransferResult, ActualTransferResult).

-endif