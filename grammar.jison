%%

// Parsing starts in this rule.
// A program is a list of expressions.
program:
  expressions EOF                   { return $1 }
;

// A list of expressions, delimited by `;`.
expressions:
  expression                        { $$ = [ $1 ] }
| expressions ';' expression        { $$ = $1.concat($3) }
;

// An expression can be a number or the `true` keyword.
expression:
  NUMBER
| TRUE
;