# maintainable-elixir

[![Travis CI - Build Status][travis.svg]][travis]
[![Github - Last tag][tags.svg]][tags]

This is a boilerplate generator for [Elixir][] projects, using
[Cookiecutter][]. This template is based on several sources discussing
maintainable elixir:

*   Matt Von Rocketstein wrote about his [elixir boilerplate][], with its own
    [cookiecutter template][].
*   Steven Blowers wrote about [Elixir maintainability][].

## Requirements

Install the `cookiecutter` command line: `pip install cookiecutter`.

## Usage

Generate a new Cookiecutter template layout:

```bash
cookiecutter gh:halostatue/cookiecutter-maintainable-elixir
```

## Contributing

1.  If you'd like to contribute, fork this [repository][], and send a pull
    request.

2.  To install dev requirements: `pip install -r requirements-dev.txt`.

3.  To run tests from the root of the project directory: `mamba`

4.  New features require specifications. Specifications are done using
    [Mamba][] and lie under the `./specs` directory.

## License

This project is licensed under the terms of the [MIT License](LICENSE.md)

[travis.svg]: https://travis-ci.org/halostatue/cookiecutter-maintainable-elixir.svg
[travis]: https://travis-ci.org/halostatue/cookiecutter-maintainable-elixir
[tags.svg]: https://img.shields.io/github/tag/halostatue/cookiecutter-maintainable-elixir.svg
[tags]: https://github.com/halostatue/cookiecutter-maintainable-elixir/tags
[Cookiecutter]: https://github.com/audreyr/cookiecutter
[Mamba]: http://nestorsalceda.github.io/mamba
[repository]: https://github.com/halostatue/cookiecutter-maintainable-elixir
[Elixir]: http://elixir-lang.org
[elixir boilerplate]: https://mattvonrocketstein.github.io/heredoc/elixir-boilerplate.html
[Elixir maintainability]: http://tech.findmypast.com/elixir-maintainability
[cookiecutter template]: https://github.com/mattvonrocketstein/cookiecutter-elixir-project
