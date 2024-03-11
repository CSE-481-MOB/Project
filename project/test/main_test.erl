-module(main_test).
-include_lib("eunit/include/eunit.hrl").


request_test() ->
  Expected = {011, "43°49'34″N", "111°47'02″W"},
  Actual = main:request(011),
  ?assertEqual(Expected, Actual).

deliver_test() ->
  Expected = 011,
  Actual = main:deliver(),
  ?assertEqual(Expected, Actual).

update_test() ->
  Expected = {011, "Basic Package", "Singapore", "Rexburg", "10:05:56"},
  Actual = main:update(),
  ?assertEqual(Expected, Actual).

transfer_test() ->
  Expected = {011, "Updated Package", "Singapore", "Boise", "10:10:34"},
  Actual = main:transfer({011, "Old Package", "Singapore", "Rexburg", "10:05:56"}),
  ?assertEqual(Expected, Actual).  