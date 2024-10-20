-module(14dupelist).
-export([duplicate/1]).

duplicate([]) -> [];
duplicate([H | T]) -> [H, H | duplicate(T)].