-module(6palilist).
-export([is_palindrome/1]).

is_palindrome(L) -> L == lists:reverse(L).