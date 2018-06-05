letter      = "A" | "B" | "C" | "D" | "E" | "F" | "G"
            | "H" | "I" | "J" | "K" | "L" | "M" | "N"
            | "O" | "P" | "Q" | "R" | "S" | "T" | "U"
            | "V" | "W" | "X" | "Y" | "Z" | "a" | "b"
            | "c" | "d" | "e" | "f" | "g" | "h" | "i"
            | "j" | "k" | "l" | "m" | "n" | "o" | "p"
            | "q" | "r" | "s" | "t" | "u" | "v" | "w"
            | "x" | "y" | "z" ;
digit       = "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;
whitespace  = ? ASCII 0x20 (Space) ? | ? ASCII 0x09 (Tab) ? ;
line ending = ? ASCII 0x0a (Line Feed) ? , [ ? ASCII 0x0d (Carriage Return) ? ] ;

inline comment = "#" , { ? All Characters ? - line ending } , line ending ;
block comment  = "(*" , { ? All Characters ? - "*)" } , "*)" ;

space      = { whitespace | block comment } ;
terminator = [ ";" ] , { space | inline comment | line ending } , inline comment | line ending
           | ";" , { space } ;
key        = letter | "_" , { letter | digit | "_" } ;
value      = 

pair = key , { space } , ":" , { space } , value , { space } , terminator ;
flux = { pair } ;
