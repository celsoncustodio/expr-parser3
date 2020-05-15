grammar Expressoes;

programa:
    exp
;

exp:
    termo1=termo ('+' outrosTermos+=termo)*
;

termo:
    '(' expParentesis=exp ')' |
    variavel=ID |
    constante=INT | 
    'let' listaDecl 'in' subexp=exp
;

listaDecl:
    decl (',' decl)*
;

decl:
    nome=ID '=' exp 
;

ID  :	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
INT :	'0'..'9'+;
WS  :   ( ' '
        | '\t'
        | '\r'
        | '\n'
        ) -> skip
;