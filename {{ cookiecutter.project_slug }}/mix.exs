defmodule {{ cookiecutter.module_name }}.Mixfile do
  use Mix.Project

  def project do
    [app: {{ cookiecutter.app_name }},
     version: "{{ cookiecutter.version }}",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: Coverex.Task, console_log: true],
     # test_coverage: [tool: ExCoveralls],
     # preferred_cli_env: ["coveralls": :test],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: { {{ cookiecutter.module_name }}, [] }]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      # Sensible default dependencies that are useful for almost all projects
      {:ex_doc, "~> 0.14", only: :dev}, # Documentation
      {:dialyxir, "~> 0.4", only: :dev}, # Static Analysis
      {:credo, "~> 0.5", only: [:dev, :test]}, # Gentle Linter
      {:dogma, "~> 0.1", only: :dev}, # Not-so-gentle Linter
      {:inch_ex, "~> 0.5", only: :dev}, # Documentation linter
      {:coverex, "~> 1.4", only: :test}, # Test coverage
      # {:excoveralls, "~>0.5", only: :test}, # Test coverage
    ]
  end
end
