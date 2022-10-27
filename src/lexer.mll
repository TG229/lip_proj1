{
open Parser
}

let white = [' ' '\t']+

rule read =
    parse
    | white { read lexbuf }
    | "true" {TRUE}
    | "false" {FALSE}
    | "(" {LPAREN}
    | ")" {RPAREN}
    | "if" {IF}
    | "not" {NOT}
    | "and" {AND}
    | "or" {OR}
    | "then" {THEN}
    | "else" {ELSE}
    | eof {EOF}