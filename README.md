# tree-sitter-ceex

[Tree-sitter](https://tree-sitter.github.io/tree-sitter/) grammar and parser for CEEx.

## Installation

### Requirements

- [NodeJS](https://nodejs.org/en/) LTS
- [asdf](https://asdf-vm.com/) (optional)
- [Docker](https://www.docker.com/) (optional)

See [Creating Parsers](https://tree-sitter.github.io/tree-sitter/creating-parsers) for more information.

### Usage

1. Clone this repository:

```
$ git clone https://github.com/combo-team/tree-sitter-ceex.git
```

2. (Optional) Install NodeJS via asdf:

```
$ cd tree-sitter-ceex
$ asdf install
```

3. Install npm dependencies:

```
$ npm install
```

4. Run the tests:

```
$ npm test
```

5. Run the code formatter:

```
$ npm run format
```

6. (Optional) Update the tests (useful when contributing):

```
$ npm run update_test
```

7. (Optional) Run the web playground (requires Docker):

```
$ npm run playground
```

See [Using Parsers](https://tree-sitter.github.io/tree-sitter/using-parsers) for more information.

## License

MIT
