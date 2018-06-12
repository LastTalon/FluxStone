# FluxStone Format

The format is meant to be simple, human readable/writable, and allow the language-independent expression of data.

## The Basics

Data is expressed as **key-value pairs** separated by a colon `:`. White space is allowed anywhere before and after the key and value.
```
keyA: true
    keyA_A: false
keyB : 1
keyC:0
```

A **key** consists of any uppercase or lowercase letters, any digits, and the underscore character and must start with a letter or underscore. Keys must be unique within their scope (whichever object they're a part of or the global scope).
```
key: 1
key2: 2
key_three: 3
_key_4: 4
_5: 5
```

A **value** can be a string, number, bool, null, object, or list.
```
string: "Hello, world!"
number: 1
bool: true
null: null
object: {}
list: []
```

Key-value pairs are separated with new lines or semicolons. A semicolon may be used at the end of a line with only one key or for a key that ends a line, but is not required.
```
key1: 1
key2: 2
key3: 3; key4: 4;
key5: 5; key6: 6; key7: 7
```

## Value Types

A **string** always starts with a double quote `"` or single quote `'` and must end with the same symbol used to start the string. The characters between the quotes are the string data. A single quote may be used within a string enclosed by double quotes and a double quote may be used within a string enclosed by single quotes.
```
string: "A double quote string."
another_string: 'A single quote string.'
string_with_single_quote: "This string can contain a ' character."
string_with_double_quote: 'This string can contain a " character.'
```

A **number** can be expressed as an integer, a floating point number, may be positive or negative, and supports exponential notation using `e` or `E`.
```
integer: 1
float: 0.3
negative: -3.233
exponential: 2.6e3
```

A **bool** is always either `true` or `false` but can be expressed with any capitalization.
```
bool_true: true
bool_false: false
another_true: True
another_false: False
more_true: TRUE
more_false: FALSE
```

A **null** is always expressed as `null` but can be expressed with any capitalization.
```
null: null
more_null: Null
even_more_null: NULL
```

An **object** is like a whole new FluxStone data set enclosed in one value. It starts with a curly brace `{` and ends with a corresponding curly brace `}` and contains key-value pairs between the namespace within an object is separate from the namespace outside the object or in sub-objects. Additional whitespace for indentation is not required, but can make things easier to read.
```
object: {
    new_key: true
    object: {
        more_keys: true
    }
}
```

A **list** is like an object, except it does not include keys, just a list of values. It starts with a square brace `[` and ends with a corresponding square brace `]`.
```
list: [
    1
    2
    3
    4
    5
]
```

## Whitespace

Whitespace comes in two varieties: spaces, and line endings. In addition, comments can be used within whitespace to help clarify configuration files.

A **space** is either a space character or a tab character. They can be used anywhere before a key, after a value, or between symbols `:`, `;`, `{`, `}`, `[`, `]`.

A **line ending** is a line feed character optionally preceeded by a carriage return character. Its used as a delimiter between key-value pairs and may be used multiple times between them, allowing for blank lines or lines with only comments.

An **inline comment** is a comment that goes at the end of a line and may be used in place of any line ending. It starts with `#` or `//` and ends with a normal line ending.

A **block comment** is a comment that goes any where a space could normally go and can span multiple lines. It starts with `(*` and ends with `*)` or starts wtih `/*` and ends with `*/`.

```
key1: 1 # A comment
key2: 2 // Another comment
key3: 3 (* A multiline
           comment *)
key4: 4 /* Another multiline
           comment */
# A comment on its own line
key5: (* A comment between a key-value pair *) 5 
key6 (* A comment splitting a key-value pair
        to multiple lines *) : 6

# A skipped line
```
