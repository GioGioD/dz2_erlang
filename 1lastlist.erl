-module(1lastlist).
-export([last/1]).

last([X]) -> X;
last([_|T]) -> last(T).