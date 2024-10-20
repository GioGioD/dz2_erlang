-module(4countlist).
-export([count_elements/1]).

count_elements([]) -> 0;
count_elements([_|T]) -> 1 + count_elements(T).