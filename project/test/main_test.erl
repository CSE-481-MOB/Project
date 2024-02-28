-module(main_test).
-include_lib("eunit/include/eunit.hrl").


request_test() ->
  Expected = request,
  Actual = main:request(),
  ?assertEqual(Expected, Actual).

deliver_test() ->
  Expected = deliver,
  Actual = main:deliver(),
  ?assertEqual(Expected, Actual).

update_test() ->
  Expected = update,
  Actual = main:update(),
  ?assertEqual(Expected, Actual).

transfer_test() ->
  Expected = transfer,
  Actual = main:transfer(),
  ?assertEqual(Expected, Actual).  