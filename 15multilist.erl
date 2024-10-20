-module(15multilist).
-export([replicate/2]).

replicate([], _) -> [];
replicate([H | T], N) -> lists:duplicate(N, H) ++ replicate(T, N).