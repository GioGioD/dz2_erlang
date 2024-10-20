-module(10RLE).
-export([encode/1]).

encode(L) -> encode(L, []).

encode([], Acc) -> lists:reverse(Acc);
encode([H | T], Acc) -> encode(T, add_to_acc(H, Acc)).

add_to_acc(H, [{N, H} | T]) -> [{N + 1, H} | T];
add_to_acc(H, Acc) -> [{1, H} | Acc].