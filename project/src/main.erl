-module(main).
-export([request/0, deliver/0, update/0, transfer/1]).


request() -> 
  Package1 = {"43°49'34″N", "111°47'02″W"},
  Package1.

deliver() ->
  ResponseCode = 0111010110,
  ResponseCode.

update() ->
  NewPackageInfo = {package_id, "Basic Package", "Singapore", "Rexburg", "10:05:56"},
  NewPackageInfo.

transfer({Id, _Name, To, _From, _Timestamp}) ->
  NewPackage = {Id, "Updated Package", To, "Boise", "10:10:34"},
  NewPackage.