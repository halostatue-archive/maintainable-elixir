# See http://elixir-lang.org/docs/stable/elixir/Application.html
# for more information on OTP Applications

defmodule {{ cookiecutter.module_name }} do
  @moduledoc """
  """
  use Application

  @doc """
  """
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: {{ cookiecutter.module_name }}.Worker.start_link(arg1, arg2, arg3)
      # worker({{ cookiecutter.module_name }}.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: {{ cookiecutter.module_name }}.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
