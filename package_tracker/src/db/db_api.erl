-module(db_api).
-export([pkg_request/1, pkg_deliver/1, pkg_update/3 ,pkg_transfer/2]).

pkg_request(Package_ID) ->
    %% Logic to mark the package as retrieved in Riak
    put_request(Package_ID),
    ok.

put_request(_Package_ID) ->
    %% Interaction with Riak for getting package info using Package_ID
    StatusCode = 200,
    Latitude = 1,
    Longitude = 2,
    {ok, Latitude, Longitude, StatusCode}.

pkg_deliver(Package_ID) ->
    %% Logic to mark the package as delivered in Riak
    put_deliver(Package_ID),
    ok.

put_deliver(_Package_ID) ->
    %% Actual interaction with Riak to update package status using Package_ID
    ResponseCode = 200, % 200 for success or 500 for error, URL extension
    {ok, ResponseCode, "http://www.erlganutan.org/delivered"}.

pkg_update(Location_ID, Latitude, Longitude) ->
    %% Logic to mark the package as updated in Riak
    put_location_update(Location_ID, Latitude, Longitude),
    ok.

put_location_update(_Location_ID, _Latitude, _Longitude) ->
    %% Actual interaction with the database to update the location
    ResponseCode = 200,
    {ok, ResponseCode, "http://www.erlganutan.org/location_update"}.

pkg_transfer(Location_ID, Package_ID) ->
    %% Logic to mark the package as transferred in Riak
    put_pkg_transfer(Location_ID, Package_ID),
    ok.

put_pkg_transfer(_Location_ID, _Package_ID) ->
    %% Actual database logic to transfer package
    ResponseCode = 200,
    {ok, ResponseCode, "http://www.erlganutan.org/package_transferred"}.