-module(2lasttwolist).
-export([last_two/1]).

last_two([X, Y]) -> [X, Y];
last_two([_|T]) -> last_two(T).