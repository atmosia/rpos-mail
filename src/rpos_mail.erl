%%%-------------------------------------------------------------------
%% @doc rpos_mail public API
%% @end
%%%-------------------------------------------------------------------

-module(rpos_mail).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    rpos_mail_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
