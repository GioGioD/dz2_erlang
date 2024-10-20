-module(12moddecoder).
-export([decode_modified/1]).

decode_modified([]) -> [];
decode_modified([{Count, X} | Tail]) -> lists:duplicate(Count, X) ++ decode_modified(Tail);
decode_modified([X | Tail]) -> [X | decode_modified(Tail)].