-module(5reverselist).
-export([reverse_list/1]).

reverse_list(L) -> reverse_list(L, []).
reverse_list([], Acc) -> Acc;
reverse_list([H|T], Acc) -> reverse_list(T, [H|Acc]).