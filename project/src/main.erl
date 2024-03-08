-module(main).
-export([request/1, deliver/0, update/0, transfer/1]).


request(Id) -> 
  Package1 = {011, "43°49'34″N", "111°47'02″W"},
  Package_Id = get_id(Package1),
  if 
    Id == Package_Id ->
      Package1;
    true ->
      {error, "ID not found"}
  end.

deliver() ->
  ResponseCode = 0111010110,
  ResponseCode.

update() ->
  NewPackageInfo = {package_id, "Basic Package", "Singapore", "Rexburg", "10:05:56"},
  NewPackageInfo.

transfer({Id, _Name, To, _From, _Timestamp}) ->
  NewPackage = {Id, "Updated Package", To, "Boise", "10:10:34"},
  NewPackage.

get_id(Package) ->
  {Package_Id, _, _} = Package,
  Package_Id.
