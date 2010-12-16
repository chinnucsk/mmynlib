-module(spq).
-behaviour(gen_server).

-export([init/1,handle_call/3,handle_cast/2,handle_info/2,
         terminate/2,code_change/3]).

-record(st_spq, {dets, ptime, pstruct}).
-record(pstruct, {len, list}).


init([]) ->
    {ok, nil}.

handle_call(R, _F, St) ->
    {reply, {error, R}, St}.

handle_cast(_R, St) ->
    {noreply, St}.

handle_info(_R, St) ->
    {noreply, St}.

terminate(_,_) ->
    ok.

code_change(_OldVsn, St, _Extra) ->
    {ok, St}.


