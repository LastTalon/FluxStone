<div align="center">
	# FluxStone
</div>
<hr />

**FluxStone** is a simple, and human readable and writable configuration file and data exchange format.

Its designed as a format for people who want a format to store or exhange data between programs and files without sacrificing the ability for normal humans to read or write it in plain text.

## Features

FluxStone includes:
 * An EBNF definition of [FluxStone's grammar](FluxStone.ebnf)

Coming soon:
 * A Lua implementation of a FluxStone parser

## Format

The format is meant to be simple, human readable/writable, and allow the language-independent expression of data.

Learn more about the [FluxStone's format](FORMAT.md).

## Inspiration

FluxStone came about as a result of issues with JSON readability/writability. While JSON is quite good for this, its not perfect and is much better read and written by programs than humans who are prone to making many very small mistakes with it. FluxStone is very similar operationally to JSON as a plain text data exchange format, but is more lenient and uses features to make the text more readable for humans including key naming style, whitespace line endings, and comments.

## Contributing

Contribution is welcome. Please make a pull request.

## Issues

Issues are tracked through the GitHub issue tracker.

## License

FluxStone is free software licensed under the zlib license. See [LICENSE](LICENSE.md) for details.
