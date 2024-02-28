-module(main_test).
-include_lib("eunit/include/eunit.hrl").


request_test() ->
  Expected = 1,
  Actual = main:request(),
  io:format("Expected: ~p, Actual: ~p~n", [Expected, Actual]),
  ?assertEqual(Expected, Actual).

deliver_test() ->
  Expected = 2,
  Actual = main:deliver(),
  io:format("Expected: ~p, Actual: ~p~n", [Expected, Actual]),
  ?assertEqual(Expected, Actual).

update_test() ->
  Expected = 3,
  Actual = main:update(),
  io:format("Expected: ~p, Actual: ~p~n", [Expected, Actual]),
  ?assertEqual(Expected, Actual).

transfer_test() ->
  Expected = 4,
  Actual = main:transfer(),
  io:format("Expected: ~p, Actual: ~p~n", [Expected, Actual]),
  ?assertEqual(Expected, Actual).  