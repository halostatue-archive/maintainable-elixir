# {{ cookiecutter.project_name }}

[![Travis CI - Build Status][travis.svg]][travis]
[![Github - Last tag][tags.svg]][tags]

{{ cookiecutter.project_short_description }}

## Installation

If [available in Hex][], the package can be installed as:

1.  Add `{{ cookiecutter.project_name }}` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [
        { :{{ cookiecutter.project_name }}, "~> {{ cookiecutter.version }}" }
      ]
    end
    ```

2.  Ensure `{{ cookiecutter.project_name }}` is started before your application:

    ```elixir
    def application do
      [ applications: [ {{ cookiecutter.app_name }} ] ]
    end
    ```

## Developing and Contributing

Clone this repository and install the Elixir project dependencies:

```bash
$ git clone git@github.com:{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}
$ cd {{ cookiecutter.project_slug }}
$ mix deps get
```

### Mix Commands

#### Run tests

```bash
$ mix test --cover
```

#### Create a command-line script

```bash
$ mix escript.build
$ ./{{ cookiecutter.escript_name }} [args]
```

#### Run linter

```bash
$ mix credo # preferred
$ mix dogma # available
```

#### Run static analysis

The first time you have to build the [persistent lookup table][], which takes a
while.

```bash
$ mix dialyzer.plt
```

Thereafter, just run

```bash
$ mix dialyzer
```

### Installing project pre-commit hooks

This project uses the Yelp [pre-commit][] hook management framework, which must
be [installed beforehand][].

```bash
$ pre-commit install
```

[available in Hex]: https://hex.pm/docs/publish
[persistent lookup table]: https://github.com/jeremyjh/dialyxir#plt
[pre-commit]: http://pre-commit.com
[installed beforehand]: http://pre-commit.com/#install
[travis.svg]: https://travis-ci.org/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}.svg
[travis]: https://travis-ci.org/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}
[tags.svg]: https://img.shields.io/github/tag/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}.svg
[tags]: https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/tags
