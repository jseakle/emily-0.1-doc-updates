type codePosition = {
	fileName : string option;
	lineNumber : int;
}

type tokenGroupKind = 
	Plain | Scoped | Box

type tokenGroup = {
	suspend : bool;    (* Is this a closure? Potentially cannot be true except by macros *)
	kind : tokenGroupKind;
	items : tokenContents list;
	(* Array? *)
}
and tokenContents = 
	| Word of string   (* Alphanum *)
	| Symbol of string (* Punctuation *)
	| String of string (* "Quoted" *)
	| Atom   of string (* Potentially cannot be created except by macros *)
	| Number of float
	| Group of tokenGroup


type token = {
	at : codePosition;
	contents : tokenContents
}