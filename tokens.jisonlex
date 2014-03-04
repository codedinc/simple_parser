%%

\s+                   // ignore whitespaces

[0-9]+                return 'NUMBER' // An integer number

'true'                return 'TRUE'   // A special keyword

.                     return yytext   // takes care of `;`, `,`... any one char

<<EOF>>               return 'EOF'