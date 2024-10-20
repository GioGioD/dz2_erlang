-module(9dupsublist).
-export([pack/1]).

pack([]) -> [];
pack([H | T]) -> pack(T, [[H]]).

pack([], Acc) -> lists:reverse(Acc);
pack([H | T], [[H | Sublist] | Rest]) -> pack(T, [[H, H | Sublist] | Rest]);
pack([H | T], Acc) -> pack(T, [[H] | Acc]).