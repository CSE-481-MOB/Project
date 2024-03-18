module(unit_tests)


-ifdef(EUNIT).
%%
%% Unit tests go here. 
%%
-include_lib("eunit/include/eunit.hrl").

request_test() ->
  {
    ?_assertEqual()
  }
deliver_test() ->
  {
    ?_assertEqual()
  }
update_test() ->
  {
    ?_assertEqual()
  }
transfer_test() ->
  {
    Expected = transfer,
  Actual = main:transfer(),
  ?assertEqual(Expected, Actual).  
  }