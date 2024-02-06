# Assert multiple

Chain assertions contained in a monad.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/assert-multiple/review.yml)
![Version](https://pursuit.purescript.org/packages/purescript-assert-multiple/badge)
![Quality](https://img.shields.io/codacy/grade/e554a1597f8b40d9b7e54d7923c2049f)

## Installation

```bash
spago install assert-multiple
```

## Documentation

Documentation and more detailed examples are hosted on [Github Pages](https://joellefkowitz.github.io/assert-multiple).

## Usage

Normally, an array of assertions will not be evaluated eagerly:

```purs
import Test.Assert (assert)

do
  x <- 1 .. 5
  pure $ assert (x <= 5)
```

`resolve` will fold and invoke them sequentially.

```purs
import Test.Assert.Multiple (resolve)

resolve do
  x <- 1 .. 5
  pure $ assert (x <= 5)
```

## Tooling

### Tests

To run tests:

```bash
spago test
```

### Documentation

To generate the documentation locally:

```bash
spago docs
```

### Linters

To run linters:

```bash
npm run lint
```

### Formatters

To run formatters:

```bash
npm run format
```

## Contributing

Please read this repository's [Code of Conduct](CODE_OF_CONDUCT.md) which outlines our collaboration standards and the [Changelog](CHANGELOG.md) for details on breaking changes that have been made.

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [SemVer](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

### Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<p align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</p>
