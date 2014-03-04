%%

// Parsing starts in the first rule at the top.

// A program is a list of expressions.
program:
  expressions EOF                   { return $1 }
;

// A list of expressions can be one simple expression, or several ones seperated by `;`.
expressions:
  expression                        { $$ = [ $1 ] }
  // A sequence of expressions is defined using recursion.
  // Any number of expressions, followed by a `;`, and a new expression.
| expressions ';' expression        { $$ = $1.concat($3) }
;

// An expression can be a number or (`|` means or) the `true` keyword.
expression:
  NUMBER
| TRUE
;
