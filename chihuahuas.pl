:- module(chihuahuas, [
              bark/0,
              growl/0,
          evil/0,
          not_evil/0]).

:- use_module(library(pengines)).
:- use_module(library(sandbox)).


bark :- writeln('arrf aarf').

growl :- writeln('grrrrr').

evil :-
    shell(cheese).

not_evil :-
    shell(cheese).

:- multifile sandbox:safe_primitive/1.

sandbox:safe_primitive(chihuahuas:not_evil).

/*
:- multifile prolog:sandbox_allowed_goal/1.

prolog:sandbox_allowed_goal(chihuahuas:not_evil(_)).
*/



