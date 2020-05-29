:- module(penginsserve, [go/0]).

:- use_module(library(http/http_server)).
:- use_module(library(pengines)).

:- pengine_application(dogs).

% :- use_module(chihuahuas).
:- use_module(dogs:chihuahuas).

go :-
    http_server(http_dispatch, [port(8888)]).


