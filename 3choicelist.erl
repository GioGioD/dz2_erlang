-module(3choicelist).
-export([element_at/2]).

element_at(1, [H|_]) -> H;
element_at(N, [_|T]) when N > 1 -> element_at(N - 1, T).